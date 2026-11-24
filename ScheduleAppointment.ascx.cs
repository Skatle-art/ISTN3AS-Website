using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hlangalezwe_Dental_Clinic
{
    public partial class ScheduleAppointment : System.Web.UI.UserControl
    {
        decimal val;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView3.Enabled = true;
            string email = Context.User.Identity.Name.ToLower();
            // Assign it to the SqlDataSource parameter
            SqlDataSource4.SelectParameters["Email"].DefaultValue = email;
            GridView2.DataBind();
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            GridView1.DataBind();
            DropDownList1.DataBind();
            foreach (GridViewRow row in GridView1.Rows)
             {
                 for (int j = 0;j < DropDownList1.Items.Count;j++) {
                     if (row.Cells[3].Text.Trim() == DropDownList1.Items[j].Text.Trim())
                     {
                         DropDownList1.Items.RemoveAt(j);
                     }
                }
            }
        }
        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView3.DataBind();
            if (DropDownList3.SelectedValue == "Treatment")
            {
                GridView3.Enabled = true;      
            }
            else
            { 
                GridView3.Enabled = false;  
            }
            GridView3.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource6.InsertParameters["AppointmentDate"].DefaultValue = Calendar1.SelectedDate.ToShortDateString();
                SqlDataSource6.InsertParameters["AppointmentTime"].DefaultValue = DropDownList1.SelectedItem.ToString();
                SqlDataSource6.InsertParameters["PatientID"].DefaultValue = GridView2.SelectedRow.Cells[1].Text;
                SqlDataSource6.InsertParameters["AppointmentStatus"].DefaultValue = "Scheduled";
                SqlDataSource6.InsertParameters["BookingDate"].DefaultValue = DateTime.Now.ToShortDateString();
                SqlDataSource6.InsertParameters["VisitReason"].DefaultValue = DropDownList3.SelectedValue;
                SqlDataSource6.Insert();

                GridView1.DataBind();

                SqlDataSource7.InsertParameters["treatmentType"].DefaultValue = GridView3.SelectedRow.Cells[2].Text.ToString();
                SqlDataSource7.InsertParameters["Description"].DefaultValue = GridView3.SelectedRow.Cells[2].Text.ToString();
                SqlDataSource7.InsertParameters["treatmentCost"].DefaultValue = GridView3.SelectedRow.Cells[3].Text.ToString();
                SqlDataSource7.InsertParameters["Duration"].DefaultValue = (GridView3.SelectedRow.Cells[4].Text).ToString();
                SqlDataSource7.InsertParameters["dentistID"].DefaultValue = 1.ToString();
                if (GridView1.Rows.Count > 0)
                {
                    GridViewRow lastRow = GridView1.Rows[GridView1.Rows.Count - 1];
                    string firstCellValue = lastRow.Cells[0].Text;
                    SqlDataSource7.InsertParameters["AppointmentID"].DefaultValue = firstCellValue;
                }
                Label12.ForeColor = System.Drawing.Color.Green;
                Label12.Text = "Status:Appointment Scheduled Successfully";
                SqlDataSource7.Insert();
            }
            catch (Exception ex)
            {
                Label12.ForeColor = System.Drawing.Color.Red;
                Label12.Text = "Staus:Error:" + ex.Message;
            }  
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            GridView2.DataBind();
        }
    }
}