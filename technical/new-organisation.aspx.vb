Imports System.Globalization
Imports System.Data.SqlClient

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

        Label14.Text = ExtractUserName(User.Identity.Name)
        Label15.Text = ExtractUserName(User.Identity.Name)
        'DateLabel.Text = DateTime.Now.Date

        'WeekNumberLabel.Text = GetWeekNumber(DateTime.Now).ToString

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs)
        Dim buttonstate As Button = CType(FormView1.FindControl("InsertButton"), Button)
        Dim DuplicateWarningLabel As Label = FormView1.FindControl("DuplicateWarningLabel")
        buttonstate.Enabled = True
        DuplicateWarningLabel.Visible = False
        Dim Dropdown As DropDownList = CType(FormView1.FindControl("DropDownList1"), DropDownList)
        Dim Customer As String = Dropdown.SelectedValue
        ' Lync find if organisation already exists
        Dim OrganisationDetailsContext As New Support2DataClassesDataContext
        'Dim OrganisationDetails As New OrganisationDetail

        Dim query = (From c In OrganisationDetailsContext.OrganisationDetails Where c.AccountIdName = Customer Select c).Count()


        'ADO method
        ' Dim strConnection As String = ConfigurationManager.ConnectionStrings("support2ConnectionString").ConnectionString
        ' Dim SqlCmd6 As String = "Select COUNT(*) FROM OrganisationDetails WHERE(AccountIdName='" & Customer & "')"
        '  Dim connection6 As SqlConnection
        ' connection6 = New SqlConnection(strConnection)
        ' connection6.Open()
        ' Dim command6 As New SqlCommand(SqlCmd6, connection6)
        '  Dim Count As Integer = (command6.ExecuteScalar)

        If query > 0 Then
            DuplicateWarningLabel.Visible = True
            buttonstate = CType(FormView1.FindControl("InsertButton"), Button)
            buttonstate.Enabled = False
        End If
    End Sub
End Class
