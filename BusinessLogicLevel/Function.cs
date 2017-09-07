using WpfCustomControlLibrary;
using System.Data;
using GeneralDataOperation;

namespace BusinessLogicLevel
{
    public class Function
    {
        BasicQuery bq = new BasicQuery();
        EncodingRules er = new EncodingRules();
        RdlcPrint rp = new RdlcPrint();
        ConvertDate cd = new ConvertDate();

        public string Number(int number, int bit)
        {
            try
            {
                return er.Number(number, bit);
            }
            catch
            {
                throw;
            }
        }

        public string getStringNumber(string str, int bit)
        {
            try
            {
                return er.GetStringNumber(str, bit);
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 获取单据编号 格式：标识符+日期+流水号格式
        /// </summary>
        /// <param name="tableName">表名</param>
        /// <param name="firstName">标识名称（首标识字符串）</param>
        /// <param name="dateLink">日期分隔符为""或"-"</param>
        /// <param name="link">日期与流水号之间的分隔符,目前只支持"-"或""</param>
        /// <param name="bit">流水号位数</param>
        /// <returns></returns>
        public string getBillNo(string tableName, string firstName, string dateLink, string link, int bit)
        {
            try
            {
                string billNo = "";
                string maxBillNo = bq.GetMaxBillNo(tableName, "WHERE CONVERT(varchar(100),[BillDate],23) = CONVERT(varchar(100), GETDATE(), 23)");
                if (string.IsNullOrEmpty(maxBillNo))
                {
                    billNo = firstName + dateLink + er.Number(System.DateTime.Now.Year, 4) +
                        dateLink + er.Number(System.DateTime.Now.Month, 2) +
                        dateLink + er.Number(System.DateTime.Now.Day, 2) + link + er.Number(1, bit);
                }
                else
                {
                    billNo = firstName + dateLink + er.Number(System.DateTime.Now.Year, 4) +
                        dateLink + er.Number(System.DateTime.Now.Month, 2) +
                        dateLink + er.Number(System.DateTime.Now.Day, 2) +
                        link + er.GetStringNumber(maxBillNo, bit);
                }
                return billNo;
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 获取明细表单据编号
        /// </summary>
        /// <param name="masterBillNo">主表单据编号</param>
        /// <param name="link">和明细表流水号间的连接符</param>
        /// <param name="index">明细表流水号</param>
        /// <param name="bit">明细表流水号位数</param>
        /// <returns></returns>
        public string getDetailBillNo(string masterBillNo, string link, int index, int bit)
        {
            try
            {
                return masterBillNo + link + er.Number(index, bit);
            }
            catch
            {
                throw;
            }
        }

        public string getBasicDataBillNo(string tableName, int bit)
        {
            try
            {
                string billNo = "";
                string maxBillNo = bq.GetMaxBillNo(tableName, "");
                if (string.IsNullOrEmpty(maxBillNo))
                {
                    billNo = er.Number(1, bit);
                }
                else
                {
                    billNo = er.GetStringNumber(maxBillNo, bit);
                }
                return billNo;
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 直接打印rdlc报表
        /// </summary>
        /// <param name="strAssembly">程序集名称</param>
        /// <param name="reportFileName">報表路徑</param>
        /// <param name="printerName">打印機名稱（使用默認打印機，不賦值）</param>
        /// <param name="dt1">報表數據源1</param>
        /// <param name="dt1SourceName">報表中數據源1對應名稱</param>
        public void Print(string strAssembly, string reportFileName, string printerName, DataTable[] dt1, string[] dt1SourceName)
        {
            try
            {
                rp.Run(strAssembly, reportFileName, printerName, dt1, dt1SourceName);
            }
            catch
            {
                throw;
            }
        }

        /// <summary>   
        /// 金额转为大写金额   
        /// </summary>   
        /// <param name="LowerMoney">小写金额（字符串）</param>  
        /// /// <returns></returns>   
        public string ConvertChinaMoney(string LowerMoney)
        {
            try
            {
                return cd.GetChineseMoney(LowerMoney);
            }
            catch
            {
                throw;
            }
        }
    }
}
