using System;
using System.Web.UI;

namespace WebApplication
{
    public partial class Default : Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string comments = txtComments.Text;
            string technology = lstTechnologies.SelectedItem.Text;

            lblOutput.Text = $"Name: {name}<br />Technology: {technology}<br />Comments: {comments}";
            lblOutput.Visible = true;
        }
    }
}
