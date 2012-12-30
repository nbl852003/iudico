﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Selenium;

namespace IUDICO.UnitTests.Security.Selenium
{
    /// <summary>
    /// Helper class for SecuritySeleniumTester.
    /// Performs basic actions with computers.
    /// </summary>
    class Computers : Security
    {
        public Computers(ISelenium selenium) :
            base(selenium) { }

        /// <summary>
        /// [/Ban/Index] -> Ban computer -> Delete(ip) -> Back
        /// </summary>
        public void Clean(String ip)
        {
            GoToList();

            while (this.selenium.IsTextPresent(ip))
            {
                this.Delete(ip);
            }
        }

        /// <summary>
        /// [/Ban/Index] -> Add computer -> type Computer IP -> Save -> Back to list
        /// </summary>
        public void Add(string ip)
        {
            this.selenium.Click("//a[contains(@href, '/Edit/AddComputers')]");
            this.selenium.WaitForPageToLoad("30000");

            this.selenium.Type("id=ComputerIP", ip);
            this.selenium.Click("name=saveButton");
            this.selenium.WaitForPageToLoad("30000");
        }

        /// <summary>
        /// [/Ban/BanComputer] -> Delete(IP)
        /// </summary>
        public void Delete(string ip)
        {
            this.selenium.Click("//a[contains(@href, " +
                    "'/Edit/DeleteComputer?computer=" + ip + "')]");
            this.selenium.WaitForPageToLoad("30000");
        }

        /// <summary>
        /// [/Ban/Index] -> Ban computer
        /// For some reason this is page with computers list.
        /// </summary>
        public void GoToList()
        {
            this.selenium.Click("//a[contains(@href, '/Edit/EditComputers')]");
            this.selenium.WaitForPageToLoad("30000");
        }

        /// <summary>
        /// [/Ban/BanComputer] -> Ban(ip)
        /// </summary>
        public void Ban(string ip)
        {
            this.selenium.Click("//a[contains(@href," +
                "'/Edit/ComputerBan?computer=" + ip + "')]");
            this.selenium.WaitForPageToLoad("30000");
        }

        /// <summary>
        /// [/Ban/BanComputer] -> Unban(ip)
        /// </summary>
        public void Unban(string ip)
        {
            this.selenium.Click("//a[contains(@href," +
                "'/Edit/ComputerUnban?computer=" + ip + "')]");
            this.selenium.WaitForPageToLoad("30000");
        }

        /// <summary>
        /// [/Ban/BanComputer] -> Edit(IP) -> type Computer IP -> Save -> Back to list
        /// </summary>
        public void Edit(string ip, bool wasBanned, bool willBeBanned, string user)
        {
            this.selenium.Click("//a[contains(@href, '/Edit/EditComputer?computerIp="
                + ip + "')]");
            this.selenium.WaitForPageToLoad("30000");

            if (willBeBanned)
            {
                this.selenium.Check("name=Banned");
            }
            else
            {
                this.selenium.Uncheck("name=Banned");
            }

            this.selenium.Type("id=CurrentUser", user);
            this.selenium.Click("name=saveButton");
            this.selenium.WaitForPageToLoad("30000");
        }

        /// <summary>
        /// Check if computer with given IP is banned.
        /// </summary>
        public bool IsBanned(string ip)
        {
            return this.selenium.GetText("css=td:contains('"
                + ip + "') + td + td + td").Equals("True");
        }
    }
}
