using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Xml.Xsl;
using System.Xml;
using ClassLibrary1;

namespace ConsoleApplication2
{
    class Program
    {
        static void Main(string[] args)
        {
            Class1 n = new Class1();
            string sourcepath = @"C:\Project";
            string destinationpath = @"C:\Project\Output\";
            string[] Filenames = Directory.GetFiles(sourcepath);
            int len = Directory.GetFiles(destinationpath).Length;
            string filepath = Filenames[0];
            string ext = Path.GetExtension(filepath);
            Console.WriteLine(ext);
            if (ext == ".xml")
            {
                
                if (!File.Exists(destinationpath + "SA.xml"))
                {
                    
                    XslCompiledTransform xslt = new XslCompiledTransform();
                    xslt.Load(@"C:\Project\ConsoleApplication1\ConsoleApplication1\Xml2Xml.xslt");
                    using (XmlWriter w = XmlWriter.Create(destinationpath + "SA.xml"))
                    {
                        xslt.Transform(filepath, null, w);
                    }
                    n.l++;
                    
                    
                }
                else
                {
                    XslCompiledTransform xslt = new XslCompiledTransform();
                    xslt.Load(@"C:\Project\ConsoleApplication1\ConsoleApplication1\Xml2Xml.xslt");
                    using (XmlWriter w = XmlWriter.Create(destinationpath + "SA" + n.l + ".xml"))
                    {
                        xslt.Transform(filepath, null, w);
                    }

                }
            }
            



        }
    }
}
