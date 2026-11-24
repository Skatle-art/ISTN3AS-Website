 <%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UpdateProfile.ascx.cs" Inherits="Hlangalezwe_Dental_Clinic.UpdateProfile" %>

     <asp:Button ID="Button1" runat="server" Height="41px" OnClick="Button1_Click" Text="Show Personal Details" Width="244px" BackColor="#0099FF" />
<br><br>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PatientID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1181px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowEditButton="True"></asp:CommandField>
        <asp:BoundField DataField="PatientID" HeaderText="PatientID" InsertVisible="False" ReadOnly="True" SortExpression="PatientID"></asp:BoundField>
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname"></asp:BoundField>
        <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo"></asp:BoundField>
        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status"></asp:BoundField>
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
        <asp:BoundField DataField="Suburb" HeaderText="Suburb" SortExpression="Suburb"></asp:BoundField>
        <asp:BoundField DataField="CityCode" HeaderText="CityCode" SortExpression="CityCode"></asp:BoundField>
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" DeleteCommand="DELETE FROM [Patient] WHERE [PatientID] = @original_PatientID AND [Name] = @original_Name AND [Surname] = @original_Surname AND [PhoneNo] = @original_PhoneNo AND [Status] = @original_Status AND [City] = @original_City AND [Suburb] = @original_Suburb AND [CityCode] = @original_CityCode" InsertCommand="INSERT INTO [Patient] ([Name], [Surname], [PhoneNo], [Status], [City], [Suburb], [CityCode]) VALUES (@Name, @Surname, @PhoneNo, @Status, @City, @Suburb, @CityCode)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT PatientID, Name, Surname, PhoneNo, Status, City, Suburb, CityCode FROM Patient WHERE (email = @Email)" UpdateCommand="UPDATE [Patient] SET [Name] = @Name, [Surname] = @Surname, [PhoneNo] = @PhoneNo, [Status] = @Status, [City] = @City, [Suburb] = @Suburb, [CityCode] = @CityCode WHERE [PatientID] = @original_PatientID AND [Name] = @original_Name AND [Surname] = @original_Surname AND [PhoneNo] = @original_PhoneNo AND [Status] = @original_Status AND [City] = @original_City AND [Suburb] = @original_Suburb AND [CityCode] = @original_CityCode">
    <DeleteParameters>
        <asp:Parameter Name="original_PatientID" Type="Int32" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter Name="original_Surname" Type="String" />
        <asp:Parameter Name="original_PhoneNo" Type="String" />
        <asp:Parameter Name="original_Status" Type="String" />
        <asp:Parameter Name="original_City" Type="String" />
        <asp:Parameter Name="original_Suburb" Type="String" />
        <asp:Parameter Name="original_CityCode" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Surname" Type="String" />
        <asp:Parameter Name="PhoneNo" Type="String" />
        <asp:Parameter Name="Status" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Suburb" Type="String" />
        <asp:Parameter Name="CityCode" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:Parameter Name="Email" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Surname" Type="String" />
        <asp:Parameter Name="PhoneNo" Type="String" />
        <asp:Parameter Name="Status" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Suburb" Type="String" />
        <asp:Parameter Name="CityCode" Type="String" />
        <asp:Parameter Name="original_PatientID" Type="Int32" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter Name="original_Surname" Type="String" />
        <asp:Parameter Name="original_PhoneNo" Type="String" />
        <asp:Parameter Name="original_Status" Type="String" />
        <asp:Parameter Name="original_City" Type="String" />
        <asp:Parameter Name="original_Suburb" Type="String" />
        <asp:Parameter Name="original_CityCode" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>


