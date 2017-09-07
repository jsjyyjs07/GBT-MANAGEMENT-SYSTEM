using Microsoft.Reporting.WinForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing.Imaging;
using System.Drawing.Printing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Resources;

namespace WpfCustomControlLibrary
{
    public class RdlcPrint
    {
        private int m_currentPageIndex;
        private IList<Stream> m_streams;

        public RdlcPrint()
        {
 
        }

        private void Export(LocalReport report)
        {
            string deviceInfo =
              "<DeviceInfo>" +
              "  <OutputFormat>EMF</OutputFormat>" +
              "  <PageWidth>210mm</PageWidth>" +
              "  <PageHeight>94mm</PageHeight>" +
              "  <MarginTop>5mm</MarginTop>" +
              "  <MarginLeft>10mm</MarginLeft>" +
              "  <MarginRight>10mm</MarginRight>" +
              "  <MarginBottom>5mm</MarginBottom>" +
              "</DeviceInfo>";//这里是设置打印的格式 边距什么的
            Warning[] warnings;
            m_streams = new List<Stream>();
            try
            {
                report.Render("Image", deviceInfo, CreateStream, out warnings);//一般情况这里会出错的  使用catch得到错误原因  一般都是简单错误
            }
            catch (Exception ex)
            {
                Exception innerEx = ex.InnerException;//取内异常。因为内异常的信息才有用，才能排除问题。
                while (innerEx != null)
                {
                    //MessageBox.Show(innerEx.Message);
                    string errmessage = innerEx.Message;
                    innerEx = innerEx.InnerException;
                }
            }
            foreach (Stream stream in m_streams)
            {
                stream.Position = 0;
            }
        }

        private Stream CreateStream(string name, string fileNameExtension, Encoding encoding, string mimeType, bool willSeek)
        {
            //name 需要进一步处理
            Stream stream = new FileStream(name + DateTime.Now.Millisecond + "." + fileNameExtension, FileMode.Create);//为文件名加上时间
            m_streams.Add(stream);
            return stream;
        }

        private void Print(string printerName)
        {
            //string printerName = this.TextBox1.Text.Trim();// "傳送至 OneNote 2007";
            if (m_streams == null || m_streams.Count == 0)
                return;
            PrintDocument printDoc = new PrintDocument();
            // string aa = printDoc.PrinterSettings.PrinterName;
            if (printerName.Length > 0)
            {
                printDoc.PrinterSettings.PrinterName = printerName;
            }
            foreach (PaperSize ps in printDoc.PrinterSettings.PaperSizes)
            {
                if (ps.PaperName == "A4")
                {
                    printDoc.PrinterSettings.DefaultPageSettings.PaperSize = ps;
                    printDoc.DefaultPageSettings.PaperSize = ps;
                    //printDoc.PrinterSettings.IsDefaultPrinter;//知道是否是预设定的打印机
                }
            }
            if (!printDoc.PrinterSettings.IsValid)
            {
                string msg = String.Format("Can't find printer " + printerName);
                System.Diagnostics.Debug.WriteLine(msg);
                return;
            }
            printDoc.PrintPage += new PrintPageEventHandler(PrintPage);
            printDoc.Print();
        }


        private void PrintPage(object sender, PrintPageEventArgs ev)
        {
            Metafile pageImage = new Metafile(m_streams[m_currentPageIndex]);
            ev.Graphics.DrawImage(pageImage, 0, 0, 595, 266);//設置打印尺寸 单位是像素
            m_currentPageIndex++;
            ev.HasMorePages = (m_currentPageIndex < m_streams.Count);
        }

        /// <summary>
        /// 运行打印
        /// </summary>
        /// <param name="strAssembly">程序集名称</param>
        /// <param name="reportFileName">報表文件名称</param>
        /// <param name="printerName">打印機名稱（使用默認打印機，不賦值）</param>
        /// <param name="dt">報表數據源1</param>
        /// <param name="dtSourceName">報表中數據源1對應名稱</param>
        public void Run(string strAssembly, string reportFileName, string printerName, DataTable[] dt, string[] dtSourceName, bool isHindeLogo = false)
        {
            Assembly assembly = Assembly.Load(strAssembly);
            string strResource = "";
            foreach (string resource in assembly.GetManifestResourceNames())
            {
                if (resource.IndexOf(reportFileName) != -1)
                {
                    strResource = resource;
                }
            }
            
            LocalReport report = new LocalReport();
            report.ReportEmbeddedResource = strResource;//获取嵌入式报表资源的名称
            ReportDataSource rdsMain = new ReportDataSource();
            rdsMain.Name = dtSourceName[0];
            rdsMain.Value = dt[0];
            ReportDataSource rdsDetail = new ReportDataSource();
            rdsDetail.Name = dtSourceName[1];
            rdsDetail.Value = dt[1];
            report.DataSources.Add(rdsDetail);
            report.EnableExternalImages = true;
            //ReportParameter rp = new ReportParameter("isHindeLogoImg", isHindeLogo.ToString());//这里我在报表里弄的参数
            //report.SetParameters(rp);
            Export(report);
            m_currentPageIndex = 0;
            Print(printerName);
        }
    }
}
