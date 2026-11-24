<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ModifySchedule.ascx.cs" Inherits="Hlangalezwe_Dental_Clinic.ModifySchedule" %>
<div style="float: left; height: 300px; width: 400px;border: 2px solid black; padding: 10px;border-radius:10px;text-align:left;">
     <asp:Label ID="Label1" runat="server" Text="No changes made"></asp:Label>
    <br>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TimeID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="347px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
             <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                     <asp:CheckBox ID="chkSelect" runat="server" />
                 </ItemTemplate>
             </asp:TemplateField>

           <asp:BoundField DataField="TimeID" HeaderText="TimeID" InsertVisible="False" ReadOnly="True" SortExpression="TimeID" />
           <asp:BoundField DataField="Timeslot" HeaderText="Timeslot" SortExpression="Timeslot" />
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
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" DeleteCommand="DELETE FROM TimeSlot WHERE (TimeID = @original_TimeID)" InsertCommand="INSERT INTO [TimeSlot] ([Timeslot]) VALUES (@Timeslot)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [TimeSlot]" UpdateCommand="UPDATE [TimeSlot] SET [Timeslot] = @Timeslot WHERE [TimeID] = @original_TimeID AND (([Timeslot] = @original_Timeslot) OR ([Timeslot] IS NULL AND @original_Timeslot IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_TimeID" Type="Int32" />
            <asp:Parameter Name="original_Timeslot" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Timeslot" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Timeslot" Type="String" />
            <asp:Parameter Name="original_TimeID" Type="Int32" />
            <asp:Parameter Name="original_Timeslot" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" DeleteCommand="DELETE FROM TimeSlot; DBCC CHECKIDENT ('TimeSlot', RESEED, 0);" InsertCommand="INSERT INTO [TimeSlot] ([Timeslot]) VALUES (@Timeslot)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [TimeSlot]" UpdateCommand="UPDATE [TimeSlot] SET [Timeslot] = @Timeslot WHERE [TimeID] = @original_TimeID AND (([Timeslot] = @original_Timeslot) OR ([Timeslot] IS NULL AND @original_Timeslot IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_TimeID" Type="Int32" />
            <asp:Parameter Name="original_Timeslot" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Timeslot" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Timeslot" Type="String" />
            <asp:Parameter Name="original_TimeID" Type="Int32" />
            <asp:Parameter Name="original_Timeslot" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Changes" Width="120px" />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />

</div>

