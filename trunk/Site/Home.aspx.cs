﻿using System;
using IUDICO.DataModel;
using IUDICO.DataModel.Controllers;

namespace IUDICO.Site.Pages
{
    public partial class Home : ControlledPage<HomeController>
    {
        protected override void BindController(HomeController c)
        {
            base.BindController(c);

            Bind(Button1, c.Test1);
            Bind(Button2, c.Test2);
            Bind(Button3, c.Test3);
            Bind(TestPersistedListButton, c.TestPersistedList);

            Bind(PersistedListLabel, c.PersistedCollection);
            Bind(lbIncrement, c.PersistedInt, i => i.ToString());
        }

        protected override void OnLoad(EventArgs e)
        {
            UserPermissions.UserID = ServerModel.User.Current.ID;
            base.OnLoad(e);
        }

        public override void DataBind()
        {
            UserPermissions.DataBind();
        }
    }
}

