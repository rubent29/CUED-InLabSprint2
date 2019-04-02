//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;

///// <summary>
///// Summary description for ModuleExtender
///// </summary>
//public class ModuleExtender
//{
//    public abstract class ModuleRewriter : HTTPModule
//    {
        //protected override void Rewrite(string requestedPath, System.Web.HttpApplication app)
        //{
        //    // get the configuration rules
        //    RewriterRuleCollection rules =
        //      RewriterConfiguration.GetConfig().Rules;

        //    // iterate through each rule...
        //    for (int i = 0; i < rules.Count; i++)
        //    {
        //        // get the pattern to look for, and 
        //        // Resolve the Url (convert ~ into the appropriate directory)
        //        string lookFor = "^" +
        //          RewriterUtils.ResolveUrl(app.Context.Request.ApplicationPath,
        //          rules[i].LookFor) + "$";

        //        // Create a regex (note that IgnoreCase is set...)
        //        Regex re = new Regex(lookFor, RegexOptions.IgnoreCase);

        //        // See if a match is found
        //        if (re.IsMatch(requestedPath))
        //        {
        //            // match found - do any replacement needed
        //            string sendToUrl = RewriterUtils.ResolveUrl(app.Context.Request.ApplicationPath,
        //               re.Replace(requestedPath, rules[i].SendTo));

        //            // Rewrite the URL
        //            RewriterUtils.RewriteUrl(app.Context, sendToUrl);
        //            break;      // exit the for loop
//                }
//            }
//        }
//    }
        

//    public ModuleExtender()
//    {
//        //
//        // TODO: Add constructor logic here
//        //
//    }
//}