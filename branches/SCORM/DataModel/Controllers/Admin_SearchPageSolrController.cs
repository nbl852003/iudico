﻿using System.Collections.Generic;
using IUDICO.DataModel.Common;
using IUDICO.DataModel.DB;
using IUDICO.DataModel.DB.Base;
using LEX.CONTROLS;
using LEX.CONTROLS.Expressions;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Net;
using System.IO;
using System.Text;
using System.Xml;
using IUDICO.DataModel;
using IUDICO.DataModel.Controllers;
using IUDICO.DataModel.Controllers.Student;


namespace IUDICO.DataModel.Controllers
{
    public class Admin_SearchPageSolrController : ControllerBase
    {
        public System.Web.UI.WebControls.ListBox ResultsListBox;
        public System.Web.UI.WebControls.TextBox SearchQuery1;
        public System.Web.UI.WebControls.Button Open;
        int i = 0;

        public void Button1_Click(object sender, EventArgs e)
        {
            ResultsListBox.Visible = true;
            //Open.Visible = true;
            this.ResultsListBox.Items.Clear();
            if (this.SearchQuery1.Text.ToString() != "")
            {
                HttpWebRequest request = WebRequest.Create("http://localhost:8080/apache-solr-1.4.0/select?q=" + this.SearchQuery1.Text) as HttpWebRequest;
                using (HttpWebResponse response = request.GetResponse() as HttpWebResponse)
                {
                    // Get the response stream  
                    StreamReader reader = new StreamReader(response.GetResponseStream());
                    // Console application output
                    XmlDocument xmlDoc = new XmlDocument();
                    xmlDoc.LoadXml(reader.ReadToEnd());
                    ///str[attribute::name='id']
                    XmlNodeList nodes = xmlDoc.SelectNodes("/response/result/doc");
                    foreach (XmlNode node in nodes)
                    {
                        XmlNodeList docNodes = node.SelectNodes("str");
                        string docName = "";
                        string docId = "";
                        foreach (XmlNode strNode in docNodes)
                        {
                            if (strNode.Attributes["name"].Value == "name")
                            {
                               docName = strNode.InnerText;
                            }
                            if (strNode.Attributes["name"].Value == "id")
                            {
                               docId = strNode.InnerText;
                            }
                        }
                        this.ResultsListBox.Items.Add(new ListItem(docName,docId));
                        i++;
                    }
                    if (i != 0)
                    {
                        Open.Visible = true;
                    }
                    else
                    {
                        this.ResultsListBox.Items.Add("No data found");
                    }
                }
            }
          
        }

        public void Button2_Click(object sender, EventArgs e)
        {
            if (ResultsListBox.SelectedValue.ToString() != "")
            {
                TblLearnerAttempts la = new TblLearnerAttempts
                {
                    ThemeRef = Int32.Parse(ResultsListBox.SelectedValue),
                    UserRef = ServerModel.User.Current.ID,
                    Started = DateTime.Now,
                };

                int LearnerAttemptId = ServerModel.DB.Insert<TblLearnerAttempts>(la);

                HttpContext.Current.Session["CurrentLearnerAttemptId"] = LearnerAttemptId;

                RedirectToController(new OpenTestController
                {
                    BackUrl = string.Empty,
                    PageIndex = 0
                });
            }
           
        }
    }
}
