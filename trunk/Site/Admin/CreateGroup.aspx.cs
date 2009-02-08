﻿using System;
using IUDICO.DataModel.Controllers;
using IUDICO.DataModel;

public partial class CreateGroup : ControlledPage<CreateGroupController>
{
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        Validate();
        if (IsValid)
        {
            var gID = Controller.Create(tbGroupName.Text);
            Response.Redirect(ServerModel.Forms.BuildRedirectUrl(new Admin_EditGroupController
            {
                BackUrl = Request.RawUrl,
                GroupID = gID
            }));
        }
    }
}