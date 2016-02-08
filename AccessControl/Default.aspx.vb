Imports System.Globalization

Partial Class _Default
    Inherits System.Web.UI.Page
    Private Function ExtractUserName(ByVal path As String) As String
        Dim userPath As String() = path.Split(New Char() {"\"c})
        Dim Namestr As String = (userPath(userPath.Length - 1))
        Namestr = Namestr.Replace(".", " ")
        Dim Properstr As String = StrConv(Namestr, vbProperCase)
        Return Properstr
    End Function
    Public Shared Function GetWeekNumber(ByVal dtPassed As DateTime) As Integer
        Dim ciCurr As CultureInfo = CultureInfo.CurrentCulture
        Dim weekNum As Integer = ciCurr.Calendar.GetWeekOfYear(dtPassed, CalendarWeekRule.FirstFourDayWeek, DayOfWeek.Monday)
        Return weekNum
    End Function
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '   If Not IsPostBack Then
        'BindData()
        ' End If
        Label14.Text = ExtractUserName(User.Identity.Name)
        Label15.Text = ExtractUserName(User.Identity.Name)
        'DateLabel.Text = DateTime.Now.Date

        'WeekNumberLabel.Text = GetWeekNumber(DateTime.Now).ToString

    End Sub
    
   



    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'Create New SecurityGroupName

        Dim GroupNameText As String = TextBox1.Text
        Dim SecurityGroupContext As New Support2DataClassesDataContext
        Dim SecurityGroupName As New SecurityGroupName
        Dim HRContext As New HRDataClassesDataContext
        Dim EmployeeDetail As New EmployeeDetail

        Dim v = From o In SecurityGroupContext.SecurityGroupNames Where o.SecurityGroupName = GroupNameText Select o
        Dim bolExists As Boolean = If(v.count() = 0, False, True)
        'Exit if No security group name
        If TextBox1.Text = "" Then
            Exit Sub
        End If
        If SelectRight.Items.Count = 0 Then
            Exit Sub
        End If
        If bolExists = True Then


            'Open Record Exists Warning Dialog
            Dim sb As New StringBuilder()
            sb.Append("$(function() { ")
            sb.Append(" $('#record-exists').dialog({")
            sb.Append("    width: 300,")
            sb.Append(" });")
            sb.Append("});")
            Page.ClientScript.RegisterStartupScript(GetType(Page), "myscript", sb.ToString(), True)

        Else
            SecurityGroupName.SecurityGroupName = GroupNameText
            SecurityGroupContext.SecurityGroupNames.InsertOnSubmit(SecurityGroupName)
            SecurityGroupContext.SubmitChanges()

        End If

        'Get SecurityGroupNameID for item just saved
        Dim query = (From c In SecurityGroupContext.SecurityGroupNames
        Where c.SecurityGroupName = GroupNameText
        Select c.SecurityGroupNameID).SingleOrDefault

        'Get Values from ListView and save with SecurityGroupNameID in SecurityGroup

        Try
            Dim i As Integer = 0
            For Each item In SelectRight.Items
                Dim SecurityGroup As New SecurityGroup
                Dim EmployeeName As String = SelectRight.Items(i).ToString
                Dim query1 = (From c In HRContext.EmployeeDetails
                                      Where c.FullName = EmployeeName
                                      Select c.EmployeeID).SingleOrDefault
                SecurityGroup.EmployeeID = query1
                SecurityGroup.SecurityGroupNameID = query
                SecurityGroupContext.SecurityGroups.InsertOnSubmit(SecurityGroup)
                i = i + 1
            Next
            SecurityGroupContext.SubmitChanges()

            'Open Record Created Information Dialog
            Dim sb As New StringBuilder()
            sb.Append("$(function() { ")
            sb.Append(" $('#record-created').dialog({")
            sb.Append("    width: 300,")

            sb.Append(" });")
            sb.Append("});")
            Page.ClientScript.RegisterStartupScript(GetType(Page), "myscript", sb.ToString(), True)
        Catch ex As Exception

            'Open Record failure Information Dialog
            Dim sb As New StringBuilder()
            sb.Append("$(function() { ")
            sb.Append(" $('#record-failure').dialog({")
            sb.Append("    width: 300,")
            sb.Append(" });")
            sb.Append("});")
            Page.ClientScript.RegisterStartupScript(GetType(Page), "myscript", sb.ToString(), True)
        End Try



    End Sub








    Protected Sub LinqDataSource2_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource2.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub



    Protected Sub CustomValidator1_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        args.IsValid = SelectRight.Items.Count > 0
    End Sub

    Protected Sub CustomValidator2_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator2.ServerValidate
        args.IsValid = SelectRight1.Items.Count > 0
    End Sub
    Protected Sub CustomValidator3_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator3.ServerValidate
        args.IsValid = SelectRight2.Items.Count > 0
    End Sub
    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Dim SecurityAssociationContext As New Support2DataClassesDataContext
        Dim SecurityGroupName As New SecurityGroupName
        Dim SecurityGroup As New SecurityGroup
        If DropDownList1.selectedvalue = "" Then
            Exit Sub

        End If
        If SelectRight1.Items.Count = 0 Then
            Exit Sub
        End If

        Dim NameID As Integer = DropDownList1.SelectedValue
        Dim query1 = From securityAssociation In SecurityAssociationContext.SecurityAssociations Where securityAssociation.SecurityGroupNameID = NameID Select securityAssociation

        For Each SecurityAssociation As SecurityAssociation In query1
            SecurityAssociationContext.SecurityAssociations.DeleteOnSubmit(SecurityAssociation)
        Next

        Try
            Dim i As Integer = 0
            For Each item In SelectRight1.Items
                Dim SecurityAssociation As New SecurityAssociation
                Dim OrganisationName As String = SelectRight1.Items(i).ToString
                Dim query2 = (From c In SecurityAssociationContext.OrganisationDetails
                                      Where c.AccountIdName = OrganisationName
                                      Select c.OrganisationID).SingleOrDefault
                SecurityAssociation.OrganisationID = query2
                SecurityAssociation.SecurityGroupNameID = DropDownList1.SelectedValue
                SecurityAssociationContext.SecurityAssociations.InsertOnSubmit(SecurityAssociation)
                i = i + 1
            Next
            SecurityAssociationContext.SubmitChanges()
            'Open Record Created Information Dialog
            Dim sb As New StringBuilder()
            sb.Append("$(function() { ")
            sb.Append(" $('#Association-Created').dialog({")
            sb.Append("    width: 300,")

            sb.Append(" });")
            sb.Append("});")
            Page.ClientScript.RegisterStartupScript(GetType(Page), "myscript", sb.ToString(), True)
        Catch ex As Exception
            'Open Record failure Information Dialog
            Dim sb As New StringBuilder()
            sb.Append("$(function() { ")
            sb.Append(" $('#assocation-failure').dialog({")
            sb.Append("    width: 300,")
            sb.Append(" });")
            sb.Append("});")
            Page.ClientScript.RegisterStartupScript(GetType(Page), "myscript", sb.ToString(), True)
        End Try









    End Sub

    Protected Sub LinqDataSource4_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource4.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub
    Protected Sub LinqDataSource5_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource5.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub

    

    
    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub

    Protected Sub UpdateMoveRight_Click(sender As Object, e As EventArgs) Handles UpdateMoveRight.Click
        While SelectLeft2.Items.Count > 0 AndAlso SelectLeft2.SelectedItem IsNot Nothing
            Dim selectedItem As ListItem = SelectLeft2.SelectedItem
            selectedItem.Selected = False
            SelectRight2.Items.Add(selectedItem)
            SelectLeft2.Items.Remove(selectedItem)
        End While

    End Sub

    Protected Sub UpdateMoveLeft_Click(sender As Object, e As EventArgs) Handles UpdateMoveLeft.Click

        While SelectRight2.Items.Count > 0 AndAlso SelectRight2.SelectedItem IsNot Nothing
            Dim selectedItem As ListItem = SelectRight2.SelectedItem
            selectedItem.Selected = False
            SelectLeft2.Items.Add(selectedItem)
            SelectRight2.Items.Remove(selectedItem)
        End While

    End Sub

    


    Protected Sub MoveLeft1_Click(sender As Object, e As EventArgs) Handles MoveLeft1.Click
        While SelectRight1.Items.Count > 0 AndAlso SelectRight1.SelectedItem IsNot Nothing
            Dim selectedItem As ListItem = SelectRight1.SelectedItem
            selectedItem.Selected = False
            SelectLeft1.Items.Add(selectedItem)
            SelectRight1.Items.Remove(selectedItem)
        End While
    End Sub
    Protected Sub MoveRight1_Click(sender As Object, e As EventArgs) Handles MoveRight1.Click
        While SelectLeft1.Items.Count > 0 AndAlso SelectLeft1.SelectedItem IsNot Nothing
            Dim selectedItem As ListItem = SelectLeft1.SelectedItem
            selectedItem.Selected = False
            SelectRight1.Items.Add(selectedItem)
            SelectLeft1.Items.Remove(selectedItem)
        End While

    End Sub
    Protected Sub MoveLeft_Click(sender As Object, e As EventArgs) Handles MoveLeft.Click
        While SelectRight.Items.Count > 0 AndAlso SelectRight.SelectedItem IsNot Nothing
            Dim selectedItem As ListItem = SelectRight.SelectedItem
            selectedItem.Selected = False
            SelectLeft.Items.Add(selectedItem)
            SelectRight.Items.Remove(selectedItem)
        End While
    End Sub
    Protected Sub MoveRight_Click(sender As Object, e As EventArgs) Handles MoveRight.Click
        While SelectLeft.Items.Count > 0 AndAlso SelectLeft.SelectedItem IsNot Nothing
            Dim selectedItem As ListItem = SelectLeft.SelectedItem
            selectedItem.Selected = False
            SelectRight.Items.Add(selectedItem)
            SelectLeft.Items.Remove(selectedItem)
        End While

    End Sub


    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim SecurityGroupContext As New Support2DataClassesDataContext
        Dim HRContext As New HRDataClassesDataContext
        If DropDownList2.SelectedValue = "" Then
            
            Exit Sub

        End If
        If SelectRight2.Items.Count = 0 Then
           


            Exit Sub
        End If
        Dim NameID As Integer = DropDownList2.SelectedValue
        Dim query = From SecurityGroup In SecurityGroupContext.SecurityGroups Where SecurityGroup.SecurityGroupNameID = NameID Select SecurityGroup

        For Each SecurityGroup As SecurityGroup In query
            SecurityGroupContext.SecurityGroups.DeleteOnSubmit(SecurityGroup)
        Next
        Try
            Dim i As Integer = 0
            For Each item In SelectRight2.Items
                Dim SecurityGroup As New SecurityGroup
                Dim EmployeeName As String = SelectRight2.Items(i).ToString
                SecurityGroup.SecurityGroupNameID = DropDownList2.SelectedValue
                Dim query2 = (From c In HRContext.EmployeeDetails Where c.FullName = EmployeeName Select c.EmployeeID).SingleOrDefault
                SecurityGroup.EmployeeID = query2


                SecurityGroupContext.SecurityGroups.InsertOnSubmit(SecurityGroup)
                i = i + 1

            Next
            SecurityGroupContext.SubmitChanges()
            'Open Record Created Information Dialog
            Dim sb As New StringBuilder()
            sb.Append("$(function() { ")
            sb.Append(" $('#SecurityGroup-Updated').dialog({")
            sb.Append("    width: 300,")

            sb.Append(" });")
            sb.Append("});")
            Page.ClientScript.RegisterStartupScript(GetType(Page), "myscript", sb.ToString(), True)

            SecurityGroupContext.SubmitChanges()
        Catch ex As Exception
            'Open Record failure Information Dialog
            Dim sb As New StringBuilder()
            sb.Append("$(function() { ")
            sb.Append(" $('#assocation-failure').dialog({")
            sb.Append("    width: 300,")
            sb.Append(" });")
            sb.Append("});")
            Page.ClientScript.RegisterStartupScript(GetType(Page), "myscript", sb.ToString(), True)

        End Try
    End Sub
End Class
