<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewPrescription.ascx.cs" Inherits="Hlangalezwe_Dental_Clinic.ViewPrescription" %>
<div style="float: left; height: 300px; width: 1239px; border: 2px solid black; padding: 10px;border-radius:10px;text-align:left;">
    <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
    <br><br>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1194px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="PrescriptionID" HeaderText="PrescriptionID" InsertVisible="False" ReadOnly="True" SortExpression="PrescriptionID" />
            <asp:BoundField DataField="Medication_Name" HeaderText="Medication_Name" SortExpression="Medication_Name" />
            <asp:BoundField DataField="Prescription_Date" DataFormatString="{0:d}" HeaderText="Prescription_Date" SortExpression="Prescription_Date" />
            <asp:BoundField DataField="Dosage" HeaderText="Dosage" SortExpression="Dosage" />
            <asp:BoundField DataField="Instructions" HeaderText="Instructions" SortExpression="Instructions" />
            <asp:BoundField DataField="TreatmentID" HeaderText="TreatmentID" SortExpression="TreatmentID" />
            <asp:BoundField DataField="treatmentType" HeaderText="treatmentType" SortExpression="treatmentType" />
            <asp:BoundField DataField="PatientID" HeaderText="PatientID" InsertVisible="False" ReadOnly="True" SortExpression="PatientID" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="AppointmentID" HeaderText="AppointmentID" SortExpression="AppointmentID" InsertVisible="False" ReadOnly="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" SelectCommand="SELECT Prescription1.PrescriptionID, Prescription1.Medication_Name, Prescription1.Prescription_Date, Prescription1.Dosage, Prescription1.Instructions, Prescription1.TreatmentID, Treatment.treatmentType, Patient.PatientID, Patient.email, Appointment.AppointmentID FROM Prescription1 INNER JOIN Treatment ON Prescription1.TreatmentID = Treatment.TreatmentID INNER JOIN Appointment ON Treatment.AppointmentID = Appointment.AppointmentID INNER JOIN Patient ON Appointment.PatientID = Patient.PatientID WHERE (Patient.email = @Email)">
        <SelectParameters>
            <asp:Parameter Name="Email" />
        </SelectParameters>
    </asp:SqlDataSource>
    

</div>