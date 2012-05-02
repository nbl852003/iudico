﻿// --------------------------------------------------------------------------------------------------------------------
// <copyright file="MlcHelper.cs" company="">
//   
// </copyright>
// --------------------------------------------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.IO;
using System.Web;
using System.Web.Configuration;

using IUDICO.Common.Models.Services;
using IUDICO.Common.Models.Shared;

using Microsoft.LearningComponents;
using Microsoft.LearningComponents.Storage;

namespace IUDICO.TestingSystem.Models
{
    public class MlcHelper
    {
        #region Service Properties

        protected ILmsService LmsSevice { get; set; }

        protected IUserService UserService
        {
            get
            {
                return this.LmsSevice.FindService<IUserService>();
            }
        }

        protected ICourseService CourseService
        {
            get
            {
                return this.LmsSevice.FindService<ICourseService>();
            }
        }

        protected IDisciplineService DisciplineService
        {
            get
            {
                return this.LmsSevice.FindService<IDisciplineService>();
            }
        }

        protected ICurriculumService CurriculumService
        {
            get
            {
                return this.LmsSevice.FindService<ICurriculumService>();
            }
        }

        #endregion

        #region Constructor

        public MlcHelper(ILmsService lmsService)
        {
            this.LmsSevice = lmsService;
        }

        #endregion

        #region Private fields

        /// <summary>
        /// Holds the value of the <c>LStore</c> property.
        /// </summary>
        private LearningStore lstore;

        /// <summary>
        /// Holds the value of the <c>PStoreDirectoryPath</c> property.
        /// </summary>
        private string pstoreDirectoryPath;

        /// <summary>
        /// Holds the value of the <c>PStore</c> property.
        /// </summary>
        private FileSystemPackageStore pstore;

        /// <summary>
        /// Holds the value of the <c>LStoreConnectionString</c> property.
        /// </summary>
        private string lstoreConnectionString;

        #endregion

        #region Properties

        /// <summary>
        /// The full path to the directory which contains the unzipped package
        /// files stored in PackageStore.
        /// </summary>
        ///
        private string PStoreDirectoryPath
        {
            get
            {
                if (this.pstoreDirectoryPath == null)
                {
                    // set <_pstoreDirectoryPath> to the full path to the
                    // directory
                    var path = HttpContext.Current == null
                                   ? Path.Combine(Environment.CurrentDirectory, "Site")
                                   : HttpContext.Current.Request.PhysicalApplicationPath;
                    if (path == null)
                    {
                        throw new NullReferenceException("Can't retrieve path to Player Packages folder");
                    }
                    this.pstoreDirectoryPath = Path.Combine(path, @"Data\PlayerPackages");
                }
                return this.pstoreDirectoryPath;
            }
            set
            {
                if (value.Trim().Length == 0)
                {
                    throw new ArgumentException("Packages store directory path should be a valid string!");
                }
                this.pstoreDirectoryPath = value;
            }
        }

        /// <summary>
        /// Retrieves the Guid of current iudico-user in context of which work is done.
        /// </summary>
        private Guid CurrentIudicoUserKey
        {
            get
            {
                Guid result = this.GetCurrentIudicoUser().Id;
                return result;
            }
        }

        /// <summary>
        /// Gets the SQL Server connection string that LearningStore will use to
        /// access this application's database.  The string is stored in
        /// "appSettings" section of Web.config.
        /// </summary>
        private string LStoreConnectionString
        {
            get
            {
                if (string.IsNullOrEmpty(this.lstoreConnectionString))
                {
                    this.lstoreConnectionString =
                        WebConfigurationManager.AppSettings["learningComponentsConnnectionString"];
                }
                return this.lstoreConnectionString;
            }
        }

        /// <summary>
        /// Gets a reference to this application's LearningStore database.
        /// </summary>
        ///
        public LearningStore LStore
        {
            get
            {
                if (this.lstore == null || this.lstore.UserKey != this.CurrentIudicoUserKey.ToString())
                {
                    this.lstore = new LearningStore(
                        this.LStoreConnectionString,
                        this.CurrentIudicoUserKey.ToString(),
                        ImpersonationBehavior.UseOriginalIdentity);
                }
                return this.lstore;
            }
        }

        /// <summary>
        /// Gets a reference to this application's PackageStore, which consists of
        /// the "PackageFiles" subdirectory (within this application's directory)
        /// containing unzipped package files, plus information about these
        /// packages stored in the LearningStore database.  
        /// </summary>
        public FileSystemPackageStore PStore
        {
            get
            {
                if (this.pstore == null || this.pstore.LearningStore != this.LStore)
                {
                    this.pstore = new FileSystemPackageStore(
                        this.LStore, this.PStoreDirectoryPath, ImpersonationBehavior.UseOriginalIdentity);
                }
                return this.pstore;
            }
        }

        #endregion

        #region Protected methods

        /// <summary>
        /// Retrieves currently logined Iudico User.
        /// Uses <c>UserService</c> <c>GetCurrentUser()</c> method.
        /// </summary>
        /// <returns>User object representing currently loggined iudico user.</returns>
        private User GetCurrentIudicoUser()
        {
            return this.UserService.GetCurrentUser();
        }

        /// <summary>
        /// Uses <c>RequestCurrentUserInfo</c> and checks user existance
        /// by calling <c>CheckCurrentUserIdentifier</c> which returns user id based
        /// on currently iudico-authorized user.
        /// </summary>
        /// <returns>UserItemIdentifier value which represents UserItem primary ID.</returns>
        protected UserItemIdentifier GetCurrentUserIdentifier()
        {
            LearningStoreJob job = this.LStore.CreateJob();
            this.RequestCurrentUserInfo(job);
            ReadOnlyCollection<object> results = job.Execute();
            UserItemIdentifier result = this.CheckCurrentUserIdentifier((DataTable)results[0]);
            return result;
        }

        /// <summary>
        /// Reads a <c>DataTable</c>, returned by <c>Job.Execute</c>, containing
        /// the results requested by a previous call to
        /// <c>RequestCurrentUserInfo</c>.  Returns an <c>UserItemIdentifier</c>
        /// object containing identifier of user. If the user isn't
        /// already listed in LearningStore, a separate call to the database is
        /// made to add them.
        /// </summary>
        ///
        /// <param name="dataTable">A <c>DataTable</c> returned from
        ///     <c>Job.Execute</c>.</param>
        ///
        private UserItemIdentifier CheckCurrentUserIdentifier(DataTable dataTable)
        {
            DataRowCollection results = dataTable.Rows;
            UserItemIdentifier userId;
            if (results.Count == 0)
            {
                // the user isn't listed in the UserItem table -- add them...

                // set <userName> to the name of the user that SCORM will use
                string userName = this.GetCurrentIudicoUser().Name;

                // create the UserItem for this user in LearningStore; we use
                // AddOrUpdateItem() instead of AddItem() in case this learner
                // was added by another application between the check above and
                // the code below
                var job = this.LStore.CreateJob();
                var uniqueValues = new Dictionary<string, object>();
                uniqueValues[Schema.UserItem.Key] = this.CurrentIudicoUserKey.ToString();
                var addValues = new Dictionary<string, object>();
                addValues[Schema.UserItem.Name] = userName;
                job.AddOrUpdateItem(Schema.UserItem.ItemTypeName, uniqueValues, addValues, null, true);
                userId = new UserItemIdentifier(job.Execute<LearningStoreItemIdentifier>());
            }
            else
            {
                userId = new UserItemIdentifier((LearningStoreItemIdentifier)results[0][Schema.Me.UserId]);
            }

            // return a UserItemIdentifier object
            return userId;
        }

        /// <summary>
        /// Requests that information about the current user be retrieved from the
        /// LearningStore database.  Adds the request to a given
        /// <c>LearningStoreJob</c> for later execution.
        /// </summary>
        /// 
        /// <param name="job">A <c>LearningStoreJob</c> to add the new query to.
        ///     </param>
        /// 
        /// <remarks>
        /// After executing this method, and later calling <c>Job.Execute</c>,
        /// call <c>GetCurrentUserInfoResults</c> to convert the <c>DataTable</c>
        /// returned by <c>Job.Execute</c> into an <c>LStoreUserInfo</c> object.
        /// </remarks>
        ///
        private void RequestCurrentUserInfo(LearningStoreJob job)
        {
            // look up the user in the UserItem table in the database using their
            // user key, and set <userId> to the LearningStore numeric identifier
            // of the user (i.e. UserItem.Id -- the "Id" column of the UserItem
            // table) and <userName> to their full name (e.g. "Karen Berg"); if
            // there's no UserItem for the user, add one and set <userId> to its
            // ID
            LearningStoreQuery query = this.LStore.CreateQuery(Schema.Me.ViewName);
            query.AddColumn(Schema.Me.UserId);
            query.AddColumn(Schema.Me.UserName);
            job.PerformQuery(query);
        }

        #endregion
    }
}