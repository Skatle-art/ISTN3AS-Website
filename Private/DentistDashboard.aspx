<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DentistDashboard.aspx.cs" Inherits="Hlangalezwe_Dental_Clinic.DentistDashboard" %>

<%@ Register Src="~/ModifySchedule.ascx" TagPrefix="uc1" TagName="ModifySchedule" %>
<%@ Register Src="~/UpdatePrescription.ascx" TagPrefix="uc1" TagName="UpdatePrescription" %>
<%@ Register Src="~/ViewMedicalRecord.ascx" TagPrefix="uc1" TagName="ViewMedicalRecord" %>
<%@ Register Src="~/GenerateReport.ascx" TagPrefix="uc1" TagName="GenerateReport" %>





<!DOCTYPE html>
<html>
<head runat="server">
    <title>Dentist Dashboard</title>
      
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
        top: 2px;
        left: 4px;
        border: 2px solid black;
        border-radius: 20px;
    }
    .sidebar.collapsed {
        width: 114px;
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
     
                 <asp:LinkButton ID="lnkModifySchedule" runat="server" OnClick="ModifySchedule_Click" ToolTip="Modify Schedule" Style="display:flex; align-items:center; text-decoration:none; color:black;">
                     <img src="../Content/Images/ModifySchedule.png" alt="Schedule" style="height: 66px; width: 66px; margin-right: 10px; border-radius:10px;" />
                     <span>Modify Schedule</span></asp:LinkButton>
          
                <asp:LinkButton ID="lnkUpdatePrescription" runat="server" OnClick="lnkUpdatePrescriptionn_Click" ToolTip="Update Prescription" Style="display:flex; align-items:center; text-decoration:none; color:black;">
                    <img src="../Content/Images/ViewPresciption.png" alt="Schedule" style="height: 66px; width: 66px; margin-right: 10px; border-radius:10px;" />
                    <span>Update Prescription</span></asp:LinkButton>
       
                <asp:LinkButton ID="lnkViewMedicalRecord" runat="server" OnClick="lnkViewMedicalRecord_Click" ToolTip="Add Medical Record" Style="display:flex; align-items:center; text-decoration:none; color:black;">
                    <img src="../Content/Images/ViewMedicalRecords.png" alt="Patient Records" style="height: 66px; width: 66px; margin-right: 10px; border-radius:10px;" />
                <span>Add Medical Record</span></asp:LinkButton>
     
                <asp:LinkButton ID="lnkGenerateReport" runat="server" OnClick="lnkGenerateReport_Click" ToolTip="Generate Report" Style="display:flex; align-items:center; text-decoration:none; color:black;">
                    <img src="../Content/Images/Reports.png" alt="Report" style="height: 66px; width: 66px; margin-right: 10px; border-radius:10px;" />
                    <span>Generate Report</span></asp:LinkButton>
        </div>
        <div class="main-content" style="float:left; width: 1402px; text-align: center; height: 738px;">
             <h1>Welcome, <%: Context.User.Identity.Name %></h1>
             <p>This is your dashboard. From here you can access your personal features:</p>

             <asp:MultiView ID="MainMultiView" runat="server">
                 <asp:View ID="ModifySchedule" runat="server">
                     <uc1:ModifySchedule runat="server" id="ModifySchedule1" />
                 </asp:View>
                 <asp:View ID="UpdatePresciption" runat="server">
                     <uc1:UpdatePrescription runat="server" id="UpdatePrescription" />
                 </asp:View>
                 <asp:View ID="ViewMedicalRecord" runat="server">
                     <uc1:ViewMedicalRecord runat="server" ID="ViewMedicalRecord1" />
                 </asp:View>
                 <asp:View ID="GenerateReport" runat="server">
                     <uc1:GenerateReport runat="server" id="GenerateReport1" />
                 </asp:View>
            </asp:MultiView>   
       </div>
       <script>
      
        </script>
    </form>
</body>
</html>
