using System;
using System.Web;
using System.Web.Routing;
using System.Xml;
using System.Xml.Xsl;

namespace WebApplication2.App_Start
{
    public class Handler1 : IHttpHandler
    {
        /// <summary>
        /// You will need to configure this handler in the Web.config file of your 
        /// web and register it with IIS before being able to use it. For more information
        /// see the following link: http://go.microsoft.com/?linkid=8101007
        /// </summary>
        #region IHttpHandler Members
        public RequestContext RequestContext { get; set; }
        public Handler1(RequestContext reqcon)
        {
            RequestContext = reqcon;
        }

        public bool IsReusable
        {
            // Return false in case your Managed Handler cannot be reused for another request.
            // Usually this would be false in case you have some state information preserved per request.
            get { return true; }
        }

        public void ProcessRequest(HttpContext context)
        {
            //write your handler implementation here.
            context.Response.Write("Service Appointment Details Converted Succesfully");
            XslCompiledTransform xslt = new XslCompiledTransform();
            xslt.Load(@"C:\Project\ConsoleApplication1\ConsoleApplication1\Xml2Xml.xslt");
            using (XmlWriter w = XmlWriter.Create(@"C:\Project\output1.xml"))
            {
                xslt.Transform(@"C:\Project\ConsoleApplication1\ConsoleApplication1\SA.xml", null, w);
            }
        }

        #endregion
    }
}
