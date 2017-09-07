using System.Net;
using System.Text;
using System.Text.RegularExpressions;

namespace Attribute
{
    public static class IpAddress
    {
        private static string m_Location = "", m_IpAddress = "", m_Response = "";

        /// <summary>
        /// 新建IpLocation实例以获得IP地理位置
        /// </summary>
        /// <param name="ipAddress"></param>
        private static void IpLocation()
        {
            m_IpAddress = IpInfo.Trim();
            //m_IpAddress = "60.190.96.190";
            if (m_IpAddress == "" || m_IpAddress == null || m_IpAddress == "::1")
            {
                m_IpAddress = "127.0.0.1";
            }

            string response = GetUrltoHtml("http://www.ip138.com/ips138.asp?ip=" + m_IpAddress + "&action=2");
            m_Response = response;
            // 用于解析结果的正则表达式
            string p = @"<li>本站主数据：(?<location>[^<>]+?)</li>";
            // 正则解析网页的返回内容
            Match match = Regex.Match(response, p);
            // 取出匹配内容
            m_Location = match.Groups["location"].Value.Trim();
        }

        /// <summary>
        /// 获取IP地址
        /// </summary>
        /// <returns></returns>
        public static string IpInformation()
        {
            string response = GetUrltoHtml("http://1111.ip138.com/ic.asp");
            //匹配IPV4的正则表达式
            string ip = @"\b(?:(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))\b";
            Match match = Regex.Match(response, ip);
            string ipAddress = match.Groups[0].Value.ToString();
            return ipAddress;
        }

        /// <summary>
        /// 传入URL返回网页的html代码
        /// </summary>
        /// <param name="Url">URL</param>
        /// <returns></returns>
        private static string GetUrltoHtml(string Url)
        {
            try
            {
                System.Net.WebRequest wReq = System.Net.WebRequest.Create(Url);
                // Get the response instance.
                System.Net.WebResponse wResp = wReq.GetResponse();
                // Read an HTTP-specific property
                //if (wResp.GetType() ==HttpWebResponse)
                //{
                //DateTime updated  =((System.Net.HttpWebResponse)wResp).LastModified;
                //}
                // Get the response stream.
                System.IO.Stream respStream = wResp.GetResponseStream();
                // Dim reader As StreamReader = New StreamReader(respStream)
                using (System.IO.StreamReader reader = new System.IO.StreamReader(respStream, Encoding.Default))
                {
                    return reader.ReadToEnd();

                }
            }
            catch (System.Exception ex)
            {
                //errorMsg = ex.Message;
            }
            return "";
        }

        /// <summary>
        /// 返回公网Ip地址的地理位置名称
        /// </summary>
        public static string Location
        {
            get
            {
                IpLocation();
                return m_Location;
            }
        }

        /// <summary>
        /// 公网IP地址
        /// </summary>
        public static string IpInfo
        {
            get
            {
                m_IpAddress = IpInformation();
                return m_IpAddress;
            }
        }

        ///<summary>
        ///返回网络反馈原始数据
        ///</summary>
        public static string Response
        {
            get
            {
                IpLocation();
                return m_Response;
            }
        }

        /// <summary>
        /// 获取本地IP地址信息
        /// </summary>
        private static string GetAddressIP()
        {
            ///获取本地的IP地址
            string AddressIP = string.Empty;
            foreach (IPAddress _IPAddress in Dns.GetHostEntry(Dns.GetHostName()).AddressList)
            {
                if (_IPAddress.AddressFamily.ToString() == "InterNetwork")
                {
                    AddressIP = _IPAddress.ToString();
                }
            }
            return AddressIP;
        }

        /// <summary>
        /// 本地IP地址
        /// </summary>
        public static string LocationIP
        {
            get
            {
                return GetAddressIP();
            }
        }
    }
}
