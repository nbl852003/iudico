﻿using IUDICO.DataModel;
using IUDICO.DataModel.Controllers;

public static class PagesReg
{
    public static void RegisterPages(FormsModel f)
    {
        f.Register<Admin_EditGroupController>("~/Admin/EditGroup.aspx");
        f.Register<Admin_SelectGroupController>("~/Admin/SelectGroup.aspx");
        f.Register<Admin_RemoveUserFromGroupController>("~/Admin/RemoveUserFromGroup.aspx");
        f.Register<Admin_IncludeUserIntoGroupController>("~/Admin/IncludeUserIntoGroup.aspx");
        f.Register<Admin_EditUserController>("~/Admin/EditUser.aspx");
        f.Register<Admin_GroupsController>("~/Admin/Groups.aspx");
        f.Register<CreateGroupController>("~/Admin/CreateGroup.aspx");
        f.Register<Admin_CreateUserController>("~/Admin/CreateUser.aspx");
        f.Register<Admin_RemoveGroupConfirmationController>("~/Admin/RemoveGroupConfirmation.aspx");
        f.Register<Admin_RemoveUserConfirmationController>("~/Admin/RemoveUserConfirmation.aspx");
        f.Register<Admin_UsersController>("~/Admin/Users.aspx");
    }
}
