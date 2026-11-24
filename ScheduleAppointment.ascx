<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ScheduleAppointment.ascx.cs" Inherits="Hlangalezwe_Dental_Clinic.ScheduleAppointment" %>

<p>&nbsp;</p>

<asp:ScriptManager ID="ScriptManager1" runat="server" />

<asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="true">
    <ContentTemplate>
        <div style="float: left; height: 300px; width: 400px;border: 2px solid black; padding: 10px;border-radius:10px;text-align:left;">
            <asp:Label ID="Label1" runat="server" Text="1.Choose appoointment date and time"></asp:Label>
            <br>
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Width="391px"></asp:Calendar>
            <div style="width: 148px">
           
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Timeslot" DataValueField="TimeID" Width="131px">
                </asp:DropDownList>
           
            </div>
        </div>
        <div style="float: left; height: 300px; width: 810px; border: 2px solid black; padding: 10px;border-radius:10px;text-align:left; max-height:400px; overflow-y:auto;">
            
            <asp:Label ID="Label3" runat="server" Text="2.Choose patient to book appointment for"></asp:Label>
            <br>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" SelectCommand="SELECT PatientID, Name, Surname, email, DateOfBirth, Gender, City FROM Patient WHERE (email = @Email)">
                <SelectParameters>
                    <asp:Parameter Name="Email" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="PatientID" DataSourceID="SqlDataSource4" Width="814px" CellPadding="4" ForeColor="#333333" GridLines="None" Height="77px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="PatientID" HeaderText="PatientID" InsertVisible="False" ReadOnly="True" SortExpression="PatientID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
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
        
        <div style="float: left; height: 607px; width: 1285px; border: 2px solid black; padding: 10px;border-radius:10px;text-align:left;max-height:400px; overflow-y:auto;">
           
                <asp:Label ID="Label2" runat="server" Text="Available appointments on selected date"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="AppointmentID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="381px" Width="948px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
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
            
         
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>"
                SelectCommand="SELECT * FROM [Appointment] WHERE ([AppointmentDate] = @AppointmentDate)"
                OldValuesParameterFormatString="original_{0}">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="AppointmentDate" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
           
        </div>
        <div style="clear:both;"></div>
        <div style="height:607px; width:1348px; border: 2px solid black; padding: 10px;border-radius:10px;text-align:left;">
             
           
            <asp:Label ID="Label5" runat="server" Text="3.Pick Visit Reason"></asp:Label>
            <br><br>
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem>Treatment</asp:ListItem>
                <asp:ListItem>Checkup</asp:ListItem>
            </asp:DropDownList>
            <br><br>
            <asp:Label ID="Label4" runat="server" Text="4.Choose treatment for the apppointment"></asp:Label>
            <br><br>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" SelectCommand="SELECT * FROM [Treatment]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Treatment] WHERE [TreatmentID] = @original_TreatmentID AND (([treatmentType] = @original_treatmentType) OR ([treatmentType] IS NULL AND @original_treatmentType IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([treatmentCost] = @original_treatmentCost) OR ([treatmentCost] IS NULL AND @original_treatmentCost IS NULL)) AND (([Duration] = @original_Duration) OR ([Duration] IS NULL AND @original_Duration IS NULL)) AND (([dentistID] = @original_dentistID) OR ([dentistID] IS NULL AND @original_dentistID IS NULL)) AND (([AppointmentID] = @original_AppointmentID) OR ([AppointmentID] IS NULL AND @original_AppointmentID IS NULL))" InsertCommand="INSERT INTO Treatment(treatmentType, Description, treatmentCost, Duration, dentistID, AppointmentID) VALUES (@treatmentType, @Description, @treatmentCost, @Duration, @dentistID, @AppointmentID)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Treatment] SET [treatmentType] = @treatmentType, [Description] = @Description, [treatmentCost] = @treatmentCost, [Duration] = @Duration, [dentistID] = @dentistID, [AppointmentID] = @AppointmentID WHERE [TreatmentID] = @original_TreatmentID AND (([treatmentType] = @original_treatmentType) OR ([treatmentType] IS NULL AND @original_treatmentType IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([treatmentCost] = @original_treatmentCost) OR ([treatmentCost] IS NULL AND @original_treatmentCost IS NULL)) AND (([Duration] = @original_Duration) OR ([Duration] IS NULL AND @original_Duration IS NULL)) AND (([dentistID] = @original_dentistID) OR ([dentistID] IS NULL AND @original_dentistID IS NULL)) AND (([AppointmentID] = @original_AppointmentID) OR ([AppointmentID] IS NULL AND @original_AppointmentID IS NULL))">
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

           
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="T_LookupID" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" Width="684px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="T_LookupID" HeaderText="T_LookupID" InsertVisible="False" ReadOnly="True" SortExpression="T_LookupID" />
                    <asp:BoundField DataField="Service" HeaderText="Service" SortExpression="Service" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
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
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" SelectCommand="SELECT * FROM [Treatment_Lookup]"></asp:SqlDataSource>

           
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" DeleteCommand="DELETE FROM [Appointment] WHERE [AppointmentID] = @original_AppointmentID AND (([PatientID] = @original_PatientID) OR ([PatientID] IS NULL AND @original_PatientID IS NULL)) AND (([AppointmentDate] = @original_AppointmentDate) OR ([AppointmentDate] IS NULL AND @original_AppointmentDate IS NULL)) AND (([AppointmentTime] = @original_AppointmentTime) OR ([AppointmentTime] IS NULL AND @original_AppointmentTime IS NULL)) AND (([AppointmentStatus] = @original_AppointmentStatus) OR ([AppointmentStatus] IS NULL AND @original_AppointmentStatus IS NULL)) AND (([VisitReason] = @original_VisitReason) OR ([VisitReason] IS NULL AND @original_VisitReason IS NULL)) AND (([BookingDate] = @original_BookingDate) OR ([BookingDate] IS NULL AND @original_BookingDate IS NULL))" InsertCommand="INSERT INTO [Appointment] ([PatientID], [AppointmentDate], [AppointmentTime], [AppointmentStatus], [VisitReason], [BookingDate]) VALUES (@PatientID, @AppointmentDate, @AppointmentTime, @AppointmentStatus, @VisitReason, @BookingDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Appointment]" UpdateCommand="UPDATE [Appointment] SET [PatientID] = @PatientID, [AppointmentDate] = @AppointmentDate, [AppointmentTime] = @AppointmentTime, [AppointmentStatus] = @AppointmentStatus, [VisitReason] = @VisitReason, [BookingDate] = @BookingDate WHERE [AppointmentID] = @original_AppointmentID AND (([PatientID] = @original_PatientID) OR ([PatientID] IS NULL AND @original_PatientID IS NULL)) AND (([AppointmentDate] = @original_AppointmentDate) OR ([AppointmentDate] IS NULL AND @original_AppointmentDate IS NULL)) AND (([AppointmentTime] = @original_AppointmentTime) OR ([AppointmentTime] IS NULL AND @original_AppointmentTime IS NULL)) AND (([AppointmentStatus] = @original_AppointmentStatus) OR ([AppointmentStatus] IS NULL AND @original_AppointmentStatus IS NULL)) AND (([VisitReason] = @original_VisitReason) OR ([VisitReason] IS NULL AND @original_VisitReason IS NULL)) AND (([BookingDate] = @original_BookingDate) OR ([BookingDate] IS NULL AND @original_BookingDate IS NULL))">
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
            <br>
            <asp:Button ID="Button2" runat="server" Height="44px" Text="Book the appointment" Width="204px" OnClick="Button2_Click" />

            <br>
            <asp:Label ID="Label12" runat="server" Text="Status:"></asp:Label>


        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:WstGrp18ConnectionString %>" 
            SelectCommand="SELECT * FROM [TimeSlot]">
        </asp:SqlDataSource>

    </ContentTemplate>
     <Triggers>
     <asp:AsyncPostBackTrigger ControlID="Calendar1" EventName="SelectionChanged" />
 </Triggers>
</asp:UpdatePanel>
