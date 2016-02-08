<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource1" DataTextField="AccountIdName" DataValueField="OrganisationID" AppendDataBoundItems="True">
            <asp:ListItem Value="">(Select Customer)</asp:ListItem>
        </asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="SupportDataClassesDataContext" EntityTypeName="" TableName="OrganisationDetails" Where="Inactive != @Inactive">
            <WhereParameters>
                <asp:Parameter DefaultValue="True" Name="Inactive" Type="Boolean" />
            </WhereParameters>
        </asp:LinqDataSource>
        <br />
    </div>
    </form>
</body>
</html>
