using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YourNamespace
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDeleteCookies_Click(object sender, EventArgs e)
        {
            // Retrieve all cookies for the current website
            string[] cookieNames = Request.Cookies.AllKeys;

            // Delete each cookie by setting its expiration date in the past
            foreach (string cookieName in cookieNames)
            {
                Response.Cookies[cookieName].Expires = DateTime.Now.AddDays(-1);
            }

            // Redirect to a confirmation page or perform any other desired action
            //Response.Redirect("Default.aspx");
            lblMessage.Text = "Cookies are deleted!.";
        }
    }
}