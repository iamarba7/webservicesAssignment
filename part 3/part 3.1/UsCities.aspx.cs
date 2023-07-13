using System;
using System.Linq;
using Part_III._1.GraphicalWeatherService;

namespace Part_III._1
{
    public partial class UsCities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Create an instance of the weather service client
                GraphicalWeatherServiceSoapClient client = new GraphicalWeatherServiceSoapClient();

                // Call the LatLonListCityNames method to retrieve the city names
                string[] cityNames = client.LatLonListCityNames().OrderBy(c => c).ToArray();

                // Display the city names in the Label control
                lblCities.Text = string.Join("<br/>", cityNames);
            }
        }
    }

}
