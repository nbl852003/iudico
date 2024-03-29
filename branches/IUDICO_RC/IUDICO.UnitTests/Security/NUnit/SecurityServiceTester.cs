﻿namespace IUDICO.UnitTests.Security.NUnit
{
    using System.Collections.Specialized;
    using System.Web;
    using System.Web.Routing;

    using global::NUnit.Framework;

    using IUDICO.Common.Models.Services;
    using IUDICO.Security;

    using Moq;

    internal class SecurityServiceTester : SecurityTester
    {
        private ISecurityService GetSecurityService_Mock()
        {
            var mockSecurityService = new Mock<ISecurityService>();

            mockSecurityService.Setup(security => security.CheckRequestSafety(It.IsAny<HttpRequestBase>())).Returns(
                (HttpRequestBase request) => { return request.ContentLength < 500; });

            return mockSecurityService.Object;
        }

        private ISecurityService GetSecurityService_Real()
        {
            return new SecurityService(this.BanStorage);
        }

        private HttpRequestBase GetRequest(string value)
        {
            var mockRequest = new Mock<HttpRequestBase>();
            mockRequest.SetupGet(x => x.ContentLength).Returns(1000);

            var vars = new NameValueCollection();
            vars.Add("REMOTE_ADDR", "100.100.100.100");

            mockRequest.SetupGet(r => r.ServerVariables).Returns(vars);

            var routeData = new RouteData();
            routeData.Values.Add("action", value);

            var httpContext = new Mock<HttpContextBase>();
            var rc = new RequestContext(httpContext.Object, routeData);

            mockRequest.Setup(r => r.RequestContext).Returns(rc);

            return mockRequest.Object;
        }

        //author: Фай Роман
        [Test]
        public void Test_CheckRequestSafety()
        {
            var goodRequest = this.GetRequest("Banned");
            var badRequest = this.GetRequest("!Banned");
            var securityService = this.GetSecurityService_Real();

            Assert.IsTrue(securityService.CheckRequestSafety(goodRequest));
            Assert.IsFalse(securityService.CheckRequestSafety(badRequest));
        }
    }
}