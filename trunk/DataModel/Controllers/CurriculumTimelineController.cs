﻿using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using IUDICO.DataModel.DB;
using IUDICO.DataModel.Common;
using IUDICO.DataModel.Security;
using IUDICO.DataModel.DB.Base;

namespace IUDICO.DataModel.Controllers
{
    public class CurriculumTimelineController : ControllerBase
    {
        public TreeView CurriculumTree { get; set; }
        public Table TimeTable { get; set; }
        public Label NotifyLabel { get; set; }

        public DropDownList OperationList { get; set; }

        [ControllerParameter]
        public int GroupID;
        [ControllerParameter]
        public int CurriculumID;

        private TblGroups group;

        public void PageLoad(object sender, EventArgs e)
        {
            group = ServerModel.DB.Load<TblGroups>(GroupID);
            CurriculumTree.SelectedNodeChanged += new EventHandler(CurriculumTree_SelectedNodeChanged);
            if (!(sender as Page).IsPostBack)
            {
                TblCurriculums curriculum = ServerModel.DB.Load<TblCurriculums>(CurriculumID);
                NotifyLabel.Text = "Detailed timeline for curriculum: " + curriculum.Name + " for group: " + group.Name;
                fillCurriculumTree();
            }

            if (CurriculumTree.SelectedNode == null)
            {
                CurriculumTree.Nodes[0].Select();
            }
            CurriculumTree_SelectedNodeChanged(CurriculumTree, EventArgs.Empty);

        }

        private void CurriculumTree_SelectedNodeChanged(object sender, EventArgs e)
        {
            IdendtityNode selectedNode = CurriculumTree.SelectedNode as IdendtityNode;
            switch (selectedNode.Type)
            {
                case NodeType.Curriculum:
                    {
                        buildCurriculumTable(ServerModel.DB.Load<TblCurriculums>(selectedNode.ID));
                        break;
                    }
                case NodeType.Stage:
                    {
                        buildStageTable(ServerModel.DB.Load<TblStages>(selectedNode.ID));
                        break;
                    }
                case NodeType.Theme:
                    {
                        buildStageTable(ServerModel.DB.Load<TblStages>((selectedNode.Parent as IdendtityNode).ID));
                        selectedNode.Parent.Select();
                        break;
                    }
            }
        }

        private void buildCurriculumTable(TblCurriculums curriculum)
        {
            buildHeaderRow();
            FxCurriculumOperations[] operations =
                new FxCurriculumOperations[] { FxCurriculumOperations.View, FxCurriculumOperations.Pass };

            foreach (FxCurriculumOperations operation in operations)
            {
                TimeTable.Rows.Add(buildOperationRow(curriculum.ID, operation.ID, SECURED_OBJECT_TYPE.CURRICULUM));
            }
        }

        private void buildStageTable(TblStages stage)
        {
            buildHeaderRow();
            FxStageOperations[] operations =
                new FxStageOperations[] { FxStageOperations.View, FxStageOperations.Pass };

            foreach (FxStageOperations operation in operations)
            {
                TimeTable.Rows.Add(buildOperationRow(stage.ID, operation.ID, SECURED_OBJECT_TYPE.STAGE));
            }
        }

        private void buildThemeTable(TblThemes theme)
        {
            buildHeaderRow();
            FxThemeOperations[] operations =
                new FxThemeOperations[] { FxThemeOperations.View, FxThemeOperations.Pass };

            foreach (FxThemeOperations operation in operations)
            {
                TimeTable.Rows.Add(buildOperationRow(theme.ID, operation.ID, SECURED_OBJECT_TYPE.THEME));
            }
        }

        private void buildHeaderRow()
        {
            TimeTable.Rows.Clear();
            TableRow headerRow = new TableRow();

            TableCell headerCell = new TableCell();
            headerCell.Text = "Operation";
            headerRow.Cells.Add(headerCell);

            headerCell = new TableCell();
            headerCell.Text = "Time";
            headerRow.Cells.Add(headerCell);

            headerCell = new TableCell();
            headerCell.Text = "";
            headerRow.Cells.Add(headerCell);

            TimeTable.Rows.Add(headerRow);
        }

        private TableRow buildOperationRow(int dataObjectId, int operationId, SECURED_OBJECT_TYPE objectType)
        {
            TableRow operationRow = new TableRow();

            TableCell operationCell = new TableCell();
            Label dataSinceLabel = new Label();
            dataSinceLabel.Text = "Since:";
            TextBox dataSinceTextBox = new TextBox();
            dataSinceTextBox.ID = dataObjectId.ToString() + since + operationId.ToString();
            Label dataTillLabel = new Label();
            dataTillLabel.Text = "Till:";
            TextBox dataTillTextBox = new TextBox();
            dataTillTextBox.ID = dataObjectId.ToString() + till + operationId.ToString();

            TblPermissions permission = null;
            TableCell operationNameCell = new TableCell();
            switch (objectType)
            {
                case SECURED_OBJECT_TYPE.CURRICULUM:
                    {
                        TblCurriculums curriculum = ServerModel.DB.Load<TblCurriculums>(dataObjectId);
                        FxCurriculumOperations curriculumOperation =
                            ServerModel.DB.Load<FxCurriculumOperations>(operationId);
                        permission = TeacherHelper.GroupPermissionsForCurriculum(group, curriculum, curriculumOperation);

                        operationNameCell.Text = curriculumOperation.Name;
                        break;
                    }
                case SECURED_OBJECT_TYPE.STAGE:
                    {
                        TblStages stage = ServerModel.DB.Load<TblStages>(dataObjectId);
                        FxStageOperations stageOperation =
                            ServerModel.DB.Load<FxStageOperations>(operationId);
                        permission = TeacherHelper.GroupPermissionsForStage(group, stage, stageOperation);

                        operationNameCell.Text = stageOperation.Name;
                        break;
                    }
                case SECURED_OBJECT_TYPE.THEME:
                    {
                        TblThemes theme = ServerModel.DB.Load<TblThemes>(dataObjectId);
                        FxThemeOperations themeOperation =
                            ServerModel.DB.Load<FxThemeOperations>(operationId);
                        permission = TeacherHelper.GroupPermissionsForTheme(group, theme, themeOperation);

                        operationNameCell.Text = themeOperation.Name;
                        break;
                    }
            }
            operationRow.Cells.Add(operationNameCell);

            if (permission.DateSince.HasValue)
            {
                dataSinceTextBox.Text = permission.DateSince.Value.ToString();
            }
            else
            {
                dataSinceTextBox.Text = minDateTime;
            }

            if (permission.DateTill.HasValue)
            {
                dataTillTextBox.Text = permission.DateTill.Value.ToString();
            }
            else
            {
                dataTillTextBox.Text = DateTime.MaxValue.ToString();
            }


            operationCell.Controls.Add(dataSinceLabel);
            operationCell.Controls.Add(dataSinceTextBox);
            operationCell.Controls.Add(dataTillLabel);
            operationCell.Controls.Add(dataTillTextBox);
            operationRow.Cells.Add(operationCell);

            operationCell = new TableCell();
            Button ApppyButton = new Button();
            Button RemoveButton = new Button();

            switch (objectType)
            {
                case SECURED_OBJECT_TYPE.CURRICULUM:
                    {
                        ApppyButton.ID = dataObjectId.ToString() + applyChar + curriculumChar + operationId.ToString();
                        ApppyButton.Click += new EventHandler(ApppyCurriculumButton_Click);

                        RemoveButton.ID = dataObjectId.ToString() + removeChar + curriculumChar + operationId.ToString();
                        RemoveButton.Click += new EventHandler(RemoveCurriculumButton_Click);
                        break;
                    }
                case SECURED_OBJECT_TYPE.STAGE:
                    {
                        ApppyButton.ID = dataObjectId.ToString() + applyChar + stageChar + operationId.ToString();
                        ApppyButton.Click += new EventHandler(ApppyStageButton_Click);

                        RemoveButton.ID = dataObjectId.ToString() + removeChar + stageChar + operationId.ToString();
                        RemoveButton.Click += new EventHandler(RemoveStageButton_Click);
                        break;
                    }
                case SECURED_OBJECT_TYPE.THEME:
                    {
                        ApppyButton.ID = dataObjectId.ToString() + applyChar + themeChar + operationId.ToString();
                        ApppyButton.Click += new EventHandler(ApppyStageButton_Click);

                        RemoveButton.ID = dataObjectId.ToString() + removeChar + themeChar + operationId.ToString();
                        RemoveButton.Click += new EventHandler(RemoveStageButton_Click);
                        break;
                    }
            }
            ApppyButton.Text = "Apply";
            RemoveButton.Text = "Remove";


            operationCell.Controls.Add(ApppyButton);
            operationCell.Controls.Add(RemoveButton);
            operationRow.Cells.Add(operationCell);

            return operationRow;
        }

        readonly string minDateTime = (new DateTime(1753, 1, 1, 0, 0, 0)).ToString();
        readonly string maxDateTime = (new DateTime(9999, 12, 31, 23, 59, 59)).ToString();
        private const string curriculumChar = "c";
        private const string stageChar = "s";
        private const string themeChar = "t";
        private const string applyChar = "a";
        private const string removeChar = "r";
        private const string since = "since";
        private const string till = "till";

        private void RemoveCurriculumButton_Click(object sender, EventArgs e)
        {
            Button button = sender as Button;
            int curriculumID = int.Parse(button.ID.Split
                (new string[] { removeChar, curriculumChar }, StringSplitOptions.RemoveEmptyEntries)[0]);
            int operationID = int.Parse(button.ID.Split
                (new string[] { removeChar, curriculumChar }, StringSplitOptions.RemoveEmptyEntries)[1]);

            TblCurriculums curriculum = ServerModel.DB.Load<TblCurriculums>(curriculumID);
            FxCurriculumOperations operation = ServerModel.DB.Load<FxCurriculumOperations>(operationID);
            TblPermissions permission = TeacherHelper.GroupPermissionsForCurriculum(group, curriculum, operation);

            RemovePermission(permission, curriculumID, operationID, button);
        }

        private void RemoveStageButton_Click(object sender, EventArgs e)
        {
            Button button = sender as Button;
            int stageID = int.Parse(button.ID.Split
                (new string[] { removeChar, stageChar }, StringSplitOptions.RemoveEmptyEntries)[0]);
            int operationID = int.Parse(button.ID.Split
                (new string[] { removeChar, stageChar }, StringSplitOptions.RemoveEmptyEntries)[1]);

            TblStages stage = ServerModel.DB.Load<TblStages>(stageID);
            FxStageOperations operation = ServerModel.DB.Load<FxStageOperations>(operationID);
            TblPermissions permission = TeacherHelper.GroupPermissionsForStage(group, stage, operation);

            RemovePermission(permission, stageID, operationID, button);
        }

        private void RemoveThemeButton_Click(object sender, EventArgs e)
        {
            Button button = sender as Button;
            int themeID = int.Parse(button.ID.Split
                (new string[] { removeChar, themeChar }, StringSplitOptions.RemoveEmptyEntries)[0]);
            int operationID = int.Parse(button.ID.Split
                (new string[] { removeChar, themeChar }, StringSplitOptions.RemoveEmptyEntries)[1]);

            TblThemes theme = ServerModel.DB.Load<TblThemes>(themeID);
            FxThemeOperations operation = ServerModel.DB.Load<FxThemeOperations>(operationID);
            TblPermissions permission = TeacherHelper.GroupPermissionsForTheme(group, theme, operation);

            RemovePermission(permission, themeID, operationID, button);
        }

        private void RemovePermission(TblPermissions permission, int dataObjectId, int operationId, Button senderButton)
        {
            permission.DateSince = null;
            permission.DateTill = null;

            TextBox sinceTextBox = (senderButton.Parent.Parent as TableRow).Cells[1].FindControl(dataObjectId.ToString() + since + operationId.ToString()) as TextBox;
            TextBox tillTextBox = (senderButton.Parent.Parent as TableRow).Cells[1].FindControl(dataObjectId.ToString() + till + operationId.ToString()) as TextBox;
            sinceTextBox.Text = minDateTime;
            tillTextBox.Text = maxDateTime;
            tillTextBox.Style["color"] = "black";
            sinceTextBox.Style["color"] = "black";

            ServerModel.DB.Update<TblPermissions>(permission);
        }

        private void ApppyCurriculumButton_Click(object sender, EventArgs e)
        {
            Button button = sender as Button;
            int curriculumID = int.Parse(button.ID.Split
                (new string[] { applyChar, curriculumChar }, StringSplitOptions.RemoveEmptyEntries)[0]);
            int operationID = int.Parse(button.ID.Split
                (new string[] { applyChar, curriculumChar }, StringSplitOptions.RemoveEmptyEntries)[1]);

            TblCurriculums curriculum = ServerModel.DB.Load<TblCurriculums>(curriculumID);
            FxCurriculumOperations operation = ServerModel.DB.Load<FxCurriculumOperations>(operationID);
            TblPermissions permission = TeacherHelper.GroupPermissionsForCurriculum(group, curriculum, operation);

            ApplyPermission(permission, curriculum.ID, operation.ID, button);
        }

        private void ApppyStageButton_Click(object sender, EventArgs e)
        {
            Button button = sender as Button;
            int stageID = int.Parse(button.ID.Split
                (new string[] { applyChar, stageChar }, StringSplitOptions.RemoveEmptyEntries)[0]);
            int operationID = int.Parse(button.ID.Split
                (new string[] { applyChar, stageChar }, StringSplitOptions.RemoveEmptyEntries)[1]);

            TblStages stage = ServerModel.DB.Load<TblStages>(stageID);
            FxStageOperations operation = ServerModel.DB.Load<FxStageOperations>(operationID);
            TblPermissions permission = TeacherHelper.GroupPermissionsForStage(group, stage, operation);

            ApplyPermission(permission, stage.ID, operation.ID, button);
        }

        private void ApppyThemeButton_Click(object sender, EventArgs e)
        {
            Button button = sender as Button;
            int themeID = int.Parse(button.ID.Split
                (new string[] { applyChar, themeChar }, StringSplitOptions.RemoveEmptyEntries)[0]);
            int operationID = int.Parse(button.ID.Split
                (new string[] { applyChar, themeChar }, StringSplitOptions.RemoveEmptyEntries)[1]);

            TblThemes theme = ServerModel.DB.Load<TblThemes>(themeID);
            FxThemeOperations operation = ServerModel.DB.Load<FxThemeOperations>(operationID);
            TblPermissions permission = TeacherHelper.GroupPermissionsForTheme(group, theme, operation);

            ApplyPermission(permission, theme.ID, operation.ID, button);
        }

        private void ApplyPermission(TblPermissions permission, int dataObjectId, int operationId, Button senderButton)
        {
            TextBox sinceTextBox = (senderButton.Parent.Parent as TableRow).Cells[1].FindControl(dataObjectId.ToString() + since + operationId.ToString()) as TextBox;
            TextBox tillTextBox = (senderButton.Parent.Parent as TableRow).Cells[1].FindControl(dataObjectId.ToString() + till + operationId.ToString()) as TextBox;
            DateTime sinceDateTime, tillDateTime;
            if (DateTime.TryParse(sinceTextBox.Text, out sinceDateTime))
            {
                permission.DateSince = sinceDateTime;
                sinceTextBox.Style["color"] = "black";
            }
            else
            {
                sinceTextBox.Style["color"] = "red";
            }
            if (DateTime.TryParse(tillTextBox.Text, out tillDateTime))
            {
                permission.DateTill = tillDateTime;
                tillTextBox.Style["color"] = "black";
            }
            else
            {
                tillTextBox.Style["color"] = "red";
            }
            ServerModel.DB.Update<TblPermissions>(permission);
        }

        private void fillCurriculumTree()
        {
            CurriculumTree.Nodes.Clear();
            TblCurriculums curriculum = ServerModel.DB.Load<TblCurriculums>(CurriculumID);
            IdendtityNode curriculumNode = new IdendtityNode(curriculum);

            foreach (TblStages stage in TeacherHelper.StagesForCurriculum(curriculum))
            {
                IdendtityNode stageNode = new IdendtityNode(stage);
                foreach (TblThemes theme in TeacherHelper.ThemesForStage(stage))
                {
                    IdendtityNode themeNode = new IdendtityNode(theme);
                    stageNode.ChildNodes.Add(themeNode);
                }
                curriculumNode.ChildNodes.Add(stageNode);
            }
            CurriculumTree.Nodes.Add(curriculumNode);
            CurriculumTree.ExpandAll();
        }

    }


}
