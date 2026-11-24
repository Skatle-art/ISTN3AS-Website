<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditAppointment.ascx.cs" Inherits="Hlangalezwe_Dental_Clinic.EditAppointment" %>
<div style="float: left; height: 890px; width: 1380px; border: 2px solid black; padding: 10px;border-radius:10px;text-align:left;">
    <asp:Label Text="Choose appointment date" runat="server" />
    <br><br>

    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    
    <br><br>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="AppointmentID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1242px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="AppointmentID" HeaderText="AppointmentID" InsertVisible="False" ReadOnly="True" SortExpression="AppointmentID" />
            <asp:BoundField DataField="PatientID" HeaderText="PatientID" SortExpression="PatientID" />
            <asp:BoundField DataField="AppointmentDate" DataFormatString="{0:d}" HeaderText="AppointmentDate" SortExpression="AppointmentDate" />
            <asp:BoundField DataField="AppointmentTime" HeaderText="AppointmentTime" SortExpression="AppointmentTime" />
            <asp:BoundField DataField="AppointmentStatus" HeaderText="AppointmentStatus" SortExpression="AppointmentStatus" />
            <asp:BoundField DataField="VisitReason" HeaderText="VisitReason" SortExpression="VisitReason" />
            <asp:BoundField DataField="BookingDate" DataFormatString="{0:d}" HeaderText="BookingDate" SortExpression="BookingDate" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" SelectCommand="SELECT * FROM [Appointment] WHERE ([AppointmentDate] = @AppointmentDate)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Appointment] WHERE [AppointmentID] = @original_AppointmentID AND (([PatientID] = @original_PatientID) OR ([PatientID] IS NULL AND @original_PatientID IS NULL)) AND (([AppointmentDate] = @original_AppointmentDate) OR ([AppointmentDate] IS NULL AND @original_AppointmentDate IS NULL)) AND (([AppointmentTime] = @original_AppointmentTime) OR ([AppointmentTime] IS NULL AND @original_AppointmentTime IS NULL)) AND (([AppointmentStatus] = @original_AppointmentStatus) OR ([AppointmentStatus] IS NULL AND @original_AppointmentStatus IS NULL)) AND (([VisitReason] = @original_VisitReason) OR ([VisitReason] IS NULL AND @original_VisitReason IS NULL)) AND (([BookingDate] = @original_BookingDate) OR ([BookingDate] IS NULL AND @original_BookingDate IS NULL))" InsertCommand="INSERT INTO [Appointment] ([PatientID], [AppointmentDate], [AppointmentTime], [AppointmentStatus], [VisitReason], [BookingDate]) VALUES (@PatientID, @AppointmentDate, @AppointmentTime, @AppointmentStatus, @VisitReason, @BookingDate)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Appointment] SET [PatientID] = @PatientID, [AppointmentDate] = @AppointmentDate, [AppointmentTime] = @AppointmentTime, [AppointmentStatus] = @AppointmentStatus, [VisitReason] = @VisitReason, [BookingDate] = @BookingDate WHERE [AppointmentID] = @original_AppointmentID AND (([PatientID] = @original_PatientID) OR ([PatientID] IS NULL AND @original_PatientID IS NULL)) AND (([AppointmentDate] = @original_AppointmentDate) OR ([AppointmentDate] IS NULL AND @original_AppointmentDate IS NULL)) AND (([AppointmentTime] = @original_AppointmentTime) OR ([AppointmentTime] IS NULL AND @original_AppointmentTime IS NULL)) AND (([AppointmentStatus] = @original_AppointmentStatus) OR ([AppointmentStatus] IS NULL AND @original_AppointmentStatus IS NULL)) AND (([VisitReason] = @original_VisitReason) OR ([VisitReason] IS NULL AND @original_VisitReason IS NULL)) AND (([BookingDate] = @original_BookingDate) OR ([BookingDate] IS NULL AND @original_BookingDate IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_AppointmentID" Type="Int32" />
            <asp:Parameter Name="original_PatientID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="original_AppointmentDate" />
            <asp:Parameter Name="original_AppointmentTime" Type="String" />
            <asp:Parameter Name="original_AppointmentStatus" Type="String" />
            <asp:Parameter Name="original_VisitReason" Type="String" />
            <asp:Parameter DbType="Date" Name="original_BookingDate" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PatientID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="AppointmentDate" />
            <asp:Parameter Name="AppointmentTime" Type="String" />
            <asp:Parameter Name="AppointmentStatus" Type="String" />
            <asp:Parameter Name="VisitReason" Type="String" />
            <asp:Parameter DbType="Date" Name="BookingDate" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="AppointmentDate" PropertyName="SelectedDate" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="PatientID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="AppointmentDate" />
            <asp:Parameter Name="AppointmentTime" Type="String" />
            <asp:Parameter Name="AppointmentStatus" Type="String" />
            <asp:Parameter Name="VisitReason" Type="String" />
            <asp:Parameter DbType="Date" Name="BookingDate" />
            <asp:Parameter Name="original_AppointmentID" Type="Int32" />
            <asp:Parameter Name="original_PatientID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="original_AppointmentDate" />
            <asp:Parameter Name="original_AppointmentTime" Type="String" />
            <asp:Parameter Name="original_AppointmentStatus" Type="String" />
            <asp:Parameter Name="original_VisitReason" Type="String" />
            <asp:Parameter DbType="Date" Name="original_BookingDate" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br><br>
    <asp:Label Text="Update treatment details if required" runat="server" ID="Label1" />
    <br><br>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TreatmentID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="1227px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="TreatmentID" HeaderText="TreatmentID" InsertVisible="False" ReadOnly="True" SortExpression="TreatmentID" />
            <asp:BoundField DataField="treatmentType" HeaderText="treatmentType" SortExpression="treatmentType" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="treatmentCost" HeaderText="treatmentCost" SortExpression="treatmentCost" />
            <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
            <asp:BoundField DataField="dentistID" HeaderText="dentistID" SortExpression="dentistID" />
            <asp:BoundField DataField="AppointmentID" HeaderText="AppointmentID" SortExpression="AppointmentID" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" SelectCommand="SELECT * FROM [Treatment] WHERE ([AppointmentID] = @AppointmentID)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Treatment] WHERE [TreatmentID] = @original_TreatmentID AND (([treatmentType] = @original_treatmentType) OR ([treatmentType] IS NULL AND @original_treatmentType IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([treatmentCost] = @original_treatmentCost) OR ([treatmentCost] IS NULL AND @original_treatmentCost IS NULL)) AND (([Duration] = @original_Duration) OR ([Duration] IS NULL AND @original_Duration IS NULL)) AND (([dentistID] = @original_dentistID) OR ([dentistID] IS NULL AND @original_dentistID IS NULL)) AND (([AppointmentID] = @original_AppointmentID) OR ([AppointmentID] IS NULL AND @original_AppointmentID IS NULL))" InsertCommand="INSERT INTO [Treatment] ([treatmentType], [Description], [treatmentCost], [Duration], [dentistID], [AppointmentID]) VALUES (@treatmentType, @Description, @treatmentCost, @Duration, @dentistID, @AppointmentID)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Treatment] SET [treatmentType] = @treatmentType, [Description] = @Description, [treatmentCost] = @treatmentCost, [Duration] = @Duration, [dentistID] = @dentistID, [AppointmentID] = @AppointmentID WHERE [TreatmentID] = @original_TreatmentID AND (([treatmentType] = @original_treatmentType) OR ([treatmentType] IS NULL AND @original_treatmentType IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([treatmentCost] = @original_treatmentCost) OR ([treatmentCost] IS NULL AND @original_treatmentCost IS NULL)) AND (([Duration] = @original_Duration) OR ([Duration] IS NULL AND @original_Duration IS NULL)) AND (([dentistID] = @original_dentistID) OR ([dentistID] IS NULL AND @original_dentistID IS NULL)) AND (([AppointmentID] = @original_AppointmentID) OR ([AppointmentID] IS NULL AND @original_AppointmentID IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_TreatmentID" Type="Int32" />
            <asp:Parameter Name="original_treatmentType" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_treatmentCost" Type="Decimal" />
            <asp:Parameter Name="original_Duration" Type="String" />
            <asp:Parameter Name="original_dentistID" Type="Int32" />
            <asp:Parameter Name="original_AppointmentID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="treatmentType" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="treatmentCost" Type="Decimal" />
            <asp:Parameter Name="Duration" Type="String" />
            <asp:Parameter Name="dentistID" Type="Int32" />
            <asp:Parameter Name="AppointmentID" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="AppointmentID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="treatmentType" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="treatmentCost" Type="Decimal" />
            <asp:Parameter Name="Duration" Type="String" />
            <asp:Parameter Name="dentistID" Type="Int32" />
            <asp:Parameter Name="AppointmentID" Type="Int32" />
            <asp:Parameter Name="original_TreatmentID" Type="Int32" />
            <asp:Parameter Name="original_treatmentType" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_treatmentCost" Type="Decimal" />
            <asp:Parameter Name="original_Duration" Type="String" />
            <asp:Parameter Name="original_dentistID" Type="Int32" />
            <asp:Parameter Name="original_AppointmentID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    

</div>