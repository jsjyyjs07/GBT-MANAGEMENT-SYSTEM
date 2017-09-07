using Microsoft.Reporting.WinForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using UIControl;
using Attribute;
using BusinessLogicLevel;
using System.Data;

namespace OA.InvoiceManage
{
    /// <summary>
    /// Interaction logic for InvoicePrintPreview.xaml
    /// </summary>
    public partial class InvoicePrintPreview : Window
    {
        BasicControl bc = new BasicControl();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();

        public InvoicePrintPreview()
        {
            InitializeComponent();
            _reportViewer.Load += ReportViewer_Load;
        }

        private bool _isReportViewerLoaded;

        private void ReportViewer_Load(object sender, EventArgs e)
        {
            if (!_isReportViewerLoaded)
            {
                //InvoiceDetail
                Microsoft.Reporting.WinForms.ReportDataSource reportDataSource = new Microsoft.Reporting.WinForms.ReportDataSource();

                reportDataSource.Name = "DataSet2"; //Name of the report dataset in our .RDLC file
                reportDataSource.Value = "";
                this._reportViewer.LocalReport.DataSources.Add(reportDataSource);
                this._reportViewer.LocalReport.ReportEmbeddedResource = "OA.Invoice.rdlc";

                _reportViewer.RefreshReport();

                _isReportViewerLoaded = true;
            }
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            bc.RemoveWindow(this.Title);
        }
    }
}
