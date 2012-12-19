﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Linq;
using System.IO;
using System.Linq;

using IUDICO.Common.Models;
using IUDICO.Common.Models.Services;
using IUDICO.Common.Models.Shared;
using IUDICO.UserManagement.Models;
using IUDICO.UserManagement.Models.Storage;

using Moq;
using Moq.Protected;
using IUDICO.Common.Models.Caching.Provider;

namespace IUDICO.UnitTests.UserManagement
{
    public class UserManagementTests
    {
        #region Protected members

        protected static UserManagementTests instance;

        #endregion

        #region Public properties

        public Mock<IDataContext> MockDataContext { get; protected set; }

        public Mock<ILmsService> MockLmsService { get; protected set; }

        public Mock<DatabaseUserStorage> MockDatabaseStorage { get; protected set; }

        public Mock<HttpCache> MockCacheProvider { get; protected set; }

        public Mock<CachedUserStorage> MockStorage { get; protected set; }

        public IDataContext DataContext
        {
            get
            {
                return this.MockDataContext.Object;
            }
        }

        public ILmsService LmsService
        {
            get
            {
                return this.MockLmsService.Object;
            }
        }

        public IUserStorage Storage
        {
            get
            {
                return this.MockStorage.Object;
            }
        }

        public Mock<ITable> Users { get; protected set; }

        public Mock<ITable> Groups { get; protected set; }

        public Mock<ITable> GroupUsers { get; protected set; }

        public Mock<ITable> UserRoles { get; protected set; }

        #endregion

        public class UserComparer : IEqualityComparer<User>
        {
            #region Implementation of IEqualityComparer<in User>

            public bool Equals(User x, User y)
            {
                return x.Username == y.Username && x.Email == y.Email;
            }

            public int GetHashCode(User obj)
            {
                return (obj.Username + obj.Email).GetHashCode();
            }

            #endregion
        }

        public bool TestUsers(IEnumerable<User> users, IEnumerable<User> inserted)
        {
            return !inserted.Except(users, new UserComparer()).Any();
        }

        public bool TestUsers(User user, User expected)
        {
            return (new UserComparer()).Equals(user, expected);
        }

        public UserManagementTests()
        {
            this.MockDataContext = new Mock<IDataContext>();
            this.MockLmsService = new Mock<ILmsService>();
            this.MockDatabaseStorage = new Mock<DatabaseUserStorage>(this.MockLmsService.Object);
            this.MockCacheProvider = new Mock<HttpCache>();
            this.MockStorage = new Mock<CachedUserStorage>(this.MockDatabaseStorage.Object, this.MockCacheProvider.Object);

            this.Users = new Mock<ITable>();
            this.Groups = new Mock<ITable>();
            this.GroupUsers = new Mock<ITable>();
            this.UserRoles = new Mock<ITable>();

            this.Setup();
            this.SetupTables();

            this.MockLmsService.Setup(s => s.FindService<IUserService>().GetUsers()).Returns(DataContext.Users);

            this.ChangeCurrentUser("panza");
        }

        public static UserManagementTests Update()
        {
            return new UserManagementTests();
        }

        public static UserManagementTests GetInstance()
        {
            return instance ?? (instance = new UserManagementTests());
        }

        public void Setup()
        {
            this.MockDatabaseStorage.Protected().Setup<IDataContext>("GetDbContext").Returns(this.MockDataContext.Object);
            this.MockDatabaseStorage.Protected().Setup<string>("GetPath").Returns(Path.Combine(ConfigurationManager.AppSettings["PathToIUDICO.UnitTests"], "IUDICO.LMS"));
            this.MockDatabaseStorage.Setup(s => s.SendEmail(It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>(), It.IsAny<string>())).Returns(true);

            // this.MockDatabaseStorage.Setup(s => s.GetUserRoles(It.IsAny<string>())).Returns((string username) => this.GetUserRoles(username));
            // this.MockDatabaseStorage.Setup(s => s.GetGroupsByUser(It.IsAny<User>())).Returns((User user) => this.GetGroupsByUser(user));
        }

        public void SetupTables()
        {
            var mockUserData = new[]
                {
                    new User
                        {
                            Id = Guid.NewGuid(), 
                            Username = "panza", 
                            Email = "ipetrovych@gmail.com", 
                            Password = this.Storage.EncryptPassword("somepassword"), 
                        }, 
                };

            var mockGroupData = new[] { new Group { Id = 1, Name = "PMI51", Deleted = false } };

            var mockGroupUserData = new[] { new GroupUser { GroupRef = 1, UserRef = mockUserData[0].Id } };

            var mockUserRoleData = new[] { new UserRole { UserRef = mockUserData[0].Id, RoleRef = (int)Role.Teacher } };

            var mockUserRatingsData = new[] { new UserTopicRating { UserId = mockUserData[0].Id, TopicId = 1, Rating = 5 } };

            var mockUsers = new MemoryTable<User>(mockUserData);
            var mockGroups = new MemoryTable<Group>(mockGroupData);
            var mockGroupUsers = new MemoryTable<GroupUser>(mockGroupUserData);
            var mockUserRoles = new MemoryTable<UserRole>(mockUserRoleData);
            var mockUserRatings = new MemoryTable<UserTopicRating>(mockUserRatingsData);

            this.MockDataContext.SetupGet(c => c.Users).Returns(mockUsers);
            this.MockDataContext.SetupGet(c => c.Groups).Returns(mockGroups);
            this.MockDataContext.SetupGet(c => c.GroupUsers).Returns(mockGroupUsers);
            this.MockDataContext.SetupGet(c => c.UserRoles).Returns(mockUserRoles);
            this.MockDataContext.SetupGet(c => c.UserTopicRatings).Returns(mockUserRatings);
        }

        #region Mocked Functions

        public void ChangeCurrentUser(User user)
        {
            this.MockDatabaseStorage.Setup(s => s.GetCurrentUser()).Returns(user);
            this.MockDatabaseStorage.Protected().Setup<string>("GetIdentityName").Returns(user.Username);
        }

        public void ChangeCurrentUser(string username)
        {
            this.ChangeCurrentUser(this.Storage.GetUser(u => u.Username == username));
        }
        /*
        protected IEnumerable<Role> GetUserRoles(string username)
        {
            var user = this.Storage.GetUser(u => u.Username == username);

            return this.DataContext.UserRoles.Where(ur => ur.UserRef == user.Id).Select(ur => (Role)ur.RoleRef);
        }

        protected IEnumerable<Group> GetGroupsByUser(User user)
        {
            var groupIds = this.DataContext.GroupUsers.Where(gu => gu.UserRef == user.Id).Select(gu => gu.GroupRef);

            return this.DataContext.Groups.Where(g => groupIds.Contains(g.Id)).ToList();
        }
        */
        #endregion
    }
}