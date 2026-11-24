using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hlangalezwe_Dental_Clinic
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            // Grab the user's input
            string name = txtName.Text;
            string email = txtEmail.Text;
            string message = txtMessage.Text;

            // Example: Display a confirmation message
            // (You can replace this with email logic later)
            Response.Write("<script>alert('Thank you, " + name + "! Your message has been sent.');</script>");
        }
    }
}