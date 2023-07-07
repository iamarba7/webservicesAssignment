using System;
using System.Web.UI;
using System.Linq;
using System.Web.UI.WebControls;


namespace NewWeb
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string comments = txtComments.Text;
            string selectedTechnology = ddlTechnologies.SelectedItem.Text;

            string output = $"Name: {name}<br/>Selected Technology: {selectedTechnology}<br/>Comments: {comments}";

            Response.Write(output);
        }
    }
}

