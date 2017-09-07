namespace Attribute
{
    public class OrderStart
    {
        //复制状态
        private static string copyStart = "";
        public static string CopyStart
        {
            get { return copyStart; }
            set { copyStart = value; }
        }

        private static string trunStart = "";
        public static string TrunStart
        {
            get { return trunStart; }
            set { trunStart = value; }
        }
    }
}
