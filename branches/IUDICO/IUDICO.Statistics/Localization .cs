﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Reflection;
using System.Threading;

namespace IUDICO.Statistics
{
    public class Localization : System.Web.Mvc.ViewPage
    {
        private static System.Resources.ResourceManager ManagerEN;
        private static System.Resources.ResourceManager ManagerUK;
        //private static System.Resources.ResourceManager Manager;

        public static void Initialize()
        {
            string a = Assembly.GetExecutingAssembly().FullName;
            //Manager = new System.Resources.ResourceManager(typeof(IUDICO.Statistics.R));
            ManagerEN = new System.Resources.ResourceManager("IUDICO.Statistics.Resource", Assembly.GetExecutingAssembly());
            ManagerUK = new System.Resources.ResourceManager("IUDICO.Statistics.Resourceuk", Assembly.GetExecutingAssembly());
        }
        public static string getMessage(string search)
        {
            //return Manager.GetString(search, Thread.CurrentThread.CurrentUICulture);
            if (Thread.CurrentThread.CurrentUICulture.Name == "en")
            {
                return ManagerEN.GetString(search, Thread.CurrentThread.CurrentUICulture);
            }
            else
            {
                return ManagerUK.GetString(search, Thread.CurrentThread.CurrentUICulture);
            }
        }
    }
}