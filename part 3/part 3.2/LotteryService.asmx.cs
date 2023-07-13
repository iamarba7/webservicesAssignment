using System;
using System.Web.Services;

namespace Part_III._2
{
   
    [WebService(Namespace = "http://StateServices/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    
    public class LotteryService : System.Web.Services.WebService
    {

        [WebMethod]
        public int[] GenerateRandomNumbers()
        {
            Random random = new Random();
            int[] numbers = new int[6];

            for (int i = 0; i < 6; i++)
            {
                numbers[i] = random.Next(1, 50);
            }

            return numbers;
        }
    }
}
