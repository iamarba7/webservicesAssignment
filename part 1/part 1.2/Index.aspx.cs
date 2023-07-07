using System;

namespace YourNamespace
{
    public partial class Index : System.Web.UI.Page
    {
        protected void errorButton_Click(object sender, EventArgs e)
        {
            try
            {
                throw new IndexOutOfRangeException("Index out of range exception occurred.");
            }
            catch (Exception ex)
            {
                Response.Redirect("ErrorPage.aspx");
            }
        }

    }
}