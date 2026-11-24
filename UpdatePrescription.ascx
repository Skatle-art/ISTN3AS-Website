<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UpdatePrescription.ascx.cs" Inherits="Hlangalezwe_Dental_Clinic.UpdatePrescription" %>
  <div style=" height: 987px; width: 90%; border: 2px solid black; padding: 10px;border-radius:10px;text-align:left;">
      <asp:Label ID="Label1" runat="server" Text="Search Patient By Name:"></asp:Label>
      <br><br>
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
      <br><br>

     <div style="clear: both;">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="315px" Width="1029px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <Columns>
              <asp:CommandField ShowEditButton="True" />
              <asp:BoundField DataField="PrescriptionID" HeaderText="PrescriptionID" InsertVisible="False" ReadOnly="True" SortExpression="PrescriptionID" />
              <asp:BoundField DataField="Medication_Name" HeaderText="Medication_Name" SortExpression="Medication_Name" />
              <asp:BoundField DataField="Dosage" HeaderText="Dosage" SortExpression="Dosage" />
              <asp:BoundField DataField="Instructions" HeaderText="Instructions" SortExpression="Instructions" />
              <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
              <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
              <asp:BoundField DataField="PatientID" HeaderText="PatientID" InsertVisible="False" ReadOnly="True" SortExpression="PatientID" />
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
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" DeleteCommand="DELETE FROM [Prescription1] WHERE [PrescriptionID] = @original_PrescriptionID AND (([Medication_Name] = @original_Medication_Name) OR ([Medication_Name] IS NULL AND @original_Medication_Name IS NULL)) AND (([Dosage] = @original_Dosage) OR ([Dosage] IS NULL AND @original_Dosage IS NULL)) AND (([Instructions] = @original_Instructions) OR ([Instructions] IS NULL AND @original_Instructions IS NULL))" InsertCommand="INSERT INTO [Prescription1] ([Medication_Name], [Dosage], [Instructions]) VALUES (@Medication_Name, @Dosage, @Instructions)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Prescription1.PrescriptionID, Prescription1.Medication_Name, Prescription1.Dosage, Prescription1.Instructions, Patient.Name, Patient.Surname, Patient.PatientID FROM Prescription1 INNER JOIN Treatment ON Prescription1.TreatmentID = Treatment.TreatmentID INNER JOIN Appointment ON Treatment.AppointmentID = Appointment.AppointmentID INNER JOIN Patient ON Appointment.PatientID = Patient.PatientID WHERE (Patient.Name LIKE '%' + @name + '%')" UpdateCommand="UPDATE [Prescription1] SET [Medication_Name] = @Medication_Name, [Dosage] = @Dosage, [Instructions] = @Instructions WHERE [PrescriptionID] = @original_PrescriptionID AND (([Medication_Name] = @original_Medication_Name) OR ([Medication_Name] IS NULL AND @original_Medication_Name IS NULL)) AND (([Dosage] = @original_Dosage) OR ([Dosage] IS NULL AND @original_Dosage IS NULL)) AND (([Instructions] = @original_Instructions) OR ([Instructions] IS NULL AND @original_Instructions IS NULL))">
          <DeleteParameters>
              <asp:Parameter Name="original_PrescriptionID" Type="Int32" />
              <asp:Parameter Name="original_Medication_Name" Type="String" />
              <asp:Parameter Name="original_Dosage" Type="String" />
              <asp:Parameter Name="original_Instructions" Type="String" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="Medication_Name" Type="String" />
              <asp:Parameter Name="Dosage" Type="String" />
              <asp:Parameter Name="Instructions" Type="String" />
          </InsertParameters>
          <SelectParameters>
              <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" />
          </SelectParameters>
          <UpdateParameters>
              <asp:Parameter Name="Medication_Name" Type="String" />
              <asp:Parameter Name="Dosage" Type="String" />
              <asp:Parameter Name="Instructions" Type="String" />
              <asp:Parameter Name="original_PrescriptionID" Type="Int32" />
              <asp:Parameter Name="original_Medication_Name" Type="String" />
              <asp:Parameter Name="original_Dosage" Type="String" />
              <asp:Parameter Name="original_Instructions" Type="String" />
          </UpdateParameters>
      </asp:SqlDataSource>
     </div>

  </div>