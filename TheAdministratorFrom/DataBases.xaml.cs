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
using Attribute;
using System.Data;
using System.Timers;
using UIControl;

namespace TheAdministratorFrom
{
    /// <summary>
    /// Interaction logic for DataBases.xaml
    /// </summary>
    public partial class DataBases : Window
    {

        LinqToXML ltxml = new LinqToXML("DataBase.xml");
        ResourcesOpt ropt = new ResourcesOpt();
        BasicControl bc = new BasicControl();
        Timer timer = new Timer();

        public DataBases()
        {
            InitializeComponent();
            this.Icon = ropt.GetResources(TheAdministratorFrom.Properties.Resources.GBT);
            dgDatabases.IsReadOnly = true;
            ltxml.readXML();
            if (DataEditAttribute.ID == "" || DataEditAttribute.ID == null)
            {
                DataEditAttribute.NewDef = "true";
                DataEditAttribute.NewDataServices = "qds126671222.my3w.com";
                DataEditAttribute.NewSQLUser = "qds126671222";
                DataEditAttribute.NewSQLPassword = "jsjyyjs1015";
                DataEditAttribute.NewDatabases = "qds126671222_db";
                ltxml.WriteXML();
            }
            lblMessage.Content = "Ready";
        }

        private void Databases_Loaded(object sender, RoutedEventArgs e)
        {
            dgDatabases.ItemsSource = ltxml.readXML().DefaultView;
        }

        //定时器
        private void TimerControl(double interval)
        {
            timer.Elapsed += new ElapsedEventHandler(TimerEvent);
            timer.AutoReset = false;
            timer.Interval = interval;
            timer.Enabled = true;
        }

        #region 跨线程访问lblMessage控件
        private delegate void outputDelegate(string msg);
        /// <summary>
        /// 输出文本到lblManage
        /// </summary>
        /// <param name="msg">消息内容</param>
        private void output(string msg)
        {
            this.lblMessage.Dispatcher.Invoke(new outputDelegate(outputAuction), msg);
        }

        private void outputAuction(string msg)
        {
            lblMessage.Content = msg;
        }
        #endregion

        //计时事件
        private void TimerEvent(object sender, ElapsedEventArgs e)
        {
            output("Ready");
            timer.Enabled = false;
        }

        //获取选中行第一个单元格的值
        private string SelectItem
        {
            get 
            {
                var selectItem = dgDatabases.SelectedItem as DataRowView;
                var Item = dgDatabases.Items[0] as DataRowView;
                try
                {
                    return selectItem.Row[0].ToString();
                }
                catch 
                {
                    return Item.Row[0].ToString();
                }
            }
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            //添加时赋初始值
            DataEditAttribute.NewDef = "false";
            DataEditAttribute.NewDataServices = "";
            DataEditAttribute.NewSQLUser = "";
            DataEditAttribute.NewSQLPassword = "";
            DataEditAttribute.NewDatabases = "";

            dgDatabases.IsReadOnly = false;
            dgDatabases.CanUserAddRows = true;//添加自动加新行
            DataEditAttribute.Add = true;
            DataEditAttribute.Modify = false;
        }

        private void btnModify_Click(object sender, RoutedEventArgs e)
        {
            //修改时赋初始值
            ltxml.readXML(SelectItem);

            dgDatabases.IsReadOnly = false;
            dgDatabases.CanUserAddRows = false;//修改时取消自动加新行
            DataEditAttribute.Modify = true;
            DataEditAttribute.Add = false;
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            if (DataEditAttribute.Add)
            {
                //添加数据库配置
                ltxml.WriteXML();
                DataEditAttribute.Add = false;
            }
            if (DataEditAttribute.Modify)
            {
                //修改数据库配置
                if (ltxml.ModifyXML(SelectItem))
                    lblMessage.Content = "Modify completion successful.";
                DataEditAttribute.Modify = false;
                //定时重置消息
                TimerControl(6000);
            }
            dgDatabases.ItemsSource = ltxml.readXML().DefaultView;
            dgDatabases.IsReadOnly = true;
        }

        //开始编辑
        private void dgDatabases_BeginningEdit(object sender, DataGridBeginningEditEventArgs e)
        {
            //DatabaseAttribute.EditValue = (e.Column.GetCellContent(e.Row) as TextBlock).Text;
            if (e.Column.GetCellContent(e.Row).GetType() == typeof(TextBlock))
            {
                DataEditAttribute.EditValue = (e.Column.GetCellContent(e.Row) as TextBlock).Text;
            }
            else if (e.Column.GetCellContent(e.Row).GetType() == typeof(CheckBox))
            {
                if ((e.Column.GetCellContent(e.Row) as CheckBox).IsChecked == true)
                    DataEditAttribute.EditValue = "true";
                else
                    DataEditAttribute.EditValue = "false";
            }
            
            switch (e.Column.Header.ToString())
            {
                case "Default":
                    DataEditAttribute.Def = DataEditAttribute.EditValue;
                    break;
                case "Service":
                    DataEditAttribute.DataServices = DataEditAttribute.EditValue;
                    break;
                case "SQLUser":
                    DataEditAttribute.SQLUser = DataEditAttribute.EditValue;
                    break;
                case "SQLPwd":
                    DataEditAttribute.SQLPassword = DataEditAttribute.EditValue;
                    break;
                case "Database":
                    DataEditAttribute.Databases = DataEditAttribute.EditValue;
                    break;
            }
            //lblMessage.Content = "Editing Header:" + (e.Column.Header.ToString()) + " Value:" + (e.Column.GetCellContent(e.Row) as TextBlock).Text;
        }

        //结束编辑
        private void dgDatabases_CellEditEnding(object sender, DataGridCellEditEndingEventArgs e)
        {
            if (e.EditingElement.GetType() == typeof(TextBox))
            {
                DataEditAttribute.NewEditValue = (e.EditingElement as TextBox).Text;
            }
            else if (e.EditingElement.GetType() == typeof(CheckBox))
            {
                if ((e.EditingElement as CheckBox).IsChecked == true)
                    DataEditAttribute.NewEditValue = "true";
                else
                    DataEditAttribute.NewEditValue = "false";
            }

            if (DataEditAttribute.EditValue != DataEditAttribute.NewEditValue)
            {
                switch (e.Column.Header.ToString())
                {
                    case "Default":
                        DataEditAttribute.NewDef = DataEditAttribute.NewEditValue;
                        break;
                    case "Service":
                        DataEditAttribute.NewDataServices = DataEditAttribute.NewEditValue;
                        break;
                    case "SQLUser":
                        DataEditAttribute.NewSQLUser = DataEditAttribute.NewEditValue;
                        break;
                    case "SQLPwd":
                        DataEditAttribute.NewSQLPassword = DataEditAttribute.NewEditValue;
                        break;
                    case "Database":
                        DataEditAttribute.NewDatabases = DataEditAttribute.NewEditValue;
                        break;
                }
            }
        }

        private void Databases_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            DataEditAttribute.Add = false;
            DataEditAttribute.Modify = false;
            bc.RemoveWindow(this.Title);
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //删除数据库配置
                if (ltxml.DeleteXMLNode(SelectItem))
                    lblMessage.Content = "Delete completion successful.";
                TimerControl(6000);
            }
            catch { }
            dgDatabases.ItemsSource = ltxml.readXML().DefaultView;
            dgDatabases.IsReadOnly = true;
        }

        private void dgDatabases_RowEditEnding(object sender, DataGridRowEditEndingEventArgs e)
        {
            
        }

    }
}
