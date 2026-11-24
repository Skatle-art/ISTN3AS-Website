using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hlangalezwe_Dental_Clinic
{
    public partial class UpdateProfile : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = Context.User.Identity.Name.ToLower();
            SqlDataSource1.SelectParameters["Email"].DefaultValue = email;
            GridView1.DataBind();
        }
    }
}