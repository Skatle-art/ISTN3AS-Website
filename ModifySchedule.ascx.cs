using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hlangalezwe_Dental_Clinic
{
    public partial class ModifySchedule : System.Web.UI.UserControl
    {
        List<string> timeslots = new List<string>
            {
              "08:00 - 08:45",
              "09:00 - 09:45",
              "10:00 - 10:30",
              "11:00 - 12:00",
              "12:00 - 12:20",
              "13:00 - 14:00"
};
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool rowFoundAndDeleted = false;

            // 1. Loop through every row in the GridView
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox chkSelect = (CheckBox)row.FindControl("chkSelect");
                if (chkSelect != null && chkSelect.Checked)
                {
                    object timeIDObject = GridView1.DataKeys[row.RowIndex].Value;

                    if (timeIDObject != null)
                    {
                        SqlDataSource1.DeleteParameters["original_TimeID"].DefaultValue = timeIDObject.ToString();
                        SqlDataSource1.Delete();

                        rowFoundAndDeleted = true;
                    }
                }
            }

            // 5. Update the GridView and provide feedback
            if (rowFoundAndDeleted)
            {
                GridView1.DataBind();
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Time Deleted Successfully!";
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Error: Please select a schedule entry to delete using the checkbox.";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Delete();
            GridView1.DataBind();
            foreach (string value in timeslots)
            {
               
                    SqlDataSource1.InsertParameters["Timeslot"].DefaultValue = value;
                    SqlDataSource1.Insert();
                    GridView1.DataBind();
                    Label1.ForeColor = System.Drawing.Color.Green;
                    Label1.Text = "Time Slots Reset Successfully!";
            }
        }
    }
}