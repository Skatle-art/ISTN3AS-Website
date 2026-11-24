<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GenerateMedicalRecord.ascx.cs" Inherits="Hlangalezwe_Dental_Clinic.GenerateMedicalRecord" %>
<div style=" height: 1032px; width: 90%; border: 2px solid black; padding: 10px;border-radius:10px;text-align:left;">
<asp:Label ID="Label1" runat="server" Text="1.Search patient by name and select:"></asp:Label>
<br>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br><br>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PatientID" DataSourceID="SqlDataSource1" Width="1220px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="PatientID" HeaderText="PatientID" InsertVisible="False" ReadOnly="True" SortExpression="PatientID" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" SelectCommand="SELECT PatientID, Name, PhoneNo, Surname, email, Gender FROM Patient WHERE (Name LIKE '%' + @Name + '%')">
    <SelectParameters>
        <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" DeleteCommand="DELETE FROM [MedicalRecord] WHERE [MedicalID] = @original_MedicalID AND [PatientID] = @original_PatientID AND (([Notes] = @original_Notes) OR ([Notes] IS NULL AND @original_Notes IS NULL)) AND (([MedicalHistory] = @original_MedicalHistory) OR ([MedicalHistory] IS NULL AND @original_MedicalHistory IS NULL)) AND (([Allergies] = @original_Allergies) OR ([Allergies] IS NULL AND @original_Allergies IS NULL)) AND (([lastUpdated] = @original_lastUpdated) OR ([lastUpdated] IS NULL AND @original_lastUpdated IS NULL))" InsertCommand="INSERT INTO MedicalRecord(PatientID, Notes, MedicalHistory, Allergies, lastUpdated) VALUES (@PatientID, @Notes, @MedicalHistory, @Allergies, @lastUpdated)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [MedicalRecord]" UpdateCommand="UPDATE [MedicalRecord] SET [PatientID] = @PatientID, [Notes] = @Notes, [MedicalHistory] = @MedicalHistory, [Allergies] = @Allergies, [lastUpdated] = @lastUpdated WHERE [MedicalID] = @original_MedicalID AND [PatientID] = @original_PatientID AND (([Notes] = @original_Notes) OR ([Notes] IS NULL AND @original_Notes IS NULL)) AND (([MedicalHistory] = @original_MedicalHistory) OR ([MedicalHistory] IS NULL AND @original_MedicalHistory IS NULL)) AND (([Allergies] = @original_Allergies) OR ([Allergies] IS NULL AND @original_Allergies IS NULL)) AND (([lastUpdated] = @original_lastUpdated) OR ([lastUpdated] IS NULL AND @original_lastUpdated IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_MedicalID" Type="Int32" />
            <asp:Parameter Name="original_PatientID" Type="Int32" />
            <asp:Parameter Name="original_Notes" Type="String" />
            <asp:Parameter Name="original_MedicalHistory" Type="String" />
            <asp:Parameter Name="original_Allergies" Type="String" />
            <asp:Parameter DbType="Date" Name="original_lastUpdated" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PatientID" Type="Int32" />
            <asp:ControlParameter ControlID="TextBox2" Name="Notes" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="MedicalHistory" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox4" Name="Allergies" PropertyName="Text" Type="String" />
            <asp:Parameter DbType="Date" Name="lastUpdated" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PatientID" Type="Int32" />
            <asp:Parameter Name="Notes" Type="String" />
            <asp:Parameter Name="MedicalHistory" Type="String" />
            <asp:Parameter Name="Allergies" Type="String" />
            <asp:Parameter DbType="Date" Name="lastUpdated" />
            <asp:Parameter Name="original_MedicalID" Type="Int32" />
            <asp:Parameter Name="original_PatientID" Type="Int32" />
            <asp:Parameter Name="original_Notes" Type="String" />
            <asp:Parameter Name="original_MedicalHistory" Type="String" />
            <asp:Parameter Name="original_Allergies" Type="String" />
            <asp:Parameter DbType="Date" Name="original_lastUpdated" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br><br>
   <div style=" height: 625px; width: 1076px; border: 2px solid black; padding: 10px;border-radius:10px;text-align:left;">
        <br>
        <asp:Label ID="Label2" runat="server" Text="Notes:"></asp:Label>
        <br>
        <asp:TextBox ID="TextBox2" runat="server" Height="125px" Width="171px"></asp:TextBox>
        <br><br>
        <asp:Label ID="Label3" runat="server" Text="Medical History:"></asp:Label>
        <br>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br>
        
        <br>
        <asp:Label ID="Label4" runat="server" Text=" Search Allergies:"></asp:Label>
        <br>
        <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
        <br>
        
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Allergy_name" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="370px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Allergy_name" HeaderText="Allergy_name" ReadOnly="True" SortExpression="Allergy_name" />
                <asp:BoundField DataField="Count" HeaderText="Count" SortExpression="Count" />
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
        <br>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
    ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>"
    SelectCommand="SELECT * FROM Allergies"
    InsertCommand="
        MERGE Allergies AS target
        USING (SELECT @Allergy_name AS Allergy_name) AS source
        ON target.Allergy_name = source.Allergy_name
        WHEN MATCHED THEN
            UPDATE SET [Count] = [Count] + 1
        WHEN NOT MATCHED THEN
            INSERT (Allergy_name, [Count]) VALUES (@Allergy_name, 1);">
    <InsertParameters>
        <asp:Parameter Name="Allergy_name" Type="String" />
    </InsertParameters>
</asp:SqlDataSource>
            
       
        <asp:Label ID="Label5" runat="server" Text="Status:"></asp:Label>
<br><br>
<asp:Button ID="Button1" runat="server" Text="Add Allergy" OnClick="Button1_Click" UseSubmitBehavior="false"/>
<asp:Button ID="Button2" runat="server" Text="S" Width="27px" />
         </div>
    <br>
     <asp:Button ID="Button3" runat="server" Text="Add Record" OnClick="Button3_Click" />
</div>


