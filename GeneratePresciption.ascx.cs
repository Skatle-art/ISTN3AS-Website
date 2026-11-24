using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hlangalezwe_Dental_Clinic
{
    public partial class ManageTreatment : System.Web.UI.UserControl
    {     
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow.Cells[6].Text != null)
            {
                SqlDataSource3.InsertParameters["Prescription_Date"].DefaultValue = DateTime.Now.ToShortDateString();
                SqlDataSource3.InsertParameters["TreatmentID"].DefaultValue = GridView1.SelectedRow.Cells[6].Text;
                SqlDataSource3.Insert();
                GridView2.DataBind();
                Label6.ForeColor = Color.Green;
                Label6.Text = "Status: Prescription Generated Successfully ";
            }
            else
            {
                Label6.ForeColor = Color.Red;
                Label6.Text = "Choose appointment to generate presciption for";
            }
        }
    }
}