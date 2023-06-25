using System;

namespace NewWeb
{
	public partial class WebForm 
	{
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string comments = txtComments.Text;
            string selectedTechnology = ddlTechnologies.SelectedValue;

            string output = $"Name: {name}<br/>Selected Technology: {selectedTechnology}<br/>Comments: {comments}";

            Response.Write(output);
        }
    }
}

