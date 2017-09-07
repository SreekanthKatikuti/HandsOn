using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Xsl;
using System.Xml;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            XslCompiledTransform xslt = new XslCompiledTransform();
            xslt.Load(@"C:\Project\ConsoleApplication1\ConsoleApplication1\Xml2Xml.xslt");

            // Create the XsltArgumentList.
            //XsltArgumentList xslArg = new XsltArgumentList();

            // Create a parameter which represents the current date and time.
            //DateTime d = DateTime.Now;
            //xslArg.AddParam("date", "", d.ToString());

            // Transform the file.
            using (XmlWriter w = XmlWriter.Create(@"C:\Project\output1.xml"))
            {
                xslt.Transform(@"C:\Project\ConsoleApplication1\ConsoleApplication1\SA.xml", null, w);
            }
        }
    }
}
