using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseAttribute
{
    public class SuppliersType : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged(PropertyChangedEventArgs e)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, e);
        }

        private string innerID = Guid.NewGuid().ToString();
        public string InnerID
        {
            get { return innerID; }
            set { innerID = value; }
        }

        private int rowID = 0;
        public int RowID
        {
            get { return rowID; }
            set { rowID = value; }
        }

        private string billNo = "";
        public string BillNo
        {
            get { return billNo; }
            set
            {
                billNo = value;
                OnPropertyChanged(new PropertyChangedEventArgs("BillNo"));
            }
        }

        private string billType = "";
        public string BillType
        {
            get { return billType; }
            set
            {
                billType = value;
                OnPropertyChanged(new PropertyChangedEventArgs("BillType"));
            }
        }

        private DateTime billDate = DateTime.Now;
        public DateTime BillDate
        {
            get { return billDate; }
            set 
            {
                billDate = value;
                OnPropertyChanged(new PropertyChangedEventArgs("BillDate"));
            }
        }

        private string supplierType = "";
        public string SupplierType
        {
            get { return supplierType; }
            set
            {
                supplierType = value;
                OnPropertyChanged(new PropertyChangedEventArgs("SupplierType"));
            }
        }

        private string state = "";
        public string State
        {
            get { return state; }
            set
            {
                state = value;
                OnPropertyChanged(new PropertyChangedEventArgs("State"));
            }
        }

        private string remark = "";
        public string Remark
        {
            get { return remark; }
            set
            {
                remark = value;
                OnPropertyChanged(new PropertyChangedEventArgs("Remark"));
            }
        }

        private string creater = "";
        public string Creater
        {
            get { return creater; }
            set
            {
                creater = value;
                OnPropertyChanged(new PropertyChangedEventArgs("Creater"));
            }
        }

        private DateTime createrDate = DateTime.Now;
        public DateTime CreaterDate
        {
            get { return createrDate; }
            set
            {
                createrDate = value;
                OnPropertyChanged(new PropertyChangedEventArgs("CreaterDate"));
            }
        }

        private string modifier = "";
        public string Modifier
        {
            get { return modifier; }
            set
            {
                modifier = value;
                OnPropertyChanged(new PropertyChangedEventArgs("Modifier"));
            }
        }

        private DateTime modifiedDate = DateTime.Now;
        public DateTime ModifiedDate
        {
            get { return modifiedDate; }
            set
            {
                modifiedDate = value;
                OnPropertyChanged(new PropertyChangedEventArgs("ModifiedDate"));
            }
        }

        public SuppliersType(string billNo, DateTime billDate, string billType, string supplierType,
            string remark)
        {
            BillNo = billNo;
            BillDate = billDate;
            BillType = billType;
            SupplierType = supplierType;
            Remark = remark;
        }

        public SuppliersType(string billNo, DateTime billDate, string billType, string supplierType,
            string remark, string state, string creater, DateTime createrDate, string modifier,
            DateTime modifiedDate)
            : this(billNo, billDate, billType, supplierType, remark)
        {
            State = state;
            Creater = creater;
            CreaterDate = createrDate;
            Modifier = modifier;
            ModifiedDate = modifiedDate;
        }
    }
}
