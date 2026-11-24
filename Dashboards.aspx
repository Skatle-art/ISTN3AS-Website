<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboards.aspx.cs" Inherits="Hlangalezwe_Dental_Clinic.Dashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background-color: #f4f7f9;
            margin: 0; padding: 0;
        }
        .dashboard-container {
            max-width: 1000px;
            margin: 50px auto;
            padding: 30px;
        }
        .dashboard-header {
            text-align: center;
            margin-bottom: 40px;
        }
        .dashboard-header h1 {
            color: #0097a7;
            margin-bottom: 10px;
        }
        .dashboard-header p {
            color: #555;
            font-size: 1.1rem;
        }
        .cards-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }
        .card {
            flex: 1 1 250px;
            background-color: #fff;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.1);
            text-align: center;
            cursor: pointer;
            transition: transform 0.2s, box-shadow 0.3s;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }
        .card-icon {
            font-size: 40px;
            color: #00bcd4;
            margin-bottom: 15px;
        }
        .card h3 {
            margin-bottom: 8px;
            color: #0097a7;
        }
        .card p {
            font-size: 0.95rem;
            color: #555;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div class="dashboard-container">
            <div class="dashboard-header">
                <h1>Welcome, <%: Context.User.Identity.Name %></h1>
                <p>Access your dashboard features below.</p>
            </div>

            <!-- Patient Cards -->
            <asp:Panel ID="PatientPanel" runat="server" Visible="false">
                <div class="cards-grid">
                    <div class="card"><div class="card-icon">📅</div><h3>Book Appointment</h3><p>Schedule a new dental appointment.</p></div>
                    <div class="card"><div class="card-icon">🗂️</div><h3>Manage Appointments</h3><p>View or cancel upcoming appointments.</p></div>
                    <div class="card"><div class="card-icon">💊</div><h3>View Prescription</h3><p>Check your prescribed medications.</p></div>
                    <div class="card"><div class="card-icon">🩺</div><h3>Medical Record</h3><p>Access your medical history.</p></div>
                    <div class="card"><div class="card-icon">✏️</div><h3>Update Profile</h3><p>Edit your personal details.</p></div>
                </div>
            </asp:Panel>

            <!-- Dentist Cards -->
            <asp:Panel ID="DentistPanel" runat="server" Visible="false">
                <div class="cards-grid">
                    <div class="card"><div class="card-icon">📋</div><h3>View Schedule</h3><p>Check your appointments for the day.</p></div>
                    <div class="card"><div class="card-icon">⏰</div><h3>Update Available Times</h3><p>Set your working hours and availability.</p></div>
                    <div class="card"><div class="card-icon">🧾</div><h3>Update Prescription</h3><p>Manage patient prescriptions.</p></div>
                    <div class="card"><div class="card-icon">📁</div><h3>Add Medical Record</h3><p>Upload or update patient records.</p></div>
                </div>
            </asp:Panel>

            <!-- Assistant Cards -->
            <asp:Panel ID="AssistantPanel" runat="server" Visible="false">
                <div class="cards-grid">
                    <div class="card"><div class="card-icon">👥</div><h3>Manage Users</h3><p>Create, update, or remove user accounts.</p></div>
                    <div class="card"><div class="card-icon">🦷</div><h3>Manage Treatments</h3><p>Organize available dental procedures.</p></div>
                    <div class="card"><div class="card-icon">📊</div><h3>Generate Reports</h3><p>View patient or clinic reports.</p></div>
                </div>
            </asp:Panel>

        </div>
    </form>
</body>
</html>

