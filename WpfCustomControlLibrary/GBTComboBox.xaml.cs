using BusinessLogicLevel;
using System.Data;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace WpfCustomControlLibrary
{
    /// <summary>
    /// Interaction logic for GBTComboBox.xaml
    /// </summary>
    public partial class GBTComboBox : UserControl
    {
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        public GBTComboBox()
        {
            InitializeComponent();

            cobComboBox.Visibility = Visibility.Hidden;
            //txtTextBox.Visibility = Visibility.Hidden;          
        }

        /// <summary>
        /// 数据源
        /// </summary>
        private static readonly DependencyProperty cobDataSource = 
            DependencyProperty.Register("CobDataSource", typeof(DataView), typeof(GBTComboBox));
        public DataView CobDataSource
        {
            get { return (DataView)base.GetValue(cobDataSource); }
            set { base.SetValue(cobDataSource, value); }
        }

        /// <summary>
        /// 显示字段名
        /// </summary>
        private static readonly DependencyProperty displayColumn =
            DependencyProperty.Register("DisplayColumn", typeof(string), typeof(GBTComboBox));
        public string DisplayColumn
        {
            get { return (string)base.GetValue(displayColumn); }
            set { base.SetValue(displayColumn, value); }
        }

        private static readonly DependencyProperty cobVisibility = 
            DependencyProperty.Register("CobVisibility", typeof(Visibility), typeof(GBTComboBox));
        public Visibility CobVisibility
        {
            get { return (Visibility)base.GetValue(cobVisibility); }
            set { base.SetValue(cobVisibility, value); }
        }

        private static readonly DependencyProperty txtVisibility =
            DependencyProperty.Register("TxtVisibility", typeof(Visibility), typeof(GBTComboBox));
        public Visibility TxtVisibility
        {
            get { return (Visibility)base.GetValue(txtVisibility); }
            set { base.SetValue(txtVisibility, value); }
        }

        /// <summary>
        /// 编号"路径"
        /// </summary>
        private static readonly DependencyProperty selectValuePath =
            DependencyProperty.Register("SelectedValuePath", typeof(string), typeof(GBTComboBox));
        public string SelectedValuePath
        {
            get { return (string)base.GetValue(selectValuePath); }
            set { base.SetValue(selectValuePath, value); }
        }

        /// <summary>
        /// 编号
        /// </summary>
        private static readonly DependencyProperty selectValue = 
            DependencyProperty.Register("SelectedValue", typeof(string), typeof(GBTComboBox));
        public string SelectedValue
        {
            get { return (string)base.GetValue(selectValue); }
            set { base.SetValue(selectValue, value); }
        }
        
        /// <summary>
        /// 显示"路径"
        /// </summary>
        private static readonly DependencyProperty displayValuePath =
            DependencyProperty.Register("DisplayValuePath", typeof(string), typeof(GBTComboBox));
        public string DisplayValuePath
        {
            get { return (string)base.GetValue(displayValuePath); }
            set { base.SetValue(displayValuePath, value); }
        }

        /// <summary>
        /// 显示
        /// </summary>
        private static readonly DependencyProperty displayValue = 
            DependencyProperty.Register("DisplayValue", typeof(string), typeof(GBTComboBox));
        public string DisplayValue
        {
            get { return (string)base.GetValue(displayValue); }
            set { base.SetValue(displayValue, value); }
        }

        /// <summary>
        /// 关联编号
        /// </summary>
        private static readonly DependencyProperty innerID =
            DependencyProperty.Register("InnerID", typeof(string), typeof(GBTComboBox));
        public string InnerID
        {
            get { return (string)base.GetValue(innerID); }
            set { base.SetValue(innerID, value); }
        }

        /// <summary>
        /// ComboBox的绑定表
        /// </summary>
        private static readonly DependencyProperty tableName =
            DependencyProperty.Register("TableName", typeof(string), typeof(GBTComboBox));
        public string TableName
        {
            get { return (string)base.GetValue(tableName); }
            set { base.SetValue(tableName, value); }
        }

        //查询表
        private static readonly DependencyProperty dtQuery =
            DependencyProperty.Register("TableQuery", typeof(DataTable[]), typeof(GBTComboBox));
        //private DataTable[] dtQuery;
        //查询表
        public DataTable[] TableQuery
        {
            get { return (DataTable[])base.GetValue(dtQuery); }
            set { base.SetValue(dtQuery, value); }
        }

        private static readonly DependencyProperty isreadonly = 
            DependencyProperty.Register("IsReadOnly", typeof(bool), typeof(GBTComboBox));
        public bool IsReadOnly
        {
            get { return (bool)base.GetValue(isreadonly); }
            set { base.SetValue(isreadonly, value); }
        }

        private void txtTextBox_MouseEnter(object sender, MouseEventArgs e)
        {
            if (!txtTextBox.IsReadOnly)
            {
                txtTextBox.Visibility = Visibility.Hidden;
                cobComboBox.Visibility = Visibility.Visible;
            }
        }

        private void cobComboBox_MouseLeave(object sender, MouseEventArgs e)
        {
            txtTextBox.Visibility = Visibility.Visible;
            cobComboBox.Visibility = Visibility.Hidden;
        }

        private void GbtComboBox_Loaded(object sender, RoutedEventArgs e)
        {
            //try
            //{
            //    CobDataSource = gbqb.Query(TableName, "", TableName).DefaultView;
            //    SelectedValuePath = "BillNo";
            //    DisplayValuePath = DisplayColumn;
            //}
            //catch { }
        }

        /// <summary>
        /// GBTComboBox数据初始化
        /// </summary>
        /// <param name="dt">数据表包含INNERID,ID,NAME</param>
        public void GBTComboBoxBinding(DataTable dt)
        {
            dt.Columns.Add("IdName");
            foreach (DataRow dr in dt.Rows)
            {
                dr["IdName"] = dr[dt.Columns[1].ColumnName].ToString() + "," + dr[dt.Columns[2].ColumnName].ToString();
            }
            this.CobDataSource = dt.DefaultView;
            this.InnerID = dt.Columns[0].ColumnName;
            this.SelectedValuePath = dt.Columns[1].ColumnName;
            this.DisplayValuePath = "IdName";
        }

        private void cobComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
