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

        Label14.Text = ExtractUserName(User.Identity.Name)
        Label15.Text = ExtractUserName(User.Identity.Name)
        ' Find EmployeeID
        Dim HRContext As New HRDataClassesDataContext
        Dim EmployeeDetail As New EmployeeDetail
        Dim query = (From c In HRContext.EmployeeDetails Where c.FullName = ExtractUserName(User.Identity.Name) Select c.EmployeeID).SingleOrDefault
        Label16.Text = query
        'DateLabel.Text = DateTime.Now.Date

        'WeekNumberLabel.Text = GetWeekNumber(DateTime.Now).ToString

    End Sub

    Protected Sub LinqDataSource1_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource1.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub

    Protected Sub LinqDataSource2_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource2.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub
    Protected Sub LinqDataSource3_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource3.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub
    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged


        Label1.Text = DropDownList1.SelectedItem.ToString
        Label2.Text = DropDownList1.SelectedItem.ToString
    End Sub
End Class
