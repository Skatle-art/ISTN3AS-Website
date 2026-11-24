<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientDashboard.aspx.cs" Inherits="Hlangalezwe_Dental_Clinic.Patient" %>

<%@ Register Src="~/ScheduleAppointment.ascx" TagPrefix="uc1" TagName="ScheduleAppointment" %>
<%@ Register Src="~/EditAppointment.ascx" TagPrefix="uc1" TagName="EditAppointment" %>
<%@ Register Src="~/ViewPrescription.ascx" TagPrefix="uc1" TagName="ViewPrescription" %>
<%@ Register Src="~/ViewMedicalRecord.ascx" TagPrefix="uc1" TagName="ViewMedicalRecord" %>
<%@ Register Src="~/UpdateProfile.ascx" TagPrefix="uc1" TagName="UpdateProfile" %>


<!DOCTYPE html>
<html>
<head runat="server">
    <title>Patient Dashboard</title>
    <style>
    body { 
        font-family: 'Segoe UI', Arial, sans-serif; 
        margin: 0; 
        padding: 0; 
        display: flex;
        height: 100vh;
        overflow: hidden;
        background: linear-gradient(to bottom, 
        #b3e5fc 0%, 
        #e1f5fe 50%, 
        #fff8e1 100%
        );
  
    }

    /* Sidebar */
    .sidebar {
        width: 115px;
        display: flex;
        flex-direction: column;
        padding-top: 20px;
        transition: width 0.3s;
        height: 100vh;
        position: relative;
        top: 1px;
        left: 4px;
        border: 2px solid black;
        border-radius: 20px;
    }
    .sidebar.collapsed {
        width: 115px;
    }
    .sidebar h2 {
        color: white;
        text-align: center;
        margin-bottom: 30px;
        font-size: 1.5rem;
        transition: opacity 0.3s;
    }
    .sidebar.collapsed h2 {
        opacity: 0;
    }

    /* Sidebar links */
    .sidebar a {
        display: flex;
        align-items: center;
        padding: 15px 20px;
        text-decoration: none;
        color: white;
        font-size: 1rem;
        font-weight: 500;
        transition: background-color 0.3s, transform 0.2s, padding 0.3s;
        border-radius: 5px;
        margin: 5px 10px;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    .sidebar a:hover {
        background-color: #007f8c;
        transform: translateX(3px);
    }
    .sidebar a i {
        margin-right: 10px;
        min-width: 20px;
        text-align: center;
    }
    .sidebar.collapsed a span {
        display: none; /* Hide text when collapsed */
    }

    /* Collapse button */
    .toggle-btn {
        border-style: none;
        border-color: inherit;
        border-width: medium;
        position: absolute;
        bottom: 26px;
        left: 43%;
        transform: translateX(-50%);
        background-color: #007f8c;
        color: white;
        padding: 10px;
        cursor: pointer;
        border-radius: 5px;
        font-weight: bold;
        width: 34px;
        right: 85px;
    }

    /* Main content */
    .main-content {
        flex: 1;
        padding: 5px;
        overflow-y: auto;
        border: 2px solid black;
        border-radius: 20px;
       
       /* border-width:11px; */
         
    }
    .main-content h1 {
        color: #0097a7;
        margin-bottom: 10px;

     
    }
    .main-content p {
        font-size: 1.1rem;
        color: #333;
        

    }
</style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="sidebar collapsed" id="sidebar" style="float:left">
     
            <asp:LinkButton ID="lnkScheduleAppointment" runat="server" OnClick="lnkScheduleAppointment_Click" ToolTip="Schedule Appointment" Style="display:flex; align-items:center; text-decoration:none; color:black;">
                 <img src="../Content/Images/schedule%20app.png" alt="Users" style="height:66px;width:66px;margin-right:10px;border-radius:10px;" />
                 <span>Schedule Appointment</span></asp:LinkButton>
       
           <asp:LinkButton ID="lnkEditAppointment" runat="server" OnClick="lnkEditAppointment_Click" ToolTip="Edit Appointment" Style="display:flex; align-items:center; text-decoration:none; color:black;">
              <img src="../Content/Images/EditAppointment.png" alt="Treatments" style="height: 66px; width: 66px; margin-right: 10px; border-radius:10px;" />
              <span>Edit Appointment</span></asp:LinkButton>

          <asp:LinkButton ID="lnkViewPrescription" runat="server" OnClick="lnkViewPrescription_Click" ToolTip="View Prescription" Style="display:flex; align-items:center; text-decoration:none; color:black;">
              <img src="../Content/Images/ViewPresciption.png" alt="Schedule" style="height: 66px; width: 66px; margin-right: 10px; border-radius:10px;" />
              <span>View Prescription</span></asp:LinkButton>
             
          <asp:LinkButton ID="lnkViewMedicalRecord" runat="server" OnClick="lnkViewMedicalRecord_Click" ToolTip="View Medical Record" Style="display:flex; align-items:center; text-decoration:none; color:black;">
              <img src="../Content/Images/ViewMedicalRecords.png" alt="Patient Records" style="height: 66px; width: 66px; margin-right: 10px; border-radius:10px;" />
              <span>View Medical Record</span></asp:LinkButton>

         <asp:LinkButton ID="lnkUpdateProfile" runat="server" OnClick="lnkUpdateProfile_Click" ToolTip="Update Profile Details" Style="display:flex; align-items:center; text-decoration:none; color:black;">
             <img src="../Content/Images/EditPatientDetails.png" alt="Reports" style="height: 66px; width: 66px; margin-right: 10px; border-radius:10px;" />
             <span>Update Profile</span></asp:LinkButton>
      </div>
         <div class="main-content" style=" width: 1402px; text-align: center; height: 738px;">
            <h1>Welcome, <%: Context.User.Identity.Name %></h1>
            <p>This is your dashboard. From here you can access your personal features:</p>

            <asp:MultiView ID="MainMultiView" runat="server">
                <asp:View ID="ScheduleAppointment" runat="server">
                     <%-- User Management Content Here --%>
                    <uc1:ScheduleAppointment runat="server" ID="ScheduleAppointment1" />
                </asp:View>
                <asp:View ID="EditAppointment" runat="server">
                     <%-- Edit Appointment Content Here --%>
                    <uc1:EditAppointment runat="server" id="EditAppointment1" />
                 </asp:View>
                <asp:View ID="ViewPrescription" runat="server">
                     <%-- View Prescription Content Here --%>
                    <uc1:ViewPrescription runat="server" id="ViewPrescription1" />
                </asp:View>
                <asp:View ID="ViewMedicalRecord" runat="server">
                     <%-- View Medical Record Content Here --%>
                    <uc1:ViewMedicalRecord runat="server" id="ViewMedicalRecord1" />
                </asp:View>
                <asp:View ID="UpdateProfile" runat="server">
                     <%-- Update Profile Content Here --%>
                    <uc1:UpdateProfile runat="server" id="UpdateProfile1" />
                </asp:View>

            </asp:MultiView>
          </div>
         <script>
        /* function toggleSidebar() {
             var sidebar = document.getElementById('sidebar');
             sidebar.classList.toggle('collapsed');
         }*/
         </script>
    </form>
</body>
</html>