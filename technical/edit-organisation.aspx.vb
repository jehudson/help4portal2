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
        'DateLabel.Text = DateTime.Now.Date

        'WeekNumberLabel.Text = GetWeekNumber(DateTime.Now).ToString
        
    End Sub

    
    
    Protected Sub LinqDataSource3_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource3.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub
End Class
