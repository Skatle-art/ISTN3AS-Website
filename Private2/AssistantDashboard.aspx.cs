using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hlangalezwe_Dental_Clinic
{
    public partial class AssistantDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set a default view, e.g., the WelcomeView (index 5) or the UsersView (index 0)
                MainMultiView.ActiveViewIndex = 0;
            }
        }

       
     
        protected void lnkScheduleAppointments_Click(object sender, EventArgs e)
        {
            MainMultiView.ActiveViewIndex = 2;
        }

        protected void lnkPatientRecords_Click(object sender, EventArgs e)
        {
            MainMultiView.ActiveViewIndex = 3;
        }

        protected void lnkGenerateReports_Click(object sender, EventArgs e)
        {
            MainMultiView.ActiveViewIndex = 4;
        }

        protected void lnkUsers_Click(object sender, EventArgs e)
        {
            MainMultiView.ActiveViewIndex = 0;
        }

        protected void lnkGeneratePrescription_Click(object sender, EventArgs e)
        {
            MainMultiView.ActiveViewIndex = 1;
        }
    }
}