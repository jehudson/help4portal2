<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="AccessControl_Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <table>
                           <tr>
                               <td></td>
                               <td colspan="2"> Group Name</td>
                               
                               <td> <asp:DropDownList ID="DropDownList1" ValidationGroup="ValidationGroup1" runat="server" AutoPostBack="True" DataSourceID="LinqDataSource3" DataTextField="SecurityGroupName" DataValueField="SecurityGroupNameID" AppendDataBoundItems="True">
                                   <asp:ListItem Value="">Select Security Group</asp:ListItem>
                                    </asp:DropDownList>
                                   <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" TableName="SecurityGroupNames">
                                   </asp:LinqDataSource>
                               </td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="ValidationGroup2" CssClass="smallwarning" runat="server" validationSummary="ValidationSummary1" ControlToValidate="DropDownList1" ErrorMessage="You must select a group name">*</asp:RequiredFieldValidator>
                           </tr>
                           <tr>
                               <td>Available Members</td>
<td></td>
<td></td>
<td>Selected Members</td>
                           </tr>
                           <tr>
<td> <asp:ListBox ID="SelectLeft1" runat="server" Width="250px" DataSourceID="LinqDataSource2" DataTextField="AccountIdName" DataValueField="OrganisationID" SelectionMode="Multiple">
    
    </asp:ListBox>

                               <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" OrderBy="AccountIdName" TableName="OrganisationDetails">
    </asp:LinqDataSource>

                               </td>

<td> <asp:Button ID="MoveRight1" runat="server" Text=" >> " /></td>
<td>
    <asp:Button ID="MoveLeft1" runat="server" Text=" << " /> </td>

<td> <asp:ListBox ID="SelectRight1" runat="server" Width="250px" SelectionMode="Multiple" DataSourceID="LinqDataSource4" DataTextField="AccountIdName" DataValueField="AccountIdName" ></asp:ListBox>
    <asp:LinqDataSource ID="LinqDataSource4" runat="server" ContextTypeName="Support2DataClassesDataContext" EntityTypeName="" TableName="SecurityAssociationOrganisationViews" Where="SecurityGroupNameID == @SecurityGroupNameID">
        <WhereParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="SecurityGroupNameID" PropertyName="SelectedValue" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
                               </td>
                               <asp:CustomValidator ID="CustomValidator2" CssClass="smallwarning" ValidationGroup="ValidationGroup2" runat="server" ErrorMessage="You must add one or more members">*</asp:CustomValidator>
                                 </tr>
                           <tr><td>&nbsp;</td></tr>
                           <tr>
                               <td>
                                   </td>
                               <td> </td>
                               <td></td>
                               <td></td>
                           </tr>



                       </table>
						

<asp:Button ID="Button5" ValidationGroup="ValidationGroup2" runat="server" Text="Save" Width="50px" /> &nbsp; <asp:Button ID="Button6" runat="server" Text="Cancel" Width="50px" />&nbsp;&nbsp;&nbsp;&nbsp;<br />
						<asp:ValidationSummary ID="ValidationSummary2" CssClass="smallwarning" runat="server" /> 
    </div>
    </form>
</body>
</html>
