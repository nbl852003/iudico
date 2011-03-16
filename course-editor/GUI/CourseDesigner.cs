using System;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Windows.Forms;
using WeifenLuo.WinFormsUI.Docking;
using System.Xml;

namespace FireFly.CourseEditor.GUI
{
    using Common;
    using Course;
    using Course.Manifest;
    using HtmlEditor;
    using Properties;

    ///<summary>
    /// The most important window of Editor. Displays and allow to edit course's content
    ///</summary>
    public partial class CourseDesigner : EditorWindowBase
    {
        private readonly Action<bool> _AddChapterActiveNotifier,
                                                 _AddControlChapterActiveNotifier,
                                                 _AddExaminationActiveNotifier,
                                                 _AddTheoryActiveNotifier,
                                                 _AddSummaryPageActiveNotifier,
                                                 _EditInMSWordActiveNotifier,
                                                 _DeleteActiveNotifier,
                                                 _UpActiveNotifier,
                                                 _DownActiveNotifier,
                                                 _InsertGroupingChapterActiveNotifier,
                                                 _InsertGroupingControlChapterActiveNotifier,
                                                 _RemoveMergeActiveNotifier;

        ///<summary>
        ///  Creates new instance of <see cref="CourseDesigner"/> class docked in specified dock panel
        ///</summary>
        ///<param name="parentDockPanel">Parent panel that should be used by CourseDesigner to dock on</param>
        public CourseDesigner(DockPanel parentDockPanel)
            : base(parentDockPanel)
        {
            InitializeComponent();

            tvItems.ImageList = Forms.ManifestBrowser.ilNodes;
            tcEditor.Visible = false;
            PlainTextEnabled = Settings.Default.Options_PlainTextEnabled;

            Settings.Default.PropertyChanged += (sender, e) =>
            {
                if (e.PropertyName == "Options_PlainTextEnabled")
                {
                    PlainTextEnabled = Settings.Default.Options_PlainTextEnabled;
                }
            };
            Course.CourseClosed += () =>
                {
                    tcEditor.Hide();
                };
            Course.CourseSaving += Course_Saving;
            Course.ManifestChanged += Course_ManifestChanged;
            tvItems.ManifestTreeBuilt += () =>
            {
                if (tvItems.TopNode == null)
                {
                    tvItems.TopNode = tvItems.Nodes[0];
                }
                tvItems.TopNode.Tag = Course.Manifest.organizations.Organizations[0];
            };
            Course.CourseOpened += () =>
            {
                tvItems.TopNode.ExpandAll();
                tvItems.SelectedNode = tvItems.TopNode;
                Show();
            };
            miProperties.Click += (s, e) => Forms.PropertyEditor.Show();
            tcEditor.Deselecting += Tab_Deselecting;
            tcEditor.Selecting += Tab_Selecting;
            miRename.Click += (s, e) => tvItems.SelectedNode.BeginEdit();
            _pageEditor.PageCreated += p =>
            {
                p.ErrorFixed += HtmlPage_ErrorFixed;
                p.ErrorFound += HtmlPage_ErrorFound;
            };
            _pageEditor.PageChanged += p =>
            {
                if (p != null)
                {
                    errorsSummary.Bind(p);
                }
                else
                {
                    errorsSummary.UnBind();
                }
            };
            _AddChapterActiveNotifier = Forms.Main.RegisterToolBoxButton(tvItems, miAddChapter);
            _AddControlChapterActiveNotifier = Forms.Main.RegisterToolBoxButton(tvItems, miAddControlChapter);
            _AddTheoryActiveNotifier = Forms.Main.RegisterToolBoxButton(tvItems, miAddTheory);
            _AddExaminationActiveNotifier = Forms.Main.RegisterToolBoxButton(tvItems, miAddExamination);
            _AddSummaryPageActiveNotifier = Forms.Main.RegisterToolBoxButton(tvItems, miAddSummaryPage);
            _EditInMSWordActiveNotifier = Forms.Main.RegisterToolBoxButton(tvItems, miEditInMSWord);
            _DeleteActiveNotifier = Forms.Main.RegisterToolBoxButton(tvItems, miDelete);
            _UpActiveNotifier = Forms.Main.RegisterToolBoxButton(tvItems, miUp, (s, e) => MoveCurrentItem(true));
            _DownActiveNotifier = Forms.Main.RegisterToolBoxButton(tvItems, miDown, (s, e) => MoveCurrentItem(false));
            _InsertGroupingChapterActiveNotifier = Forms.Main.RegisterToolBoxButton(tvItems, miInsertGroupingChapter);
            _InsertGroupingControlChapterActiveNotifier = Forms.Main.RegisterToolBoxButton(tvItems, miInsertGroupingControlChapter);
            _RemoveMergeActiveNotifier = Forms.Main.RegisterToolBoxButton(tvItems, miRemoveMerge);

            miForcedSequentialOrder.ToolTipText = (new ForcedSequentialOrderSequencingPattern()).Description;
            miForcedForwardOnlyOrder.ToolTipText = (new ForcedForwardOnlySequencingPattern()).Description;
            miOrganizationDefaultPattern.ToolTipText = (new OrganizationDefaultSequencingPattern()).Description;
            miChapterDefaultPattern.ToolTipText = (new ChapterDefaultSequencingPattern()).Description;
            miControlChapterDefaultPattern.ToolTipText = (new ControlChapterDefaultSequencingPattern()).Description;
            miPostTestSequencingPattern.ToolTipText = (new PostTestSequencingPattern()).Description;
            miRandomSetOfTests.ToolTipText = (new RandomSetSequencingPattern()).Description;
            miPrePostTest.ToolTipText = (new PrePostTestSequencingPattern()).Description;
            miRandomPostTest.ToolTipText = (new RandomPostTestSequencingPattern()).Description;
            //-> Place for new one
        }

        private void Course_Saving()
        {
            if (tcEditor.Visible && tvItems.SelectedNode != null && tcEditor.SelectedTab == tpPlainText)
            {
                SavePlainText();
            }
        }

        /// <summary>
        /// Gets item currently selected in tree. Returns null if selected node is not item.
        /// </summary>
        [CanBeNull]
        public ItemType CurrentItem
        {
            get
            {
                var node = tvItems.SelectedNode;
                return node != null ? node.Tag as ItemType : null;
            }
        }

        ///<summary>
        /// Gets or sets value which define Plain Text for item should be displayed or should not.
        ///</summary>
        public bool PlainTextEnabled
        {
            get { return tcEditor.TabPages.Contains(tpPlainText); }
            set
            {
                if (value)
                {
                    if (!PlainTextEnabled)
                    {
                        tcEditor.TabPages.Insert(0, tpPlainText);
                    }
                }
                else
                {
                    tcEditor.TabPages.Remove(tpPlainText);
                }
            }
        }

        /// <summary>
        /// Updates context menu items concerning for specified node
        /// </summary>
        /// <param name="node">Node according to which menu should be turned</param>
        /// <param name="sn"></param>
        private void UpdateTreeContextMenu([NotNull]IManifestNode node, [NotNull]TreeNode sn)
        {
            var page = miAddExamination.Visible = miAddTheory.Visible = PossibilityManager.CanAddPage(node);
            var summary = miAddSummaryPage.Visible = PossibilityManager.CanAddSummaryPage(node);
            var chapter = miAddChapter.Visible = PossibilityManager.CanAddChapter(node);
            var controlChapter = miAddControlChapter.Visible = PossibilityManager.CanAddChapter(node);
            var insertGrouping = PossibilityManager.CanInsertGroupingItem(node);
            miInsertGroupingChapter.Visible = insertGrouping;
            miInsertGroupingControlChapter.Visible = insertGrouping;
            miInsert.Visible = insertGrouping;
            var removeMerge = miRemoveMerge.Visible = PossibilityManager.CanRemoveMerge(node);

            miGrouping.Visible = insertGrouping || removeMerge;

            #region Sequencing

            var forcedSequentialOrder = (new ForcedSequentialOrderSequencingPattern()).CanApplyPattern(node);
            var forcedForwardOnlyOrder = (new ForcedForwardOnlySequencingPattern()).CanApplyPattern(node);
            var organizationDefaultSequencing = (new OrganizationDefaultSequencingPattern()).CanApplyPattern(node);
            var chapterDefaultSequencing = (new ChapterDefaultSequencingPattern()).CanApplyPattern(node);
            var controlChapterDefaultSequencing = (new ControlChapterDefaultSequencingPattern()).CanApplyPattern(node);
            var postTestSequencing = (new PostTestSequencingPattern()).CanApplyPattern(node);
            var randomSetOfTest = (new RandomSetSequencingPattern()).CanApplyPattern(node);
            var prePostTest = (new PrePostTestSequencingPattern()).CanApplyPattern(node);
            var randomPostTest = (new RandomPostTestSequencingPattern()).CanApplyPattern(node);
            //-> Place for new one

            miForcedSequentialOrder.Visible = forcedSequentialOrder;
            miForcedForwardOnlyOrder.Visible = forcedForwardOnlyOrder;
            miOrganizationDefaultPattern.Visible = organizationDefaultSequencing;
            miChapterDefaultPattern.Visible = chapterDefaultSequencing;
            miControlChapterDefaultPattern.Visible = controlChapterDefaultSequencing;
            miPostTestSequencingPattern.Visible = postTestSequencing;
            miRandomSetOfTests.Visible = randomSetOfTest;
            miPrePostTest.Visible = prePostTest;
            miRandomPostTest.Visible = false;
            //-> Place for new one

            miApplyPatterns.Visible = miSequencing.Visible = forcedSequentialOrder || forcedForwardOnlyOrder || organizationDefaultSequencing || chapterDefaultSequencing || controlChapterDefaultSequencing || postTestSequencing || randomSetOfTest || prePostTest || randomPostTest || false;//<- Place for new one

            if (node is ISequencing)
            { 
                ISequencing nodeSeq = (node as ISequencing);
                miForcedSequentialOrder.Checked = nodeSeq.SequencingPatterns.ContainsPattern(typeof(ForcedSequentialOrderSequencingPattern));
                miForcedForwardOnlyOrder.Checked = nodeSeq.SequencingPatterns.ContainsPattern(typeof(ForcedForwardOnlySequencingPattern));
                miOrganizationDefaultPattern.Checked = nodeSeq.SequencingPatterns.ContainsPattern(typeof(OrganizationDefaultSequencingPattern));
                miChapterDefaultPattern.Checked = nodeSeq.SequencingPatterns.ContainsPattern(typeof(ChapterDefaultSequencingPattern));
                miControlChapterDefaultPattern.Checked = nodeSeq.SequencingPatterns.ContainsPattern(typeof(ControlChapterDefaultSequencingPattern));
                miPostTestSequencingPattern.Checked = nodeSeq.SequencingPatterns.ContainsPattern(typeof(PostTestSequencingPattern));
                miRandomSetOfTests.Checked = miRandomSetOfTestsSelectCount.Visible = nodeSeq.SequencingPatterns.ContainsPattern(typeof(RandomSetSequencingPattern));
                miPrePostTest.Checked = nodeSeq.SequencingPatterns.ContainsPattern(typeof(PrePostTestSequencingPattern));
                miRandomPostTest.Checked = miRandomPostTestTryNumber.Visible = nodeSeq.SequencingPatterns.ContainsPattern(typeof(RandomPostTestSequencingPattern));
                //-> Place for new one
            }

            #endregion

            var n = node as ItemType;
            var word = miEditInMSWord.Visible = n != null && n.PageType == PageType.Theory;
            miNew.Visible = page || summary || chapter || controlChapter;

            var delete = miDelete.Enabled = PossibilityManager.CanRemove(node);

            _AddExaminationActiveNotifier(page);
            _AddTheoryActiveNotifier(page);
            _AddSummaryPageActiveNotifier(summary);
            _AddChapterActiveNotifier(chapter);
            _AddControlChapterActiveNotifier(controlChapter);
            _EditInMSWordActiveNotifier(word);
            _DeleteActiveNotifier(delete);
            _UpActiveNotifier(sn.PrevNode != null);
            _DownActiveNotifier(sn.NextNode != null);
            _InsertGroupingChapterActiveNotifier(insertGrouping);
            _InsertGroupingControlChapterActiveNotifier(insertGrouping);
            _RemoveMergeActiveNotifier(removeMerge);
        }

        /// <summary>
        /// Runs MS Word application asynchronously to edit specified file. Treats errors.
        /// </summary>
        /// <param name="fileName">File should be edited</param>
        [CanBeNull]
        public static Process EditUsingWord([NotNull]string fileName)
        {
            try
            {
                var res = Process.Start("winword.exe", string.Concat("/t \"", fileName, "\""));
                res.EnableRaisingEvents = true;
                Course.CourseClosed += res.Kill;
                res.Exited += (sender, e) => Course.CourseClosed -= res.Kill;
                return res;
            }
            catch (Exception ex)
            {
                ErrorDialog.ShowError("Word application was not found or access denied." + Environment.NewLine + "Details: " + ex.Message);
                return null;
            }
        }

        /// <summary>
        /// Displays properties of specified object in ID Editor using Wrappers
        /// </summary>
        /// <param name="o">Object which properties should be displayed</param>
        private void DisplayProperties([CanBeNull]ITitled o)
        {
            if (o is OrganizationType)
            {
                o = Course.Manifest;
            }
            var it = o as ItemType;
            Forms.PropertyEditor.SetContext(NodesWrappers.Wrap(o),
                it != null && it.PageType == PageType.Question ?
                _pageEditor.GetScope()
                : null, _pageEditor.PropertyEditorSelectedObjectChanged);

        }

        /// <summary>
        /// Creates new item as child to current and assigned resource to it.
        /// </summary>
        /// <param name="pageType">Type of page should be created</param>
        /// <returns>New item with assigned resource (and summary page if required)</returns>
        [NotNull]
        private ItemType CreateNewItem([NotNull]PageType pageType)
        {
            var title = ConfigHelper.GetDefaultItemTitle(pageType);
            var resIdn = IdGenerator.GenerateUniqueFileName(title, ".html", Course.FullPath);
            var resource = new ResourceType(resIdn, "webcontent", pageType, resIdn + ".html");

            Course.Manifest.resources.Resources.Add(resource);

            if (pageType == PageType.Question)
            {
                string depId = "ExaminationDependency";


                if (Course.Manifest.resources[depId] == null)
                {
                    var depRes = new ResourceType(depId, "webcontent", PageType.Theory, null);

                    depRes.file.Clear();

                    foreach (string href in HtmlPageBase.__NeededScripts)
                    {
                        depRes.file.Add(new FileType(href));
                    }
                    foreach (string href in HtmlPageBase.__NeededFiles)
                    {
                        depRes.file.Add(new FileType(href));
                    }
                    Course.Manifest.resources.Resources.Add(depRes);
                }

                DependencyType dep = new DependencyType();
                dep.identifierref = depId;

                resource.dependency.Add(dep);
            }


            var node = (IItemContainer)tvItems.SelectedNode.Tag;
            var resultItem = ItemType.CreateNewItem(title, resIdn, resIdn, pageType);
            node.SubItems.Add(resultItem);



            return resultItem;
        }

        /// <summary>
        /// Creates new resource associated with indicated item
        /// </summary>
        /// <param name="pageType">Type of page should be created</param>
        /// <returns>New resource associated with indicated item</returns>
        public ResourceType CreateNewResource([NotNull]PageType pageType)
        {
            var title = ConfigHelper.GetDefaultItemTitle(pageType);
            var resIdn = IdGenerator.GenerateUniqueFileName(title, ".html", Course.FullPath);
            var resource = new ResourceType(resIdn, "webcontent", pageType, resIdn + ".html");

            return resource;
        }

        /// <summary>
        /// Updates editors
        /// </summary>
        /// <param name="node">Current node that should be shown in editors</param>
        private void UpdateEditors([CanBeNull]ItemType node)
        {
            if (tcEditor.Visible = node != null)
            {
                if (node.PageType == PageType.Question || node.PageType == PageType.Summary)
                {
                    var page = HtmlPageBase.GetPage(node);
                    if (page != null)
                    {
                        page.Store();
                    }
                }

                string fileName = node.PageHref;
#if CHECKERS
                if (!File.Exists(fileName) && tcEditor.SelectedTab != tpPageDesigner)
                {
                    throw new FireFlyException("File '{0}' not found", fileName);
                }
#endif
                if (tcEditor.SelectedTab == tpPlainText)
                {
                    if (node.PageType == PageType.Summary)
                    {
                        tcEditor.SelectedTab = tpBrowser;
                        UpdateEditors(node);
                    }
                    else
                    {
                        tbText.Text = FileUtils.ReadAllText(fileName);
                    }
                }
                else if (tcEditor.SelectedTab == tpPageDesigner)
                {
                    if (node.PageType == PageType.Theory)
                    {
                        tcEditor.SelectedTab = tpBrowser;
                        UpdateEditors(node);
                    }
                    else
                    {
                        _pageEditor.SetPageItem(node);
                    }
                }
                else if (tcEditor.SelectedTab == tpBrowser)
                {

                    webBrowser.NavigateItem(fileName, node.parameters);
                }
            }
        }

        private void tvItems_BeforeSelect(object sender, TreeViewCancelEventArgs e)
        {
            if (e.Action <= TreeViewAction.Collapse)
            {
                // Commiting unsaved text changes
                var item = CurrentItem;
                if (item != null && ((item.PageType == PageType.Question || item.PageType == PageType.Theory) && tcEditor.SelectedTab == tpPlainText))
                {
                    e.Cancel = !SavePlainText();
                }
            }
        }

        private void tvItems_AfterSelect(object sender, TreeViewEventArgs e)
        {
            Debug.WriteLine(string.Format("Course Designer: TreeItem {0} - Selected. Action: {1}", e.Node.Text, e.Action));
            if (e.Action <= TreeViewAction.Collapse)
            {
                tpPlainText.Parent = null;
                var node = (IManifestNode)e.Node.Tag;

                UpdateTreeContextMenu(node, e.Node);
                var n = node as ItemType;
                if (tcEditor.Visible = n != null && n.PageType != PageType.Chapter && n.PageType != PageType.ControlChapter)
                {
                    switch (n.PageType)
                    {
                        case PageType.Theory:
                            tpPageDesigner.Parent = null;
                            if (Settings.Default.Options_PlainTextEnabled)
                            {
                                tpPlainText.Parent = tcEditor;
                            }
                            if (tcEditor.SelectedTab != tpBrowser)
                            {
                                tcEditor.SelectTab(tpBrowser);
                            }
                            else
                            {
                                UpdateEditors(n);
                            }
                            break;

                        case PageType.Question:
                            tpPageDesigner.Parent = tcEditor;
                            if (Settings.Default.Options_PlainTextEnabled)
                            {
                                tpPlainText.Parent = tcEditor;
                            }
                            if (tcEditor.SelectedTab != tpPageDesigner)
                            {
                                tcEditor.SelectTab(tpPageDesigner);
                            }
                            else
                            {
                                UpdateEditors(n);
                            }
                            break;

                        case PageType.Summary:
                            tpPageDesigner.Parent = null;
                            if (tcEditor.SelectedTab != tpBrowser)
                            {
                                tcEditor.SelectTab(tpBrowser);
                            }
                            else
                            {
                                UpdateEditors(n);
                            }
                            break;

                        default:
                            throw new InvalidOperationException();
                    }
                }
                DisplayProperties((ITitled)e.Node.Tag);
            }
        }

        private void tvItems_ManifestNodeAdding(FFTreeView.NodeAddingArgs e)
        {
            IManifestNode node = e.Node;
            if (node is OrganizationsType || node is OrganizationType)
            {
                e.Action = FFTreeView.NodeAddingArgs.ActionKind.Ignore;
            }
            else if (!(node is IItemContainer || node is ManifestType))
            {
                e.Action = FFTreeView.NodeAddingArgs.ActionKind.Cancel;
            }
        }

        private void tvItems_AfterLabelEdit(object sender, NodeLabelEditEventArgs e)
        {
            if (e.Label.IsNotNull())
            {
                var o = (ITitled)e.Node.Tag;
                o.Title = e.Label;
                DisplayProperties(o);
            }
            else
            {
                e.CancelEdit = true;
            }
        }

        private void tvItems_KeyUp(object sender, KeyEventArgs e)
        {
            if (!e.Alt && !e.Control && !e.Shift && tvItems.SelectedNode != null)
            {
                switch (e.KeyCode)
                {
                    case Keys.F2:
                        {
                            tvItems.SelectedNode.BeginEdit();
                            break;
                        }
                    case Keys.F8:
                    case Keys.Delete:
                        {
                            if (PossibilityManager.CanRemove(tvItems.SelectedNode.Tag))
                                DeleteSelectedItem();

                            break;
                        }
                    case Keys.F4:
                        {
                            var i = tvItems.SelectedNode.Tag as ItemType;
                            if (i != null && i.PageType == PageType.Theory)
                                EditInWordSelectedItem();

                            break;
                        }
                }
            }
        }

        private void AddExamination_Click(object sender, EventArgs e)
        {
            var item = CreateNewItem(PageType.Question);
            FileUtils.WriteAllText(item.PageHref, "<html></html>");
            (tvItems.SelectedNode = tvItems.Nodes.Find(item.UID, true)[0]).Expand();
        }

        private void editInMSWordToolStripMenuItem_Click(object sender, EventArgs e)
        {
            EditInWordSelectedItem();
        }

        private void EditInWordSelectedItem()
        {
            var n = CurrentItem;
            Debug.Assert(n != null, "No items selected");
#if CHECKERS
            if (n.PageType != PageType.Theory)
            {
                throw new FireFlyException("Unsupported type: {0}", n.PageType);
            }
#endif
            Process p = EditUsingWord(n.PageHref);
            if (p != null)
            {
                using (p)
                {
                    p.WaitForExit();
                }
            }

            AddCopyBlockingScript(n);
            AppendWordResources(n);
            
        }

        private void AddCopyBlockingScript(ItemType item)
        { 
            bool fileExists = File.Exists(item.PageHref);

            if (fileExists == true)
            {
                string fileContents = File.ReadAllText(item.PageHref);
                string blockingScriptComments = "<!--CEBlockCopyScript-->";
                string blockingScript = "<script> function disableselect(e) {return false;} function reEnable() { return true;}document.onselectstart = new Function(\"return false\"); document.oncontextmenu = new Function(\"return false\"); if (window.sidebar) { document.onmousedown = disableselect; document.onclick = reEnable }</script>";

                bool containsScript = fileContents.Contains(blockingScriptComments);

                if (containsScript == false)
                {
                    int index = fileContents.IndexOf("</head>");

                    if (index > 0)
                    {
                        fileContents = fileContents.Insert(index, blockingScriptComments + blockingScript);
                    }

                    File.WriteAllText(item.PageHref, fileContents);
                }
            }
        }

        private void AppendWordResources(ItemType item)
        {
            string dirShortPath = string.Format("{0}.files", item.IdentifierRef);
            string dirFullPath = Path.Combine(Course.FullPath, dirShortPath);

            bool dirExists = Directory.Exists(dirFullPath);

            if (dirExists == true)
            {
                string xmlFilePath = Path.Combine(dirFullPath, "filelist.xml");

                XmlDocument doc = new XmlDocument();
                doc.Load(xmlFilePath);

                XmlNodeList list = doc.GetElementsByTagName("o:File");

                string resId = item.IdentifierRef;

                foreach (XmlNode file in list)
                {
                    string href = Path.Combine(dirShortPath, file.Attributes["HRef"].Value);

                    if (Course.Manifest.resources[resId].file.Exists(f => { return f.href == href; }) == false)
                    {
                        Course.Manifest.resources[resId].file.Add(new FileType(href));
                    }
                }
            }
        }

        private void AddChapterMenuItem_Click(object sender, EventArgs e)
        {
            AddChapter(PageType.Chapter);
        }

        private void AddChapter(PageType chapterType)
        {
            var treeNode = tvItems.SelectedNode;
            var manNode = treeNode.Tag as IManifestNode;
            IManifestNode n;
            if (manNode is IItemContainer)
            {
                var newItem = ItemType.CreateNewItem(String.Format("New {0}", chapterType), Guid.NewGuid().ToString(), null, chapterType);
                n = newItem;
                (manNode as IItemContainer).SubItems.Add(newItem);
                tvItems.SelectedNode = treeNode.Nodes.Find(n.UID, true)[0];
            }
            else
            {
                var o = new OrganizationType { Title = String.Format("New {0}", chapterType) };
                n = o;
                Course.Manifest.organizations.Organizations.Add(o);
            }

            treeNode = treeNode.Nodes.Find(n.UID, true)[0];
            treeNode.BeginEdit();
        }

        private void miAddTheory_Click(object sender, EventArgs e)
        {
            var ti = CreateNewItem(PageType.Theory);
            var fileName = ti.PageHref;
            FileUtils.WriteAllText(fileName, @"<html></html>");
            Process p = EditUsingWord(fileName);
            if (p != null)
            {
                using (p)
                {
                    p.WaitForExit();
                }
            }

            AddCopyBlockingScript(ti);
            AppendWordResources(ti);

            (tvItems.SelectedNode = tvItems.Nodes.Find(ti.UID, true)[0]).Expand();
        }

        private void AddSummaryPage_Click(object sender, EventArgs e)
        {
            var si = CreateNewItem(PageType.Summary);
            (tvItems.SelectedNode = tvItems.Nodes.Find(si.UID, true)[0]).Expand();
        }

        private void Course_ManifestChanged(ManifestChangedEventArgs e)
        {
            // TODO: UGLY HACK, problem consists of nodes of tree ignored using event OnBeforeNodeAdded 
            // cannot be solved more elegant for now  :(  [Volodya Shtenyovych]
            if (e.ChangedNode is OrganizationType && ((e.ChangeType & (ManifestChangeTypes.ChildrenAdded | ManifestChangeTypes.ChildrenRemoved | ManifestChangeTypes.ChildrenReordered)) > 0) && ((Course.State & CourseStates.Opened) > 0))
            {
                tvItems.Manifest_Changed(new ManifestChangedEventArgs(Course.Manifest, e.Nodes, e.ChangeType));
            }
        }

        ///<summary>
        ///  Recursive delete node by it's <paramref name="href"/> started from <paramref name="nodes"/>  
        ///</summary>
        ///<param name="href"></param>
        ///<param name="nodes"></param>
        public void DeleteItemByHref([NotNull]string href, [CanBeNull]TreeNodeCollection nodes)
        {
            if (nodes == null)
            {
                nodes = tvItems.Nodes;
            }
            foreach (TreeNode node in nodes)
            {
                var item = node.Tag as ItemType;
                if (item != null && item.PageHref == href)
                {
                    item.Dispose();
                    return;
                }
                if (node.Nodes.Count != 0)
                {
                    DeleteItemByHref(href, node.Nodes);
                }
            }
        }

        private void miDelete_Click(object sender, EventArgs e)
        {
            DeleteSelectedItem();
        }

        private void DeleteSelectedItem()
        {
#if CHECKERS
            if (tvItems.SelectedNode == null)
            {
                throw new FireFlyException("No nodes selected");
            }
#endif
            if (Extenders.ConfirmDelete(tvItems.SelectedNode.Text))
            {
                try
                {
                    //var node = (ItemType)tvItems.SelectedNode.Tag;
                    //var res = Course.Manifest.resources[node.IdentifierRef];

                    var selectedNode = tvItems.SelectedNode;

                    ((IDisposable)selectedNode.Tag).Dispose();

                    //if (res != null)
                    //{
                    //    Course.Manifest.resources.Resources.Remove(res);
                    //}

                    IContainer c = selectedNode.Parent.Tag as IContainer;
                    Debug.Assert(c != null, "Parent of the selected object is not support Manifest.IContainer");
                    c.RemoveChild(selectedNode.Tag as IManifestNode);
                }
                catch (IOException)
                {
                    ErrorDialog.ShowError(string.Format("File '{0}' used by another program. Close all programs that can use this file and try again", tvItems.SelectedNode.Text));
                }
            }
        }

        private void Tab_Deselecting(object sender, TabControlCancelEventArgs e)
        {
            // commit unsaved text changes
            if (e.TabPage == tpPlainText)
            {
                e.Cancel = !SavePlainText();
            }
        }

        private bool SavePlainText()
        {
            if (tbText.WasChanged)
            {
                var item = CurrentItem;
                Debug.Assert(item != null);
                switch (item.PageType)
                {
                    case PageType.Question:
                        return _pageEditor.TryParsePageText(tbText.Text, item) ||
                               MessageBox.Show
                                   (this, "Cannot parse modified html. Do you want to discard changes?", "Parsing error",
                                    MessageBoxButtons.YesNo) == DialogResult.Yes;

                    case PageType.Theory:
                        FileUtils.WriteAllText(CurrentItem.PageHref, tbText.Text);
                        return true;

                    default:
                        throw new InvalidOperationException();
                }
            }
            return true;
        }

        private void Tab_Selecting(object sender, TabControlCancelEventArgs e)
        {
            var n = CurrentItem;
            if (n == null || n.PageType == PageType.Chapter || n.PageType == PageType.ControlChapter)
            {
                UpdateEditors(null);
            }
            else
            {
                UpdateEditors(n);
            }
        }

        private void HtmlPage_ErrorFound(IValidateble source, Error error)
        {
            var node = tvItems.SelectedNode;
            if (node != null)
            {
                node.ImageKey = node.SelectedImageKey = "PageWithError";
            }
        }

        private void HtmlPage_ErrorFixed(IValidateble source, Error error)
        {
            var node = tvItems.SelectedNode;
            var s = _pageEditor.HtmlPage;
            Debug.Assert(s != null);
            if (s.IsValid)
            {
                node.SelectedImageKey = node.ImageKey = FFTreeView.GetImageKey((IManifestNode)node.Tag);
            }
        }

        private void MoveCurrentItem(bool up)
        {
            var item = (ItemType)tvItems.SelectedNode.Tag;
            var parent = (IItemContainer)item.Parent;
            Debug.Assert(parent != null);
            var subItems = parent.SubItems;
            var index = subItems.IndexOf(item);
#if CHECKERS
            if (index < 0)
            {
                throw new FireFlyException("Impossible situation. This exception should never be thrown.");
            }
            if (up)
            {
                if (index == 0)
                {
                    throw new FireFlyException("Cannot move up top level item");
                }
            }
            else
            {
                if (index == subItems.Count - 1)
                {
                    throw new FireFlyException("Cannot move down last item");
                }
            }
#endif
            var c = up ? -1 : 1;
            subItems[index] = subItems[index + c];
            subItems[index + c] = item;
            parent.SubItems = subItems;
            var nodes = tvItems.Nodes.Find(item.UID, true);
#if CHECKERS
            if (nodes.Length != 1)
            {
                throw new FireFlyException("Invalid count of nodes with key {0}", item.UID);
            }
#endif
            tvItems.SelectedNode = nodes[0];
        }

        private void tvItems_Enter(object sender, EventArgs e)
        {
            DisplayProperties(CurrentItem);
        }

        private void AddControlChapterMenuItemp_Click(object sender, EventArgs e)
        {
            AddChapter(PageType.ControlChapter);
        }

        private void miUp_Click(object sender, EventArgs e)
        {
            MoveCurrentItem(true);
        }

        private void miDown_Click(object sender, EventArgs e)
        {
            MoveCurrentItem(false);
        }

        private void miInsertGroupingChapter_Click(object sender, EventArgs e)
        {
            InsertGroupingItem(PageType.Chapter);
        }

        private void miInsertGroupingControlChapter_Click(object sender, EventArgs e)
        {
            InsertGroupingItem(PageType.ControlChapter);
        }

        private void InsertGroupingItem(PageType pageType)
        {
            var treeNode = tvItems.SelectedNode;
            var manNode = treeNode.Tag as IManifestNode;
            IManifestNode n;
            if ((manNode is IItemContainer) == false)
            {
                return;
            }

            var newItem = ItemType.CreateNewItem(String.Format("New Grouping {0}", pageType), Guid.NewGuid().ToString(), string.Empty, pageType);
            n = newItem;
            (manNode as IItemContainer).InsertGroupingItem(newItem);
            tvItems.SelectedNode = treeNode.Nodes.Find(n.UID, true)[0];

            treeNode = treeNode.Nodes.Find(n.UID, true)[0];
            treeNode.BeginEdit();
        }

        private void RemoveAndMerge()
        {
            var treeNode = tvItems.SelectedNode;
            var treeNodeParent = treeNode.Parent;
            var manNode = treeNode.Tag as IManifestNode;
            if (Extenders.ConfirmRemoveAndMerge(treeNode.Text) == true)
            {
                IManifestNode n = manNode.Parent;
                if ((manNode is IItemContainer) == false)
                {
                    return;
                }
                if (treeNodeParent == null)
                {
                    return;
                }

                (manNode as IItemContainer).RemoveAndMerge();

                tvItems.SelectedNode = treeNodeParent;

                treeNode = treeNodeParent;
                treeNode.BeginEdit();

                UpdateTreeContextMenu(treeNodeParent.Tag as IManifestNode, treeNodeParent);
            }
        }

        private void miRemoveMerge_Click(object sender, EventArgs e)
        {
            RemoveAndMerge();
        }

        private void miSequencingPatternClick(ISequencingPattern pattern)
        {
            var treeNode = tvItems.SelectedNode;
            ISequencing tagSeq = (ISequencing)treeNode.Tag;
            if (tagSeq.SequencingPatterns.ContainsPattern(pattern.GetType()))
            {
                tagSeq.SequencingPatterns.Remove(pattern.GetType());
            }
            else
            {
                tagSeq.SequencingPatterns.Add(pattern);
            }
            UpdateTreeContextMenu(treeNode.Tag as IManifestNode, treeNode);
        }

        private void miForcedSequentialOrder_Click(object sender, EventArgs e)
        {
            miSequencingPatternClick(new ForcedSequentialOrderSequencingPattern());
        }

        private void miForwardOnlyOrder_Click(object sender, EventArgs e)
        {
            miSequencingPatternClick(new ForcedForwardOnlySequencingPattern());
        }

        private void miOrganizationDefaultPattern_Click(object sender, EventArgs e)
        {
            miSequencingPatternClick(new OrganizationDefaultSequencingPattern());
        }

        private void miChapterDefaultPattern_Click(object sender, EventArgs e)
        {
            miSequencingPatternClick(new ChapterDefaultSequencingPattern());        
        }

        private void miControlChapterDefaultPattern_Click(object sender, EventArgs e)
        {
            miSequencingPatternClick(new ControlChapterDefaultSequencingPattern());
        }

        private void miPostTestSequencingPattern_Click(object sender, EventArgs e)
        {
            miSequencingPatternClick(new PostTestSequencingPattern());
        }

        private void miRandomSetOfTests_Click(object sender, EventArgs e)
        {
            miSequencingPatternClick(new RandomSetSequencingPattern());
        }

        private void miRandomSetOfTestsSelectCount_Click(object sender, EventArgs e)
        {
            var treeNode = tvItems.SelectedNode;
            ISequencing tagSeq = (ISequencing)treeNode.Tag;
            int selectCount = 0;
            RandomSetSequencingPattern.GetSelectCount(treeNode.Tag, ref selectCount);
            RandomSetSequencingPattern.SetSelectCount(treeNode.Tag, ref selectCount);
            UpdateTreeContextMenu(treeNode.Tag as IManifestNode, treeNode);
        }

        private void miPrePostTest_Click(object sender, EventArgs e)
        {
            miSequencingPatternClick(new PrePostTestSequencingPattern());
        }

        private void miRandomPostTest_Click(object sender, EventArgs e)
        {
            miSequencingPatternClick(new RandomPostTestSequencingPattern());
        }

        private void miRandomPostTestTryNumber_Click(object sender, EventArgs e)
        {
            var treeNode = tvItems.SelectedNode;
            ISequencing tagSeq = (ISequencing)treeNode.Tag;
            int attemptLimit = 0;
            RandomPostTestSequencingPattern.GetAttemptLimit(treeNode.Tag, ref attemptLimit);
            RandomPostTestSequencingPattern.SetAttemptLimit(treeNode.Tag, ref attemptLimit);
            UpdateTreeContextMenu(treeNode.Tag as IManifestNode, treeNode);
        }
    }
}