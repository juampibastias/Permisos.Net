<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SolicitarPermiso.aspx.cs" Inherits="WebApplication4._SolicitarPermiso" %>

   

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2> Complete el formulario</h2>
   
    <p> &nbsp;</p>

    <p>

        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="448px" CellPadding="4" DefaultMode="Insert" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="EmployeeFirstname" HeaderText="EmployeeFirstname" SortExpression="EmployeeFirstname" />
                <asp:BoundField DataField="EmployeeLastname" HeaderText="EmployeeLastname" SortExpression="EmployeeLastname" />
                <asp:BoundField DataField="PermissionType" HeaderText="PermissionType" SortExpression="PermissionType" />
                <asp:BoundField DataField="PermissionDate" HeaderText="PermissionDate" SortExpression="PermissionDate" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:permisosString %>" DeleteCommand="DELETE FROM [Permissions] WHERE [Id] = @original_Id AND [EmployeeFirstname] = @original_EmployeeFirstname AND [EmployeeLastname] = @original_EmployeeLastname AND [PermissionType] = @original_PermissionType AND [PermissionDate] = @original_PermissionDate" InsertCommand="INSERT INTO [Permissions] ([EmployeeFirstname], [EmployeeLastname], [PermissionType], [PermissionDate]) VALUES (@EmployeeFirstname, @EmployeeLastname, @PermissionType, @PermissionDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Permissions]" UpdateCommand="UPDATE [Permissions] SET [EmployeeFirstname] = @EmployeeFirstname, [EmployeeLastname] = @EmployeeLastname, [PermissionType] = @PermissionType, [PermissionDate] = @PermissionDate WHERE [Id] = @original_Id AND [EmployeeFirstname] = @original_EmployeeFirstname AND [EmployeeLastname] = @original_EmployeeLastname AND [PermissionType] = @original_PermissionType AND [PermissionDate] = @original_PermissionDate">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_EmployeeFirstname" Type="String" />
                <asp:Parameter Name="original_EmployeeLastname" Type="String" />
                <asp:Parameter Name="original_PermissionType" Type="Int32" />
                <asp:Parameter Name="original_PermissionDate" Type="DateTime" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmployeeFirstname" Type="String" />
                <asp:Parameter Name="EmployeeLastname" Type="String" />
                <asp:Parameter Name="PermissionType" Type="Int32" />
                <asp:Parameter Name="PermissionDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmployeeFirstname" Type="String" />
                <asp:Parameter Name="EmployeeLastname" Type="String" />
                <asp:Parameter Name="PermissionType" Type="Int32" />
                <asp:Parameter Name="PermissionDate" Type="DateTime" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_EmployeeFirstname" Type="String" />
                <asp:Parameter Name="original_EmployeeLastname" Type="String" />
                <asp:Parameter Name="original_PermissionType" Type="Int32" />
                <asp:Parameter Name="original_PermissionDate" Type="DateTime" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <p>

        &nbsp;</p>
    <p>

        &nbsp;</p>
    <p>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="251px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:permisosString %>" DeleteCommand="DELETE FROM [PermissionType] WHERE [Id] = @original_Id AND [Description] = @original_Description" InsertCommand="INSERT INTO [PermissionType] ([Description]) VALUES (@Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PermissionType]" UpdateCommand="UPDATE [PermissionType] SET [Description] = @Description WHERE [Id] = @original_Id AND [Description] = @original_Description">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Description" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Description" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>

    </asp:Content>
