using System;

namespace YourNamespace
{
    public partial class ErrorPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Context.Error != null)
            {
                errorMessageLabel.Text = Context.Error.Message;
            }
        }
    }
}