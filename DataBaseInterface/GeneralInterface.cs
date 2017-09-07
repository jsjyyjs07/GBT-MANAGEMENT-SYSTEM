using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataBaseInterface
{
    public interface Database
    {
        bool userLoginValidation(string UserName, string UserPassword);
    }

    public interface GeneralDatabase
    {
        string GetName(string userName);
        DataTable ColumnsInformation(bool IsHeader, params string[] TableNames);
        DataTable Operator();
        DataTable DataBasicQuery(bool IsHeader, string ObjectValue, string OperatorValue, string SearchValue, params string[] table);
    }
}
