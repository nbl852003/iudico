﻿namespace IUDICO.Common.Models.Interfaces
{
    public interface IDataContext : IMockableDataContext
    {
        IMockableTable<User> Users { get; }
        IMockableTable<Group> Groups { get; }
        //IMockableTable<GroupUser> GroupUsers { get; }
    }
}