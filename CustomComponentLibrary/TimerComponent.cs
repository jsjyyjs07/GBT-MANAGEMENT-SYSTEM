using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Timers;
using System.Windows.Controls;

namespace CustomComponentLibrary
{
    public partial class TimerComponent : Component
    {
        Label lable = new Label();
        Timer timer = new Timer();
        private delegate void outputDelegate(string msg);

        public TimerComponent()
        {
            InitializeComponent();
        }

        public TimerComponent(IContainer container)
        {
            container.Add(this);
            InitializeComponent();
        }

        private static Label label;
        private static double interval = 0;

        public static Label lblMsg
        {
            get { return label; }
            set { label = value; }
        }

        public static double TimerInterval
        {
            get { return interval; }
            set { interval = value; }
        }

        //定时器
        private void TimerControl()
        {
            timer.Elapsed += new ElapsedEventHandler(TimerEvent);
            timer.AutoReset = false;
            timer.Interval = TimerInterval;
            timer.Enabled = true;
        }

        #region 跨线程访问lblMessage控件
        private delegate void outputDelegate(string msg);
        /// <summary>
        /// 输出文本到lblManage
        /// </summary>
        /// <param name="msg">消息内容</param>
        private void output(string msg)
        {
            lblMsg.Dispatcher.Invoke(new outputDelegate(outputAuction), msg);
        }

        private void outputAuction(string msg)
        {
            lblMsg.Content = msg;
        }
        #endregion

        //计时事件
        private void TimerEvent(object sender, ElapsedEventArgs e)
        {
            output("Ready");
            timer.Enabled = false;
        }
    }
}
