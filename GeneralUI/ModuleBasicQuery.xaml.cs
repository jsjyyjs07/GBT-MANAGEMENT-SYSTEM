using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using WpfCustomControlLibrary;
using BusinessLogicLevel;
using System.Data;
using System.Reflection;
using Attribute;
using UIControl;
using System.Threading;

namespace GeneralUI
{
    /// <summary>
    /// Interaction logic for ModuleBasicQuery.xaml
    /// </summary>
    public partial class ModuleBasicQuery : Window
    {
        ResourcesOpt ropt = new ResourcesOpt();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        BasicControl bc = new BasicControl();
        DataTable dtOpenWin = new DataTable();
        DataTable dtColumns;
        DataTable dtOperator;
        DataTable[] dtDetail = new DataTable[1];
        string mode = "";

        //表名顺序：主表，明细表
        private string[] TableName;

        public ModuleBasicQuery()
        {
            InitializeComponent();
        }

        private void winModuleBasic_Loaded(object sender, RoutedEventArgs e)
        {
            mode = LoginAttribute.Module;
            TableName = ParameterPassing.ParamTable;
            dtColumns = gbqb.GetColumnsInformation(false, TableName);
            cobObject.ItemsSource = dtColumns.DefaultView;
            cobObject.DisplayMemberPath = dtColumns.Columns["Description"].ColumnName;
            cobObject.SelectedValuePath = dtColumns.Columns["InnerColumns"].ColumnName;
            cobObject.Text = dtColumns.Rows[1]["Description"].ToString();

            dtOperator = gbqb.Operator();
            cobOperator.ItemsSource = dtOperator.DefaultView;
            cobOperator.DisplayMemberPath = dtOperator.Columns["Description"].ColumnName;
            cobOperator.SelectedValuePath = dtOperator.Columns["Operator"].ColumnName;
            cobOperator.Text = dtOperator.Rows[2]["Description"].ToString();

            //加载图标资源
            imgSearch.Source = ropt.GetResources(GeneralUI.Properties.Resources.Search, System.Drawing.Imaging.ImageFormat.Png);
            imgAdd.Source = ropt.GetResources(GeneralUI.Properties.Resources.Add, System.Drawing.Imaging.ImageFormat.Png);
            imgCopy.Source = ropt.GetResources(GeneralUI.Properties.Resources.Copy, System.Drawing.Imaging.ImageFormat.Png);
            imgModify.Source = ropt.GetResources(GeneralUI.Properties.Resources.Modify, System.Drawing.Imaging.ImageFormat.Png);
            imgDel.Source = ropt.GetResources(GeneralUI.Properties.Resources.Delete, System.Drawing.Imaging.ImageFormat.Png);
            imgLayIn.Source = ropt.GetResources(GeneralUI.Properties.Resources.LayIn, System.Drawing.Imaging.ImageFormat.Png);
            imgExport.Source = ropt.GetResources(GeneralUI.Properties.Resources.Export, System.Drawing.Imaging.ImageFormat.Png);
            
        }

        public void Module()
        {
            switch (mode)
            {
                case "供应商类型":
                    BasicControl.AssemblyName = "OA";
                    BasicControl.WinClassName = "OA.BasicInformation.SuppliersType";
                    break;
                case "供应商信息":
                    BasicControl.AssemblyName = "OA";
                    BasicControl.WinClassName = "OA.BasicInformation.Suppliers";
                    break;
                case "用户信息":
                    BasicControl.AssemblyName = "TheAdministratorFrom";
                    BasicControl.WinClassName = "TheAdministratorFrom.AccessConfiguration.Users";
                    break;
                case "权限基础信息":
                    BasicControl.AssemblyName = "TheAdministratorFrom";
                    BasicControl.WinClassName = "TheAdministratorFrom.AccessConfiguration.Privilege";
                    break;
                case "单位信息":
                    BasicControl.AssemblyName = "OA";
                    BasicControl.WinClassName = "OA.BasicInformation.Unit";
                    break;
                case "电脑状态监控":
                    BasicControl.AssemblyName = "OA";
                    BasicControl.WinClassName = "OA.AdministrationOfNetworks.BGInfoTable";
                    break;
                case "员工信息":
                    BasicControl.AssemblyName = "PersonnelInformationManagementSystem";
                    BasicControl.WinClassName = "PersonnelInformationManagementSystem.EmployeeInfo";
                    break;
                case "公司信息":
                    BasicControl.AssemblyName = "OA";
                    BasicControl.WinClassName = "OA.BasicInformation.Company";
                    break;
                case "部门信息":
                    BasicControl.AssemblyName = "OA";
                    BasicControl.WinClassName = "OA.BasicInformation.Department";
                    break;
                case "产品信息":
                    BasicControl.AssemblyName = "OA";
                    BasicControl.WinClassName = "OA.BasicInformation.Product";
                    break;
                case "入库单":
                    BasicControl.AssemblyName = "OA";
                    BasicControl.WinClassName = "OA.InvoiceManage.StockIn";
                    break;
                case "出库单":
                    BasicControl.AssemblyName = "OA";
                    BasicControl.WinClassName = "OA.InvoiceManage.StockOut";
                    break;
                case "收货单":
                    BasicControl.AssemblyName = "OA";
                    BasicControl.WinClassName = "OA.InvoiceManage.Invoice";
                    break;
                case "颜色信息":
                    BasicControl.AssemblyName = "OA";
                    BasicControl.WinClassName = "OA.InvoiceManage.Color";
                    break;
                case "工序信息":
                    BasicControl.AssemblyName = "OA";
                    BasicControl.WinClassName = "OA.InvoiceManage.Process";
                    break;
                case "客户信息":
                    BasicControl.AssemblyName = "OA";
                    BasicControl.WinClassName = "OA.InvoiceManage.Customer";
                    break;
                case "发货单":
                    BasicControl.AssemblyName = "OA";
                    BasicControl.WinClassName = "OA.InvoiceManage.ShipOrder";
                    break;
            }
        }

        private void btnQuery_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if ((cobObject.SelectedItem as DataRowView).Row["ColumnType"].ToString() == "datetime" ||
                    (cobObject.SelectedItem as DataRowView).Row["ColumnType"].ToString() == "date")
                {
                    dtDetail[0] = gbqb.ADataBasicQuery(true, cobObject.SelectedValue.ToString(),
                            cobOperator.SelectedValue.ToString(), dprDateOne.SelectedDate.ToString() + "," +
                            dprDateTwo.SelectedDate.ToString(), TableName);
                }
                else if ((cobObject.SelectedItem as DataRowView).Row["ColumnType"].ToString() == "bit")
                {
                    if (chbValue.IsChecked.ToString() == "False")
                        dtDetail[0] = gbqb.ADataBasicQuery(true, cobObject.SelectedValue.ToString(),
                            cobOperator.SelectedValue.ToString(), "0", TableName);
                    else if (chbValue.IsChecked.ToString() == "True")
                        dtDetail[0] = gbqb.ADataBasicQuery(true, cobObject.SelectedValue.ToString(),
                            cobOperator.SelectedValue.ToString(), "1", TableName);
                }
                else
                {
                    dtDetail[0] = gbqb.ADataBasicQuery(true, cobObject.SelectedValue.ToString(),
                        cobOperator.SelectedValue.ToString(), txtValue.Text, TableName);
                }
                DataView dv = dtDetail[0].DefaultView;
                //dv.Sort = dt.Columns[0].ColumnName + " DESC";
                //dv.Sort = dtDetail.Columns[0].ColumnName + " ASC";
                dagSource.ItemsSource = dv;
                //设置默认选择第一项 防止双击行项时编译器报“未将对象引用设置到对象实例”的DEBUG
                if (dagSource.Items.Count > 0)
                {
                    dagSource.SelectedIndex = 0;

                    //dagSource.Columns[1].Visibility = Visibility.Hidden;
                }
                //隐藏序号列
                dagSource.Columns[0].Visibility = Visibility.Hidden;
                txtStatsValue.Foreground = new SolidColorBrush(Colors.Blue);
                txtStatsValue.Text = "查询";
            }
            catch(Exception ex)
            {
                txtStatsValue.Foreground = new SolidColorBrush(Colors.Red);
                //txtStatsValue.Text = ex.Message + "; 输入的字符串格式不正确。";
            }
        }

        private void dagSource_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            txtStatsCount.Text = "第 " + (dagSource.SelectedIndex + 1).ToString() + " 项，共 " + dagSource.Items.Count.ToString() + " 项";
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            txtValue.Text = "";
            dprDateOne.SelectedDate = DateTime.Now;
            dprDateTwo.SelectedDate = DateTime.Now;
            chbValue.IsChecked = false;
            txtStatsValue.Foreground = new SolidColorBrush(Colors.Blue);
            txtStatsValue.Text = "就绪";
        }

        private void dagSource_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if (dagSource.Items.Count > 0)
            {
                Module();
                BasicControl.InnerID = (dagSource.SelectedItem as DataRowView).Row[0].ToString();
                bc.CreateForm((dagSource.SelectedItem as DataRowView).Row[1].ToString(), this.Title);
            }
        }

        private void dagSource_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Space)
            {
                if (dagSource.Items.Count > 0)
                {
                    Module();
                    BasicControl.InnerID = (dagSource.SelectedItem as DataRowView).Row[0].ToString();
                    bc.CreateForm((dagSource.SelectedItem as DataRowView).Row[1].ToString(), this.Title);
                }
            }
        }

        private void cobObject_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if ((cobObject.SelectedItem as DataRowView).Row["ColumnType"].ToString() == "datetime" ||
                (cobObject.SelectedItem as DataRowView).Row["ColumnType"].ToString() == "date")
            {
                cobOperator.Text = dtOperator.Rows[8]["Description"].ToString();
                cobOperator.IsEnabled = false;
                dprDateOne.Visibility = Visibility.Visible;
                dprDateTwo.Visibility = Visibility.Visible;
                lblInner.Visibility = Visibility.Visible;
                txtValue.Visibility = Visibility.Collapsed;
                chbValue.Visibility = Visibility.Collapsed;
            }
            else if ((cobObject.SelectedItem as DataRowView).Row["ColumnType"].ToString() == "bit")
            {
                cobOperator.Text = dtOperator.Rows[0]["Description"].ToString();
                cobOperator.IsEnabled = true;
                dprDateOne.Visibility = Visibility.Collapsed;
                dprDateTwo.Visibility = Visibility.Collapsed;
                chbValue.Visibility = Visibility.Visible;
                txtValue.Visibility = Visibility.Collapsed;
                lblInner.Visibility = Visibility.Collapsed;
            }
            else
            {
                cobOperator.IsEnabled = true;
                dprDateOne.Visibility = Visibility.Collapsed;
                dprDateTwo.Visibility = Visibility.Collapsed;
                chbValue.Visibility = Visibility.Collapsed;
                txtValue.Visibility = Visibility.Visible;
                lblInner.Visibility = Visibility.Collapsed;
            }
        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            //强制转移焦点
            //FocusManager.SetFocusedElement(this, (Button)sender);
            try
            {
                btnQuery_Click(sender, e);
            }
            catch(Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void txtValue_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                btnQuery_Click(sender, e);
            }
        }

        private void winModuleBasic_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            bc.RemoveWindow(this.Title);
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            LoginAttribute.Module = this.Title;
            Module();
            BasicControl.InnerID = Guid.NewGuid().ToString();
            bc.CreateForm("New", this.Title);
        }

        private void btnExport_Click(object sender, RoutedEventArgs e)
        {
            ExcelOperation excelopt = new ExcelOperation(dtDetail);
            Thread t = new Thread(new ThreadStart(excelopt.ThreadProc));
            t.Start();
            btnExport.IsEnabled = false;
            
            while (true)
            {
                if (!t.IsAlive)
                {
                    t.Abort();
                    btnExport.IsEnabled = true;
                    break;
                }
            }
            //excelopt.ExportExcel(dtDetail);
        }

    }
}
