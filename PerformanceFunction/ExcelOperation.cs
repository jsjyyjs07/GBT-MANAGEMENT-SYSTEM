using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Office.Interop.Excel;
using System.Data;
using System.Threading;
using System.Globalization;

namespace WpfCustomControlLibrary
{
    public class ExcelOperation
    {
        System.Data.DataTable[] dt = new System.Data.DataTable[1];
        public ExcelOperation(System.Data.DataTable[] dtQuery)
        {
            dt = dtQuery;
        }

        /// <summary>
        /// EXCEL导出，需传入DATATABLE
        /// </summary>
        /// <param name="dt"></param>
        public void ExportExcel(System.Data.DataTable[] dt)
        {
            for (int CurrentTable = 0; CurrentTable < dt.Length; CurrentTable++)
            {
                if (dt == null || dt[CurrentTable].Rows.Count == 0) return;
                Application xlApp = new Application();

                if (xlApp == null)
                {
                    return;
                }
                CultureInfo CurrentCI = Thread.CurrentThread.CurrentCulture;
                Thread.CurrentThread.CurrentCulture = new CultureInfo("en-US");
                Workbooks workbooks = xlApp.Workbooks;
                Workbook workbook = workbooks.Add(XlWBATemplate.xlWBATWorksheet);
                Worksheet worksheet = (Worksheet)workbook.Worksheets[1];
                Range range;
                long totalCount = dt[CurrentTable].Rows.Count;
                long rowRead = 0;
                float percent = 0;
                for (int i = 0; i < dt[CurrentTable].Columns.Count; i++)
                {
                    worksheet.Cells[1, i + 1] = dt[CurrentTable].Columns[i].ColumnName;
                    range = (Range)worksheet.Cells[1, i + 1];
                    range.Interior.ColorIndex = 15;
                    range.Font.Bold = true;
                }
                for (int r = 0; r < dt[CurrentTable].Rows.Count; r++)
                {
                    for (int i = 0; i < dt[CurrentTable].Columns.Count; i++)
                    {
                        worksheet.Cells[r + 2, i + 1] = dt[CurrentTable].Rows[r][i].ToString();
                    }
                    rowRead++;
                    percent = ((float)(100 * rowRead)) / totalCount;
                }
                xlApp.Visible = true;
            }
        }

        /// <summary>
        /// 线程调用EXCEL导出方法
        /// </summary>
        public void ThreadProc()
        {
            ExportExcel(dt);
        }
    }
}
