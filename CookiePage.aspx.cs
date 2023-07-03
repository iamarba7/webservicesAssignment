using System;
using System.Web;
//using System.Xml.Linq;

namespace YourNamespace {
    public partial class CookiePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the cookie exists
                if (Request.Cookies["UserName"] != null)
                {
                    // Retrieve the user's name from the cookie
                    string userName = Request.Cookies["UserName"].Value;
                    txtName.Text = userName;
                    }
                if (Session["Time"] == null)
                {
                    // Add keys and values to the session dictionary
                    Session["Time"] = DateTime.Now.ToString();
                    Session["UserAgent"] = Request.UserAgent;
                    Session["RemoteIP"] = Request.UserHostAddress;
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // Get the user's name from the input field
            string userName = txtName.Text.Trim();

            // Create a new cookie and set its value
            HttpCookie cookie = new HttpCookie("UserName", userName);

            // Set the expiration date to one year from now
            cookie.Expires = DateTime.Now.AddYears(1);

            // Add the cookie to the response
            Response.Cookies.Add(cookie);
            lblMessage.Text = "Cookie for "+userName+" is successfully created!";
        }
    }
}

