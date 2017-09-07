using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using UIControl;
using GeneralDataOperation;
using BusinessLogicLevel;
using System.Data;
using WpfCustomControlLibrary;
using System.IO;

namespace Test
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        BasicControl bc = new BasicControl();
        AdvancedQuery aq = new AdvancedQuery();
        BasicQuery bq = new BasicQuery();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        DataTable dt = new DataTable();
        Function f = new Function();
        public MainWindow()
        {
            InitializeComponent();
            cobTest1.ItemsSource = bq.Query("Privilege", "", "Privilege").DefaultView;
            cobTest1.SelectedItem = "BillNo";
            cobTest1.SelectedValuePath = "BillNo";
            cobTest1.DisplayMemberPath = "Name";

            //gbtComboBox.CobDataSource = bq.Query("Privilege", "", "Privilege").DefaultView;
            //gbtComboBox.SelectedValuePath = "BillNo";
            //gbtComboBox.DisplayValuePath = "Name";

            dagTest.ItemsSource = Attribute.TemporarilyTable.OpenWindows.DefaultView;
            //dagTest.ItemsSource = gbqb.Query("PackagingSolutions", "FromInnerID", "", false).DefaultView;
            //this.DataContext = bq.Query("Unit", "", false).DefaultView;
            //cobTest2.ItemsSource = bq.Query(false, "SELECT * FROM SystemBillType", "SystemBillType").DefaultView;
            //cobTest2.SelectedItem = "BillType";
            //cobTest2.SelectedValuePath = "BillType";
            //cobTest2.DisplayMemberPath = "TypeName";
            //cobTest2.SelectedIndex = 0;
            //gbtComboBox.TableName = "InvoiceDetail";
            //gbtComboBox.DisplayColumn = "Deseription";

            dt = gbqb.Query("select B.* from [dbo].[Invoice] A inner join [dbo].[InvoiceDetail] B on A.BillNo=B.MasterBillNo where B.Customer = '0005'").Tables[0];
            dgTestSave.ItemsSource = dt.DefaultView;

            this.DataContext = dt;

            DataTable dtBind = gbqb.Query("select BillNo,CustomerName from Customer").Tables[0];

            DataTable dtBind1 = gbqb.Query("select BillNo,CustomerName from Customer").Tables[0];
            //ComboBoxBinding(cobBindTest, dtBind);

            ComboBoxBinding(cobCustomer, dtBind1);

            ComboBoxBinding(cobBindTest, bq.QueryBasic("Customer", "Customer", "BillNo", "CustomerName"));

            ComboBoxBinding(gbtComboBox, bq.QueryBasic("Customer", "Customer", "BillNo", "CustomerName"));

            //gbtComboBox.CobDataSource = dt.DefaultView;
            //gbtComboBox.SelectedValue = dt.Rows[10]["BillNo"].ToString();
            DataTable dtGBTComboBoxBind = gbqb.Query("select InnerID,BillNo,CustomerName from Customer").Tables[0];
            gbtComboBox.GBTComboBoxBinding(dtGBTComboBoxBind);

            txtFileName.Text = "0";
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            bc.RemoveWindow(this.Title);
        }

        private void tbnSave_Click(object sender, RoutedEventArgs e)
        {
            //DataView dv = (DataView)dgTestSave.ItemsSource;
            //DataTable dt = dv.ToTable();
            gbqb.UpdateTable("InvoiceDetail", dt);
            MessageBox.Show("保存成功。");
        }

        public void ComboBoxBinding(ComboBox cbx, DataTable dt)
        {
            dt.Columns.Add("IdName");
            foreach (DataRow dr in dt.Rows)
            {
                dr["IdName"] = dr[dt.Columns[0].ColumnName].ToString() + "," + dr[dt.Columns[1].ColumnName].ToString();
            }
            cbx.ItemsSource = dt.DefaultView;
            cbx.SelectedValuePath = dt.Columns[0].ColumnName;
            cbx.DisplayMemberPath = "IdName";
        }

        public void ComboBoxBinding(GBTComboBox cbx, DataTable dt)
        {
            dt.Columns.Add("IdName");
            foreach (DataRow dr in dt.Rows)
            {
                dr["IdName"] = dr[dt.Columns[0].ColumnName].ToString() + "," + dr[dt.Columns[1].ColumnName].ToString();
            }
            cbx.CobDataSource = dt.DefaultView;
            cbx.SelectedValuePath = dt.Columns[0].ColumnName;
            cbx.DisplayValuePath = "IdName";
        }

        public void ComboBoxBinding(DataGridComboBoxColumn cbx, DataTable dt)
        {
            dt.Columns.Add("IdName");
            foreach (DataRow dr in dt.Rows)
            {
                dr["IdName"] = dr[dt.Columns[0].ColumnName].ToString() + "," + dr[dt.Columns[1].ColumnName].ToString();
            }
            cbx.ItemsSource = dt.DefaultView;
            cbx.SelectedValuePath = dt.Columns[0].ColumnName;
            cbx.DisplayMemberPath = "IdName";
        }

        byte[] b = null;
        byte[] c = null;
        private void btnGetImage_Click(object sender, RoutedEventArgs e)
        {
            Microsoft.Win32.OpenFileDialog op = new Microsoft.Win32.OpenFileDialog();
            op.Filter = "文本文件(*.txt)|*.txt|所有文件(*.*)|*.*";
            op.ShowDialog();
            txtFileName.Text = op.FileName;

            b = GetPictureData(op.FileName);
            
            txtByte.Text = Convert.ToBase64String(b);

            string s = Convert.ToBase64String(b);
            c = Convert.FromBase64String(s);

            imgPicture.Source = ByteArrayToBitmapImage(b);
            imgTest.Source = ByteArrayToBitmapImage(c);
        }

        /// <summary>
        /// byte[]转BitmapImage
        /// </summary>
        /// <param name="byteArray"></param>
        /// <returns></returns>
        public static BitmapImage ByteArrayToBitmapImage(byte[] byteArray)
        {
            BitmapImage bmp = null;

            try
            {
                bmp = new BitmapImage();
                bmp.BeginInit();
                bmp.StreamSource = new MemoryStream(byteArray);
                bmp.EndInit();
            }
            catch
            {
                bmp = null;
            }

            return bmp;
        }

        /// <summary>
        /// Image文件传byte[]
        /// </summary>
        /// <param name="imagepath">Image文件路径</param>
        /// <returns></returns>
        public byte[] GetPictureData(string imagepath)
        {
            //根据图片文件的路径使用文件流打开，并保存为byte[]
            FileStream fs = new FileStream(imagepath, FileMode.Open);
            byte[] byData = new byte[fs.Length];
            fs.Read(byData, 0, byData.Length);
            fs.Close();
            return byData;
        }

        /// <summary>
        /// Image对象转byte[]
        /// </summary>
        /// <param name="imgPhoto">Image对象</param>
        /// <returns></returns>
        public byte[] PhotoImageInsert(System.Drawing.Image imgPhoto)
        {
            //将Image转换成流数据，并保存为byte[]     
            MemoryStream mstream = new MemoryStream();
            imgPhoto.Save(mstream, System.Drawing.Imaging.ImageFormat.Bmp);
            byte[] byData = new Byte[mstream.Length];
            mstream.Position = 0;
            mstream.Read(byData, 0, byData.Length);
            mstream.Close();
            return byData;
        }

        /// <summary>
        /// byte[]数据转Image对象
        /// </summary>
        /// <param name="streamByte"></param>
        /// <returns></returns>
        public System.Drawing.Image ReturnPhoto(byte[] streamByte)
        {
            System.IO.MemoryStream ms = new System.IO.MemoryStream(streamByte);
            System.Drawing.Image img = System.Drawing.Image.FromStream(ms);
            return img;
        }

        private void btnReadByte_Click(object sender, RoutedEventArgs e)
        {
            string s = f.ConvertChinaMoney(txtFileName.Text.Trim());
            txtFileName.Text = s;
        }

    }
}
