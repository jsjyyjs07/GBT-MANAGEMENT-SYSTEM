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

namespace OA.AdministrationOfNetworks
{
    /// <summary>
    /// Interaction logic for BGInfoTable.xaml
    /// </summary>
    public partial class BGInfoTable : Window
    {
        BasicControl bc = new BasicControl();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        DataTable[] dt = new DataTable[1];
        string guid = "";

        public BGInfoTable()
        {
            InitializeComponent();
        }

        private void winBGInfoTable_Loaded(object sender, RoutedEventArgs e)
        {
            tbaToolBar.TitleName = this.Title;
            guid = BasicControl.InnerID;
            tbaToolBar.AddString = guid;
            try
            {
                dt[0] = gbqb.Query(false, "SELECT * FROM BGInfoTable WHERE Time_Stamp = '" + guid + "'", "BGInfoTable");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            this.DataContext = dt[0];
            tbaToolBar.TableQuery = dt;
        }

        private void winBGInfoTable_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            bc.RemoveWindow(this.Title);
        }
    }
}
