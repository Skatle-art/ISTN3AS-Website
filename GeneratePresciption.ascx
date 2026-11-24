<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GeneratePresciption.ascx.cs" Inherits="Hlangalezwe_Dental_Clinic.ManageTreatment" %>
 <div style="float: left; height: 490px; width: 1301px; border: 2px solid black; padding: 10px;border-radius:10px;text-align:left; margin-left:20px;">
 
     <asp:Label ID="Label4" runat="server" Text="1.Choose appointment according to patient"></asp:Label>
     <br><br>
     <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource4" DataTextField="Name" DataValueField="Name" AutoPostBack="True" Width="213px">
     </asp:DropDownList>
     <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" SelectCommand="SELECT [Name] FROM [Patient]"></asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" SelectCommand="SELECT Appointment.AppointmentID, Appointment.PatientID, Appointment.AppointmentDate, Appointment.AppointmentTime, Appointment.AppointmentStatus, Treatment.TreatmentID, Treatment.treatmentType, Patient.Name, Patient.Surname, Patient.Gender FROM Appointment INNER JOIN Patient ON Appointment.PatientID = Patient.PatientID INNER JOIN Treatment ON Appointment.AppointmentID = Treatment.AppointmentID WHERE (Patient.Name = @Name)">
         <SelectParameters>
             <asp:ControlParameter ControlID="DropDownList2" Name="Name" PropertyName="SelectedValue" />
         </SelectParameters>
     </asp:SqlDataSource>
     <br><br>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="274px" Width="1301px">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <Columns>
             <asp:CommandField ShowSelectButton="True" />
             <asp:BoundField DataField="AppointmentID" HeaderText="AppointmentID" InsertVisible="False" ReadOnly="True" SortExpression="AppointmentID" />
             <asp:BoundField DataField="PatientID" HeaderText="PatientID" SortExpression="PatientID" />
             <asp:BoundField DataField="AppointmentDate" HeaderText="AppointmentDate" SortExpression="AppointmentDate" DataFormatString="{0:d}" />
             <asp:BoundField DataField="AppointmentTime" HeaderText="AppointmentTime" SortExpression="AppointmentTime" />
             <asp:BoundField DataField="AppointmentStatus" HeaderText="AppointmentStatus" SortExpression="AppointmentStatus" />
             <asp:BoundField DataField="TreatmentID" HeaderText="TreatmentID" InsertVisible="False" ReadOnly="True" SortExpression="TreatmentID" />
             <asp:BoundField DataField="treatmentType" HeaderText="treatmentType" SortExpression="treatmentType" />
             <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
             <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
             <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
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
 
 </div>

<div style="float: left; height: 935px; width: 1301px; border: 2px solid black; padding: 10px;border-radius:10px;text-align:left;">
    <div style="float: left; height: 474px; width: 400px;border: 2px solid black; padding: 10px;border-radius:10px;text-align:left;">

    <asp:Label ID="Label1" runat="server" Text="2.Choose medicine to prescribe"></asp:Label>
    <br><br>
    <asp:DropDownList ID="DropDownList1" runat="server" Width="162px">
        <asp:ListItem>Paracetamol</asp:ListItem>
        <asp:ListItem>Morphine</asp:ListItem>
        <asp:ListItem>Panado</asp:ListItem>
        <asp:ListItem>Allergex</asp:ListItem>
    </asp:DropDownList>
    <br><br>
     <asp:Label ID="Label2" runat="server" Text="3.Write the dosage"></asp:Label>
    <br><br>
    <asp:TextBox ID="TextBox1" runat="server" Width="287px"></asp:TextBox>
    <br><br>
    <asp:Label ID="Label3" runat="server" Text="4.Write the Instructions"></asp:Label>
    <br><br>
    <asp:TextBox ID="TextBox2" runat="server" Width="287px"></asp:TextBox>
    <br><br>
    <asp:Label ID="Label5" runat="server" Text="4.Dentist ID"></asp:Label>
    <br><br>
    <asp:TextBox ID="TextBox3" runat="server" Width="287px"></asp:TextBox>
    <br><br>
       
        <asp:Button ID="Button1" runat="server" Height="40px" Text="Generate Prescription" OnClick="Button1_Click" />
       <br><br>
        <asp:Label ID="Label6" runat="server" Text="Status:"></asp:Label>
       
    </div>
     <br><br> <br><br>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="1286px">
     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
     <Columns>
         <asp:BoundField DataField="PrescriptionID" HeaderText="PrescriptionID" InsertVisible="False" ReadOnly="True" SortExpression="PrescriptionID" />
         <asp:BoundField DataField="Medication_Name" HeaderText="Medication_Name" SortExpression="Medication_Name" />
         <asp:BoundField DataField="Prescription_Date" HeaderText="Prescription_Date" SortExpression="Prescription_Date" DataFormatString="{0:d}" />
         <asp:BoundField DataField="Dosage" HeaderText="Dosage" SortExpression="Dosage" />
         <asp:BoundField DataField="Instructions" HeaderText="Instructions" SortExpression="Instructions" />
         <asp:BoundField DataField="dentistID" HeaderText="dentistID" SortExpression="dentistID" />
         <asp:BoundField DataField="TreatmentID" HeaderText="TreatmentID" SortExpression="TreatmentID" />
         <asp:BoundField DataField="treatmentType" HeaderText="treatmentType" SortExpression="treatmentType" />
         <asp:BoundField DataField="AppointmentID" HeaderText="AppointmentID" InsertVisible="False" ReadOnly="True" SortExpression="AppointmentID" />
         <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
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
 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" SelectCommand="SELECT Prescription1.PrescriptionID, Prescription1.Medication_Name, Prescription1.Prescription_Date, Prescription1.Dosage, Prescription1.Instructions, Prescription1.dentistID, Prescription1.TreatmentID, Treatment.treatmentType, Appointment.AppointmentID, Patient.Name FROM Prescription1 INNER JOIN Treatment ON Prescription1.TreatmentID = Treatment.TreatmentID INNER JOIN Appointment ON Treatment.AppointmentID = Appointment.AppointmentID INNER JOIN Patient ON Appointment.PatientID = Patient.PatientID WHERE (Patient.Name = @Name)">
     <SelectParameters>
         <asp:ControlParameter ControlID="DropDownList2" Name="Name" PropertyName="SelectedValue" />
     </SelectParameters>
 </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" DeleteCommand="DELETE FROM [Prescription1] WHERE [PrescriptionID] = @original_PrescriptionID AND (([Medication_Name] = @original_Medication_Name) OR ([Medication_Name] IS NULL AND @original_Medication_Name IS NULL)) AND (([Prescription_Date] = @original_Prescription_Date) OR ([Prescription_Date] IS NULL AND @original_Prescription_Date IS NULL)) AND (([Dosage] = @original_Dosage) OR ([Dosage] IS NULL AND @original_Dosage IS NULL)) AND (([Instructions] = @original_Instructions) OR ([Instructions] IS NULL AND @original_Instructions IS NULL)) AND (([dentistID] = @original_dentistID) OR ([dentistID] IS NULL AND @original_dentistID IS NULL)) AND (([TreatmentID] = @original_TreatmentID) OR ([TreatmentID] IS NULL AND @original_TreatmentID IS NULL))" InsertCommand="INSERT INTO [Prescription1] ([Medication_Name], [Prescription_Date], [Dosage], [Instructions], [dentistID], [TreatmentID]) VALUES (@Medication_Name, @Prescription_Date, @Dosage, @Instructions, @dentistID, @TreatmentID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Prescription1]" UpdateCommand="UPDATE [Prescription1] SET [Medication_Name] = @Medication_Name, [Prescription_Date] = @Prescription_Date, [Dosage] = @Dosage, [Instructions] = @Instructions, [dentistID] = @dentistID, [TreatmentID] = @TreatmentID WHERE [PrescriptionID] = @original_PrescriptionID AND (([Medication_Name] = @original_Medication_Name) OR ([Medication_Name] IS NULL AND @original_Medication_Name IS NULL)) AND (([Prescription_Date] = @original_Prescription_Date) OR ([Prescription_Date] IS NULL AND @original_Prescription_Date IS NULL)) AND (([Dosage] = @original_Dosage) OR ([Dosage] IS NULL AND @original_Dosage IS NULL)) AND (([Instructions] = @original_Instructions) OR ([Instructions] IS NULL AND @original_Instructions IS NULL)) AND (([dentistID] = @original_dentistID) OR ([dentistID] IS NULL AND @original_dentistID IS NULL)) AND (([TreatmentID] = @original_TreatmentID) OR ([TreatmentID] IS NULL AND @original_TreatmentID IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_PrescriptionID" Type="Int32" />
            <asp:Parameter Name="original_Medication_Name" Type="String" />
            <asp:Parameter DbType="Date" Name="original_Prescription_Date" />
            <asp:Parameter Name="original_Dosage" Type="String" />
            <asp:Parameter Name="original_Instructions" Type="String" />
            <asp:Parameter Name="original_dentistID" Type="Int32" />
            <asp:Parameter Name="original_TreatmentID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Medication_Name" PropertyName="SelectedValue" Type="String" />
            <asp:Parameter DbType="Date" Name="Prescription_Date" />
            <asp:ControlParameter ControlID="TextBox1" Name="Dosage" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="Instructions" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="dentistID" PropertyName="Text" Type="Int32" />
            <asp:Parameter Name="TreatmentID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Medication_Name" Type="String" />
            <asp:Parameter DbType="Date" Name="Prescription_Date" />
            <asp:Parameter Name="Dosage" Type="String" />
            <asp:Parameter Name="Instructions" Type="String" />
            <asp:Parameter Name="dentistID" Type="Int32" />
            <asp:Parameter Name="TreatmentID" Type="Int32" />
            <asp:Parameter Name="original_PrescriptionID" Type="Int32" />
            <asp:Parameter Name="original_Medication_Name" Type="String" />
            <asp:Parameter DbType="Date" Name="original_Prescription_Date" />
            <asp:Parameter Name="original_Dosage" Type="String" />
            <asp:Parameter Name="original_Instructions" Type="String" />
            <asp:Parameter Name="original_dentistID" Type="Int32" />
            <asp:Parameter Name="original_TreatmentID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</div>
 