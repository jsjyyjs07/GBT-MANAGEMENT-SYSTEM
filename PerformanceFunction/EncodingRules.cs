using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace WpfCustomControlLibrary
{
    public class EncodingRules
    {
        /// <summary>
        /// 编码规则 处理流水号部分
        /// </summary>
        /// <param name="number">数字</param>
        /// <param name="Bit">位数</param>
        /// <returns></returns>
        public string Number(int number,int Bit)
        {
            if (number >= Bit * 10)
            {
                return (number).ToString();
            }
            else if (number >= 0 && number < Bit * 10)
            {
                return (number).ToString().PadLeft(Bit, '0');
            }
            else
            {
                return (number).ToString();
            }
        }

        /// <summary>
        /// 提取单据编号的流水号部分
        /// </summary>
        /// <param name="strBillNo">单据编号</param>
        /// <param name="bit">流水号位数</param>
        /// <returns></returns>
        public string GetStringNumber(string strBillNo, int bit)
        {
            //if (strBillNo.IndexOf(separator) == -1)
            //{
                //在没有分隔符的情况下 获取之前最大编号的最后bit位数为流水号再返回一个自增值
                string serialNumber = strBillNo.Substring(strBillNo.Length - bit, bit);
                return Number(int.Parse(serialNumber) + 1, bit);
            //}
            //else
            //{
            //    //获取最大编号的最后一个“-”后面的字符串，返回一个自增值
            //    Regex r = new Regex("\\d+");
            //    var ms = r.Matches(strBillNo);
            //    if (ms.Count > 0)
            //        return Number(int.Parse(ms.OfType<Match>().Last().ToString()) + 1, bit);
            //    else
            //        return Number(1, bit);
            //}
        }


    }
}
