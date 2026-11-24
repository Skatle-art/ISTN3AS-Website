using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hlangalezwe_Dental_Clinic
{
    public partial class GenerateMedicalRecord : System.Web.UI.UserControl
    {
        Dictionary<string, int> allergyCount = new Dictionary<string, int>();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string allergyName =TextBox4.Text.Trim();

            if (!string.IsNullOrEmpty(allergyName))
            {
                SqlDataSource2.InsertParameters["Allergy_name"].DefaultValue = allergyName;
                SqlDataSource2.Insert();
                GridView2.DataBind(); // Refresh GridView to show the updated list
                Button2.BackColor = Color.Green;
            }
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataSource3.InsertParameters["PatientID"].DefaultValue = GridView1.SelectedRow.Cells[1].Text;
            SqlDataSource3.InsertParameters["lastUpdated"].DefaultValue = DateTime.Now.ToShortTimeString();
            SqlDataSource3.Insert();
            Label5.Text = "Medical Record added successfully";
            Label5.ForeColor = Color.Green;
        }
    }
}