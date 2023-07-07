using System;
using System.Web;
using System.Web.Security;

namespace YourNamespace
{

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Authenticate the user against your authentication provider
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            bool isAuthenticated = AuthenticateUser(username, password);

            if (isAuthenticated)
            {
                // Set the authentication cookie
                FormsAuthentication.SetAuthCookie(username, false);

                // Redirect to the default page
                Response.Redirect(FormsAuthentication.DefaultUrl);
            }
            else
            {
                // Display an error message or take appropriate action
                // if authentication fails
            }
        }


        private bool AuthenticateUser(string username, string password)
    {
        // Implement your own authentication logic here
        // For example, check against a database
        // Return true if the username and password are valid, otherwise false

        // Dummy implementation for demonstration purposes
        return (username == "Statehouse" && password == "1234");
    }
}
}
