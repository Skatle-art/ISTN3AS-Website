using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hlangalezwe_Dental_Clinic
{
    public partial class DentistDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ModifySchedule_Click(object sender, EventArgs e)
        {
            MainMultiView.ActiveViewIndex = 0;
        }
        protected void lnkUpdatePrescriptionn_Click(object sender, EventArgs e)
        {
            MainMultiView.ActiveViewIndex = 1;
        }
        protected void lnkViewMedicalRecord_Click(object sender, EventArgs e)
        {
            MainMultiView.ActiveViewIndex = 2;
        }
        protected void lnkGenerateReport_Click(object sender, EventArgs e)
        {
            MainMultiView.ActiveViewIndex = 3;
        }
    }
}