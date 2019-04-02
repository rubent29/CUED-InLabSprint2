//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;

///// <summary>
///// Summary description for HTTPModule
///// </summary>
//public class HTTPModule
//{
//    public abstract class BaseModuleRewriter : IHttpModule
//    {
//        public virtual void Init(HttpApplication app)
//        {
//            // WARNING!  This does not work with Windows authentication!
//            // If you are using Windows authentication, 
//            // change to app.BeginRequest
//            app.AuthorizeRequest += new
//               EventHandler(this.BaseModuleRewriter_AuthorizeRequest);
//        }

//        public virtual void Dispose() { }

//        protected virtual void BaseModuleRewriter_AuthorizeRequest(
//          object sender, EventArgs e)
//        {
//            HttpApplication app = (HttpApplication)sender;
//            Rewrite(app.Request.Path, app);
//        }

//        protected abstract void Rewrite(string requestedPath,
//          HttpApplication app);
//    }




//    public HTTPModule()
//    {
//        //
//        // TODO: Add constructor logic here
//        //
//    }
//}