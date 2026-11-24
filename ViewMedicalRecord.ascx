<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewMedicalRecord.ascx.cs" Inherits="Hlangalezwe_Dental_Clinic.ViewMedicalRecord" %>
<div style="height:564px; width:90%; border:2px solid black; padding:10px; border-radius:10px;">
<asp:Label ID="Label1" runat="server" Text="Search patient by name:"></asp:Label>
<br>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br><br>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MedicalID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="165px" Width="1032px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="MedicalID" HeaderText="MedicalID" InsertVisible="False" ReadOnly="True" SortExpression="MedicalID" />
        <asp:BoundField DataField="PatientID" HeaderText="PatientID" SortExpression="PatientID" />
        <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
        <asp:BoundField DataField="MedicalHistory" HeaderText="MedicalHistory" SortExpression="MedicalHistory" />
        <asp:BoundField DataField="Allergies" HeaderText="Allergies" SortExpression="Allergies" />
        <asp:BoundField DataField="lastUpdated" DataFormatString="{0:d}" HeaderText="lastUpdated" SortExpression="lastUpdated" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
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

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" SelectCommand="SELECT MedicalRecord.MedicalID, MedicalRecord.PatientID, MedicalRecord.Notes, MedicalRecord.MedicalHistory, MedicalRecord.Allergies, MedicalRecord.lastUpdated, Patient.Name, Patient.Surname FROM MedicalRecord INNER JOIN Patient ON MedicalRecord.PatientID = Patient.PatientID WHERE (Patient.Name LIKE '%' + @name + '%')">
    <SelectParameters>
        <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" />
    </SelectParameters>
</asp:SqlDataSource>
    </div>



