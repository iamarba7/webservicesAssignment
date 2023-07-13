using System;


namespace Part_III._2 
{
    public partial class Client : System.Web.UI.Page
    {
        LotteryService client;

        protected void Page_Load(object sender, EventArgs e)
        {
            client = new LotteryService(); 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int[] lotteryNumbers = client.GenerateRandomNumbers();

            randomNumberLabel.Text = string.Join(" ", lotteryNumbers);
        }
    }
}
