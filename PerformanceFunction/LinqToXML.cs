using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Linq;
using Attribute;

namespace WpfCustomControlLibrary
{
    public class LinqToXML
    {
        //XML文件路径
        private static string xmlpath = "";

        EncryptionAlgorithm eahm = new EncryptionAlgorithm();
        XDocument xd = new XDocument();

        /// <summary>
        /// 构造函数，实例化时指定XML文件名，如果不存在该XML文件则在程序文件目录创建
        /// </summary>
        /// <param name="XMLName"></param>
        public LinqToXML(string XMLName)
        {
            //创建XML文件
            if (!File.Exists(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) + XMLName))
            {
                //File.Create(AppDomain.CurrentDomain.SetupInformation.ApplicationBase + XMLName);
                //创建XML文档
                XDocument xdoc = new XDocument(new XDeclaration("1.0", "utf-8", "yes"),
                    new XElement("Items", ""));
                xdoc.Save(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) + XMLName);
            }
            xmlpath = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) + XMLName;
            xd = XDocument.Load(xmlpath);
        }

        /// <summary>
        /// 写入数据库配置资料到XML中
        /// </summary>
        public void WriteXML()
        {
            XElement xe = XElement.Load(xmlpath);
            XElement newItem = new XElement("Item",
                    new XElement("ID", Guid.NewGuid()),
                    new XElement("def", DataEditAttribute.NewDef),
                    new XElement("service", DataEditAttribute.NewDataServices),
                    new XElement("sqluser", DataEditAttribute.NewSQLUser),
                    new XElement("sqlpwd", eahm.Encrypt(DataEditAttribute.NewSQLPassword)),
                    new XElement("database", DataEditAttribute.NewDatabases));
            xe.Add(newItem);
            xe.Save(xmlpath);
        }

        /// <summary>
        /// 读取XML，并返回DataTable
        /// </summary>
        /// <returns></returns>
        public DataTable readXML()
        {
            xd = XDocument.Load(xmlpath);
            DataTable dt = new DataTable();
            int i = 1;
            dt.Columns.Add("N.");
            dt.Columns.Add("Default", typeof(bool));
            dt.Columns.Add("RowID");
            dt.Columns.Add("Service");
            dt.Columns.Add("SQLUser");
            dt.Columns.Add("SQLPwd");
            dt.Columns.Add("Database");

            var databaseopt = from databases in xd.Descendants("Item")
                              select new
                              {
                                  ID = databases.Element("ID").Value.ToString(),
                                  def = databases.Element("def").Value.ToString(),
                                  service = databases.Element("service").Value.ToString(),
                                  sqluser = databases.Element("sqluser").Value.ToString(),
                                  sqlpwd = databases.Element("sqlpwd").Value.ToString(),
                                  database = databases.Element("database").Value.ToString()
                              };
            foreach (var database in databaseopt)
            {
                //添加数据到DataTable
                dt.Rows.Add(database.ID, database.def, i.ToString(), database.service, database.sqluser, database.sqlpwd, database.database);
                //为属性赋缺省值(初始化database configuration)
                if (database.def == "true")
                {
                    DataEditAttribute.ID = database.ID;
                    DataEditAttribute.Def = database.def;
                    DataEditAttribute.DataServices = database.service;
                    DataEditAttribute.SQLUser = database.sqluser;
                    DataEditAttribute.SQLPassword = database.sqlpwd;
                    DataEditAttribute.Databases = database.database;
                }
                i++;
            }
            return dt;
        }

        /// <summary>
        /// 根据ID，读取XML
        /// </summary>
        /// <returns></returns>
        public void readXML(string ID)
        {
            var databaseopt = from databases in xd.Descendants("Item")
                              where databases.Element("ID").Value.ToString() == ID
                              select new
                              {
                                  ID = databases.Element("ID").Value.ToString(),
                                  def = databases.Element("def").Value.ToString(),
                                  service = databases.Element("service").Value.ToString(),
                                  sqluser = databases.Element("sqluser").Value.ToString(),
                                  sqlpwd = databases.Element("sqlpwd").Value.ToString(),
                                  database = databases.Element("database").Value.ToString()
                              };
            foreach (var database in databaseopt)
            {
                //修改时赋初始值
                DataEditAttribute.NewID = database.ID;
                DataEditAttribute.NewDef = database.def;
                DataEditAttribute.NewDataServices = database.service;
                DataEditAttribute.NewSQLUser = database.sqluser;
                DataEditAttribute.NewSQLPassword = eahm.Decrypt(database.sqlpwd);
                DataEditAttribute.NewDatabases = database.database;
            }
        }

        /// <summary>
        /// 修改XML
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        public bool ModifyXML(string ID)
        {
            XElement xe = (from db in xd.Descendants("Item")
                           where db.Element("ID").Value.ToString() == ID
                           select db).Single();
            try
            {
                xe.Element("def").Value = DataEditAttribute.NewDef;
                xe.Element("service").Value = DataEditAttribute.NewDataServices;
                xe.Element("sqluser").Value = DataEditAttribute.NewSQLUser;
                xe.Element("sqlpwd").Value = eahm.Encrypt(DataEditAttribute.NewSQLPassword);
                xe.Element("database").Value = DataEditAttribute.NewDatabases;
                xd.Save(xmlpath);
                return true;
            }
            catch
            { return false; }
        }

        /// <summary>
        /// 删除XML项
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        public bool DeleteXMLNode(string ID)
        {
            XElement xe = (from db in xd.Descendants("Item")
                           where db.Element("ID").Value.ToString() == ID && db.Element("def").Value != "true"
                           select db).Single() as XElement;
            try
            {
                xe.Remove();
                xd.Save(xmlpath);
                return true;
            }
            catch
            { return false; }
        }
    }
}
