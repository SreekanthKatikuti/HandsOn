using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Linq;
using System.Xml.Xsl;

namespace WindowsService1
{
    public partial class Service1 : ServiceBase
    {
        public Service1()
        {
            InitializeComponent();
        }

        public void OnDebug() { }

        protected override void OnStart(string[] args)
        {
            ////System.IO.File.Create(AppDomain.CurrentDomain.BaseDirectory + "OnStart.txt");
            ////System.IO.File.WriteAllText(AppDomain.CurrentDomain.BaseDirectory + "OnStart.txt", "Hello hiii");
            //XslCompiledTransform xslt = new XslCompiledTransform();
            //xslt.Load(@"C:\Project\ConsoleApplication1\ConsoleApplication1\Xml2Xml.xslt");
            //using (XmlWriter w = XmlWriter.Create(AppDomain.CurrentDomain.BaseDirectory + "OnStart.txt"))
            //{
            //    xslt.Transform(@"C:\Project\ConsoleApplication1\ConsoleApplication1\SA.xml", null, w);
            //}
            // Console.Write(root.ToString());  // display the result on console
            //File.WriteAllText(@"C:\Users\katikuts\Desktop\Output1.txt", root.ToString());
            //System.IO.File.WriteAllText(AppDomain.CurrentDomain.BaseDirectory + "OnStart.xml", root.ToString());

            //Console.ReadKey(); // waiting for you........
        }

        public void OnProcess()
        {

        }

        protected override void OnStop()
        {
            System.IO.File.Create("C:\\Project\\OnStop.txt");
        }
    }
}
