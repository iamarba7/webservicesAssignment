using System;

namespace YourNamespace

{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the user is authenticated
            if (!User.Identity.IsAuthenticated)
            {
                // Redirect to the login page
                Response.Redirect("Login.aspx");
            }
            else
            {
                // Display the username
                lblUsername.Text = User.Identity.Name;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Log out the user
            System.Web.Security.FormsAuthentication.SignOut();

            // Redirect to the login page
            Response.Redirect("Default.aspx");
        }
    }
}