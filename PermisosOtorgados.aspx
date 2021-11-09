<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PermisosOtorgados.aspx.cs" Inherits="WebApplication4._PermisosOtorgados" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Permisos Otorgados</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="934px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="EmployeeFirstname" HeaderText="EmployeeFirstname" SortExpression="EmployeeFirstname" />
                <asp:BoundField DataField="EmployeeLastname" HeaderText="EmployeeLastname" SortExpression="EmployeeLastname" />
                <asp:BoundField DataField="PermissionType" HeaderText="PermissionType" SortExpression="PermissionType" />
                <asp:BoundField DataField="PermissionDate" HeaderText="PermissionDate" SortExpression="PermissionDate" />
            </Columns>
        </asp:GridView>
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
</p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
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
    <br />
</asp:Content>
