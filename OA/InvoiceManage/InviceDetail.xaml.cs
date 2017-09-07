using Attribute;
using BusinessLogicLevel;
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
    /// Interaction logic for InviceDetail.xaml
    /// </summary>
    public partial class InviceDetail : Window
    {
        BasicControl bc = new BasicControl();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        DataTable dt = new DataTable();
        DataTable dtResult = new DataTable();
        Function ftn = new Function();
        DataRow[] drSource;
        string[] paramWhere;
        string maxBillNo = "";
        string userName = "";

        public InviceDetail()
        {
            InitializeComponent();
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            bc.RemoveWindow(this.Title);
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            paramWhere = ParameterPassing.ParamWhere;
            userName = gbqb.GetName(LoginAttribute.UserID);
            dt = gbqb.Query("select A.Customer,A.PaymentTerms,A.ElectroplatingWay,B.* from [dbo].[Invoice] A " +
                "inner join [dbo].[InvoiceDetail] B on A.BillNo=B.MasterBillNo " +
                "where A.[Customer] = '" + paramWhere[0] + "' and A.PaymentTerms = '" + paramWhere[1] +
                "' and A.ElectroplatingWay = '" + paramWhere[2] + "'").Tables[0];
            dt.Columns.Add("Selected");
            dagInvoiceDetail.ItemsSource = dt.DefaultView;
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnConfirm_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                drSource = dt.Select("Selected = 'True'");
                for (int CurrentTable = 0; CurrentTable < ParameterPassing.UserDataTable.Length; CurrentTable++)
                {
                    foreach (DataRow drTarget in drSource)
                    {
                        DataRow dr;
                        if (CurrentTable == 0)
                        {
                            dr = ParameterPassing.UserDataTable[0].Rows[0];
                            dr["FromInnerID"] = drTarget["MasterInnerID"];
                            dr["FromBillNo"] = drTarget["MasterBillNo"];
                        }
                        if (CurrentTable == 1)
                        {
                            dr = ParameterPassing.UserDataTable[CurrentTable].NewRow();
                            dr["ReceivingTime"] = drTarget["ReceivingTime"];
                            dr["Deseription"] = drTarget["Deseription"];
                            dr["ColorID"] = drTarget["ColorID"];
                            dr["Color"] = drTarget["Color"];
                            dr["ReceivingQTY"] = drTarget["ReceivingQTY"];
                            dr["SurplusQTY"] = (double.Parse(drTarget["ReceivingQTY"].ToString() == "" ? "0" : drTarget["ReceivingQTY"].ToString()) - double.Parse(drTarget["ShippingQTY"].ToString() == "" ? "0" : drTarget["ShippingQTY"].ToString())).ToString();
                            dr["OutShipping"] = drTarget["ShippingQTY"];
                            dr["SampleQTY"] = drTarget["SampleQTY"];
                            dr["SampleWeight"] = drTarget["SampleWeight"];
                            dr["APerKilogram"] = drTarget["APerKilogram"];
                            dr["Price"] = drTarget["Price"];
                            dr["ProcessID"] = drTarget["ProcessID"];
                            dr["MasterInnerID"] = ParameterPassing.UserDataTable[0].Rows[0]["InnerID"].ToString();
                            dr["MasterBillNo"] = ParameterPassing.UserDataTable[0].Rows[0]["BillNo"].ToString();
                            dr["Remark"] = drTarget["Remark"];
                            dr["Creater"] = userName == "" ? LoginAttribute.UserID : userName;
                            dr["CreateDate"] = System.DateTime.Now.ToString();
                            dr["Modifier"] = DBNull.Value;
                            dr["ModifiedDate"] = DBNull.Value;
                            dr["Auditor"] = DBNull.Value;
                            dr["AuditDate"] = DBNull.Value;
                            dr["Invalid"] = DBNull.Value;
                            dr["DateObsolete"] = DBNull.Value;
                            dr["AuditorState"] = DBNull.Value;
                            dr["InvalidState"] = DBNull.Value;
                            dr["FromInnerID"] = drTarget["InnerID"];
                            dr["FromBillNo"] = drTarget["BillNo"];
                            ParameterPassing.UserDataTable[CurrentTable].Rows.Add(dr);
                        }
                    }
                }
                if (drSource.Length > 0)
                {
                    OrderStart.TrunStart = "trun";
                }

                this.Close();
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message, "Error");
            }
        }

        private void btnSelectNone_Click(object sender, RoutedEventArgs e)
        {
            foreach (DataRow dr in dt.Rows)
            {
                dr["Selected"] = false;
            }

        }

        private void btnSelectAll_Click(object sender, RoutedEventArgs e)
        {
            foreach (DataRow dr in dt.Rows)
            {
                dr["Selected"] = true;
            }
            
        }
    }
}
