using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hlangalezwe_Dental_Clinic
{
    public partial class Patient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void lnkScheduleAppointment_Click(object sender, EventArgs e)
        {
            MainMultiView.ActiveViewIndex = 0;
        }

        protected void lnkEditAppointment_Click(object sender, EventArgs e)
        {
            MainMultiView.ActiveViewIndex = 1;
        }

        protected void lnkViewMedicalRecord_Click(object sender, EventArgs e)
        {
            MainMultiView.ActiveViewIndex = 3;
        }

        protected void lnkViewPrescription_Click(object sender, EventArgs e)
        {
            MainMultiView.ActiveViewIndex = 2;
        }

        protected void lnkUpdateProfile_Click(object sender, EventArgs e)
        {
            MainMultiView.ActiveViewIndex = 4;
        }
    }
}