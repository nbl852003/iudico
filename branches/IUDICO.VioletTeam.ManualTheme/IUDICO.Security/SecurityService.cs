﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using IUDICO.Common.Models.Services;
using System.Web.Routing;
using IUDICO.Security.Models.Storages;
using IUDICO.Common.Models.Shared;
using IUDICO.Security.Models.Storages.Database;

namespace IUDICO.Security
{
    public class SecurityService : ISecurityService
    {
        private readonly IBanStorage _BanStorage;

        public SecurityService()
        {
            _BanStorage = new DatabaseBanStorage();
        }

        public SecurityService(IBanStorage banStorage)
        {
            _BanStorage = banStorage;
        }
        
        public bool CheckRequestSafety(HttpRequestBase request)
        {
            string ip = request.ServerVariables["REMOTE_ADDR"].ToString();

            if (request.RequestContext.RouteData.Values["action"] == "Banned")
                return true;
            
            if (_BanStorage.ifBanned(ip))
                return false;
            return true;
        }

        public HttpResponseBase ProcessRequest(HttpRequestBase request)
        {
            throw new NotImplementedException();
        }

        public bool CheckResponseSafety(HttpResponseBase response)
        {
            throw new NotImplementedException();
        }
        public HttpResponseBase ProcessResponse(HttpResponseBase response)
        {
            throw new NotImplementedException();
        }
    }
}