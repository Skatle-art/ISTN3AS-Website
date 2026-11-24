<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssistantDashboard.aspx.cs" Inherits="Hlangalezwe_Dental_Clinic.AssistantDashboard" %>

<%@ Register Src="~/PatientRecords.ascx" TagPrefix="uc1" TagName="PatientRecords" %>
<%@ Register Src="~/ScheduleAppointment.ascx" TagPrefix="uc1" TagName="ScheduleAppointment" %>
<%@ Register Src="~/GeneratePresciption.ascx" TagPrefix="uc1" TagName="GeneratePresciption" %>
<%@ Register Src="~/GenerateReport.ascx" TagPrefix="uc1" TagName="GenerateReport" %>
<%@ Register Src="~/GenerateMedicalRecord.ascx" TagPrefix="uc1" TagName="GenerateMedicalRecord" %>


<!DOCTYPE html>
<html>
<head runat="server">
    <title>Assistant Dashboard</title>
  

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
        background: linear-gradient(to bottom, 
        #b3e5fc 0%, 
        #e1f5fe 50%, 
        #fff8e1 100%
        );
        display: flex;
        flex-direction: column;
        padding-top: 20px;
        transition: width 0.3s;
        height: 100vh;
        position: relative;
        top: 2px;
        left: 1px;
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
       
        <!-- Sidebar -->
        <div class="sidebar collapsed" id="sidebar" style="float:left">
            <h2>Assistant</h2>
            <asp:LinkButton ID="lnkUsers" runat="server" OnClick="lnkUsers_Click" ToolTip="Manage Users" Style="display:flex; align-items:center; text-decoration:none; color:black;">
                 <img src="../Content/Images/UsersImage.png" alt="Users" style="height:66px;width:66px;margin-right:10px;border-radius:10px;" />
                <span>Generate Medical Record</span></asp:LinkButton>

           <asp:LinkButton ID="lnkGeneratePrescription" runat="server" OnClick="lnkGeneratePrescription_Click" ToolTip="GeneratePrescription" Style="display: flex; align-items: center; text-decoration: none; color: black;">
                <img src="../Content/Images/Treatments.png" alt="Treatments" style="height: 66px; width: 66px; margin-right: 10px; border-radius:10px;" />
                <span>Generate Prescription</span></asp:LinkButton>

            <asp:LinkButton ID="lnkScheduleAppointments" runat="server" OnClick="lnkScheduleAppointments_Click" ToolTip="Schedule Appointments" Style="display: flex; align-items: center; text-decoration: none; color: black;">
                <img src="../Content/Images/schedule%20app.png" alt="Schedule" style="height: 66px; width: 66px; margin-right: 10px; border-radius:10px;" />
                 <span>Schedule Appointments</span></asp:LinkButton>

            <asp:LinkButton ID="lnkPatientRecords" runat="server" OnClick="lnkPatientRecords_Click" ToolTip="Patient Records" Style="display: flex; align-items: center; text-decoration: none; color: black;">
                <img src="../Content/Images/patient%20records.png" alt="Patient Records" style="height: 66px; width: 66px; margin-right: 10px; border-radius:10px;" />
                <span>Patient Records</span></asp:LinkButton>

            <asp:LinkButton ID="lnkGenerateReports" runat="server" OnClick="lnkGenerateReports_Click" ToolTip="Generate Reports" Style="display: flex; align-items: center; text-decoration: none; color: black;">
                <img src="../Content/Images/Reports.png" alt="Reports" style="height: 66px; width: 66px; margin-right: 10px; border-radius:10px;" />
                <span>Generate Reports</span></asp:LinkButton>
        </div>
         <!-- Main content -->
        <div class="main-content" style="float:left; width: 1401px; text-align: center; height: 738px;">
            <h1>Welcome, <%: Context.User.Identity.Name %></h1>
              
            <asp:MultiView ID="MainMultiView" runat="server">
                <asp:View ID="ViewUsers" runat="server">
                    <%-- User Management Content Here --%>
                    <uc1:GenerateMedicalRecord runat="server" ID="GenerateMedicalRecord" />
                </asp:View>
                <asp:View ID="ViewManageTreatments" runat="server">
                    <%-- Manage Treatments Content Here --%>
                    <uc1:GeneratePresciption runat="server" ID="GeneratePresciption" />
                </asp:View>
                <asp:View ID="ViewScheduleAppointments" runat="server">
                    <%-- Schedule Appointments Content Here --%>
                    <uc1:ScheduleAppointment runat="server" ID="ScheduleAppointment" />
                </asp:View>
                <asp:View ID="ViewPatientRecords" runat="server">
                    <%-- Patient Records Content Here --%>
                     <uc1:PatientRecords runat="server" ID="PatientRecords" />
                </asp:View>
                <asp:View ID="ViewGenerateReports" runat="server">
                    <%-- Generate Reports Content Here --%>
                    <uc1:GenerateReport runat="server" id="GenerateReport" />
                </asp:View>

            </asp:MultiView>
        </div>
    </form>

    <script>
      
    </script>
</body>
</html>