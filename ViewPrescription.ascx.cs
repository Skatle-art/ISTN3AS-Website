using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hlangalezwe_Dental_Clinic
{
    public partial class ViewPrescription : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               

               
                string email = Context.User.Identity.Name.ToLower();
                // Assign it to the SqlDataSource parameter
                SqlDataSource1.SelectParameters["Email"].DefaultValue = email;
                GridView1.DataBind();
                Label1.Text = "Welcome " + Context.User.Identity.Name + ". Here's your prescription details.";
            }
        }
    }
}