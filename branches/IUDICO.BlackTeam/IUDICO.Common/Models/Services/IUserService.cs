﻿using System.Collections.Generic;
using System.Linq.Expressions;
using System;

namespace IUDICO.Common.Models.Services
{
    public interface IUserService : IService
    {
        #region Role methods

        IEnumerable<Role> GetRoles();
        Role GetRole(int id);

        #endregion

        #region User methods

        IEnumerable<User> GetUsersByGroup(Group group);
        IEnumerable<User> GetUsersByExpression(Func<User, bool> predicate);
        IEnumerable<User> GetUsers();
        User GetCurrentUser();
        IEnumerable<Group> GetGroupsByUser(User user);

        #endregion

        #region Group Methods

        IEnumerable<Group> GetGroups();
        Group GetGroup(int id);

        #endregion
    }
}