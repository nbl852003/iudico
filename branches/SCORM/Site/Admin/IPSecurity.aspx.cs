﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Web.Administration;
using System.Web.Configuration;

public partial class Admin_IPSecurity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack) 
        {
            using (ServerManager serverManager = new ServerManager())
            {
                Configuration config = serverManager.GetWebConfiguration("Iudico");//Hudson IUDICO
                ConfigurationSection section = config.GetSection("system.webServer/security/ipSecurity");
                ConfigurationElementCollection coll = section.GetCollection();
                CheckBoxList1.Items.Clear();
                for (int i = 0; i < coll.Count; i++)
                {
                    CheckBoxList1.Items.Add(coll[i].Attributes["ipAddress"].Value.ToString());
                }
            }
        }
        
    }

    private string[] ConvertIP(string line)
    {
        string[] arr = line.Split(',');
        List<string> ips = new List<string>();
        foreach (string item in arr)
        {
            if (item.Contains("-"))
            {
                foreach (string ip in GetRange(item))
                {
                    if (!ips.Contains(ip))
                    {
                        ips.Add(ip);
                    }
                }
            }
            else
            {
                if (IsValid(item) && !ips.Contains(item))
                {
                    ips.Add(item);
                }
            }
        }

        return ips.ToArray();
    }

    private string[] GetRange(string ips)
    {
        List<string> range = new List<string>();
        string ip = ips.Substring(0, ips.IndexOf("-"));
        string ip2 = ips.Substring(ips.IndexOf("-") + 1);
        if (!IsValid(ip) || !IsValid(ip2))
        {
            throw new Exception("Invalid ip");
        }
        string[] ip1sections = ip.Split('.');
        string[] ip2sections = ip2.Split('.');
        if (ip1sections[0] != ip2sections[0] || ip1sections[1] != ip2sections[1]
            || Convert.ToInt32(ip1sections[2]) > Convert.ToInt32(ip2sections[2])
            || (Convert.ToInt32(ip1sections[2]) <= Convert.ToInt32(ip2sections[2])
                && Convert.ToInt32(ip1sections[3]) > Convert.ToInt32(ip2sections[3])))
        {
            throw new Exception("Wrong sequence");
        }
        else
        {
            while (!ip.Equals(ip2))
            {
                ip = Iterate(ip);
                range.Add(ip);
                Console.WriteLine(ip);
            }
        }

        return range.ToArray();
    }

    private string Iterate(string ip)
    {
        string[] string_sections = ip.Split('.');
        int[] sections = new int[4];
        sections[0] = Convert.ToInt32(string_sections[0]);
        sections[1] = Convert.ToInt32(string_sections[1]);
        sections[2] = Convert.ToInt32(string_sections[2]);
        sections[3] = Convert.ToInt32(string_sections[3]);

        if (sections[3] < 255)
        {
            sections[3]++;
        }
        else if (sections[2] < 255)
        {
            sections[2]++;
            sections[3] = 0;
        }
        else throw new Exception("Can't iterate ip");

        return sections[0] + "." + sections[1] + "." + sections[2] + "." + sections[3];
    }

    private bool IsValid(string ip)
    {
        string[] sections = ip.Split('.');
        if (sections.Count() != 4)
        {
            return false;
        }

        foreach (var item in sections)
        {
            int num = Convert.ToInt32(item);
            if (num > 255 || num < 0)
            {
                return false;
            }
        }

        return true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (ServerManager serverManager = new ServerManager())
        {
            Configuration config = serverManager.GetWebConfiguration("Iudico");
            ConfigurationSection section = config.GetSection("system.webServer/security/ipSecurity");
            ConfigurationElementCollection coll = section.GetCollection();
            string ips = TextBox1.Text.Replace(" ", "");
            foreach (string ip in ConvertIP(ips))
            {
                ConfigurationElement element = coll.CreateElement("add");
                element.SetAttributeValue("ipAddress", ip);
                element["allowed"] = false;
                coll.Add(element);
                CheckBoxList1.Items.Add(ip);
            }
            serverManager.CommitChanges();
            TextBox1.Text = "";
        }
    }
    protected void removeButton_Click(object sender, EventArgs e)
    {
        using (ServerManager serverManager = new ServerManager())
        {
            Configuration config = serverManager.GetWebConfiguration("Iudico");
            ConfigurationSection section = config.GetSection("system.webServer/security/ipSecurity");
            ConfigurationElementCollection coll = section.GetCollection();
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    ConfigurationElement removeElem = coll.Where(el => el.Attributes["ipAddress"].Value.ToString() == CheckBoxList1.Items[i].Text).FirstOrDefault();

                    if (removeElem != null)
                    {
                        coll.Remove(removeElem);
                    }
                }
            }

            serverManager.CommitChanges();

            CheckBoxList1.Items.Clear();
            for (int i = 0; i < coll.Count; i++)
            {
                CheckBoxList1.Items.Add(coll[i].Attributes["ipAddress"].Value.ToString());
            }
        }
    }
}
