using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using DAL;
using Models;

namespace teste
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {            
            TorinoWebUI.RouteConfig.RegisterRoutes(RouteTable.Routes);
            TorinoWebUI.BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}