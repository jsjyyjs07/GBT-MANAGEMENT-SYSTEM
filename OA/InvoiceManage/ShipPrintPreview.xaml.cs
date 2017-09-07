using Attribute;
using BusinessLogicLevel;
using Microsoft.Reporting.WinForms;
using System;
using System.Collections.Generic;
using System.Data;
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

namespace OA.InvoiceManage
{
    /// <summary>
    /// Interaction logic for ShipPrintPreview.xaml
    /// </summary>
    public partial class ShipPrintPreview : Window
    {
        BasicControl bc = new BasicControl();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        public ShipPrintPreview()
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
                this._reportViewer.LocalReport.ReportEmbeddedResource = "OA.Invoice.rdlc";

                //ReportParameter[] rp = new ReportParameter[1];

                ReportParameter rp = new ReportParameter("LoginName", LoginAttribute.UserName);

                _reportViewer.LocalReport.SetParameters(rp);

                foreach (DataTable dt in ParameterPassing.ReportTable)
                {
                    Microsoft.Reporting.WinForms.ReportDataSource rds = new Microsoft.Reporting.WinForms.ReportDataSource();
                    rds.Name = dt.TableName;
                    rds.Value = dt;
                    this._reportViewer.LocalReport.DataSources.Add(rds);
                }

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
