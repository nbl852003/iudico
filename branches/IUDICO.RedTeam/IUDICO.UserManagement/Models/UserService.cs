﻿using System.Collections.Generic;
using IUDICO.Common.Models;
using IUDICO.Common.Models.Services;
using IUDICO.UserManagement.Models.Storage;

namespace IUDICO.UserManagement.Models
{
    public class UserService : IUserService
    {
        private readonly IUserStorage _UserStorage;

        public UserService(IUserStorage userStorage)
        {
            _UserStorage = userStorage;
        }

        #region Implementation of IUserService

        public User GetCurrentUser()
        {
            return _UserStorage.GetCurrentUser();
        }

        public IEnumerable<Group> GetGroups()
        {
            return _UserStorage.GetGroups();
        }

        public Group GetGroup(int id)
        {
            return _UserStorage.GetGroup(id);
        }

        public IEnumerable<User> GetUsersByGroup(Group group)
        {
            return _UserStorage.GetUsersInGroup(group);
        }

        public IEnumerable<User> GetUsers()
        {
            return _UserStorage.GetUsers();
        }

        public IEnumerable<Group> GetGroupsByUser(User user)
        {
            return _UserStorage.GetGroupsByUser(user);
        }

        #endregion
    }
}