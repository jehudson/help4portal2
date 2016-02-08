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
        DateLabel.Text = DateTime.Now.Date

        WeekNumberLabel.Text = GetWeekNumber(DateTime.Now).ToString
        Dim username As String
        username = User.Identity.Name
        'Security Trimming
        If User.IsInRole("HELP4IT\technical") Then
            Label17.Text = User.Identity.Name & " has permission to access Support"

            li15.Attributes("class") = "i-16-status"
            litechnical.Attributes("class") = "mainmenu-show"
        Else
            Label17.Text = User.Identity.Name & " does not have permission to access Support"
        End If

        If User.IsInRole("HELP4IT\purchasing") Then
            Label1.Text = User.Identity.Name & " has permission to access Purchasing"

            li1.Attributes("class") = "i-16-status"
            lipurchasing.Attributes("class") = "mainmenu-show"
        Else
            Label1.Text = User.Identity.Name & " does not have permission to access Purchasing"
        End If

        If User.IsInRole("HELP4IT\renewables") Then
            Label2.Text = User.Identity.Name & " has permission to access Renewables"
            li2.Attributes("class") = "i-16-status"
            lirenewables.Attributes("class") = "mainmenu-show"
        Else
            Label2.Text = User.Identity.Name & " does not have permission to access Renewables"
        End If

        If User.IsInRole("HELP4IT\human-resources") Then
            Label3.Text = User.Identity.Name & " has permission to access Human Resources"
            li3.Attributes("class") = "i-16-status"
            lihr.Attributes("class") = "mainmenu-show"
        Else
            Label3.Text = User.Identity.Name & " does not have permission to access Human Resources"
        End If

        If User.IsInRole("HELP4IT\general-passwords") Then
            Label4.Text = User.Identity.Name & " has permission to access General Passwords"
            li4.Attributes("class") = "i-16-status"
            lipasswords.Attributes("class") = "mainmenu-show"
        Else
            Label4.Text = User.Identity.Name & " does not have permission to access General Passwords"
        End If

        If User.IsInRole("HELP4IT\restricted-passwords") Then
            Label5.Text = User.Identity.Name & " has permission to access Restricted Passwords"
            li5.Attributes("class") = "i-16-status"
            lipasswords.Attributes("class") = "mainmenu-show"
        Else
            Label5.Text = User.Identity.Name & " does not have permission to access Restricted Passwords"
        End If
        If User.IsInRole("HELP4IT\telephone") Then
            Label6.Text = User.Identity.Name & " has permission to access the telephone list"
            li6.Attributes("class") = "i-16-status"

        Else
            Label6.Text = User.Identity.Name & " does not have permission to access the telephone list"
        End If
        If User.IsInRole("HELP4IT\payg") Then
            Label7.Text = User.Identity.Name & " has permission to access Pay As You Go"
            li7.Attributes("class") = "i-16-status"
            lipayg.Attributes("class") = "mainmenu-show"
        Else
            Label7.Text = User.Identity.Name & " does not have permission to access Pay As You Go"
        End If
        If User.IsInRole("HELP4IT\Absence") Then
            Label8.Text = User.Identity.Name & " has permission to access Absence"
            li8.Attributes("class") = "i-16-status"
            liabsence.Attributes("class") = "mainmenu-show"
        Else
            Label8.Text = User.Identity.Name & " does not have permission to access Absence"
        End If
        If User.IsInRole("HELP4IT\Absence-management") Then
            Label9.Text = User.Identity.Name & " has permission to access Absence Management"
            li9.Attributes("class") = "i-16-status"
        Else
            Label9.Text = User.Identity.Name & " does not have permission to access Absence Management"

        End If
        If User.IsInRole("HELP4IT\timecard") Then
            Label10.Text = User.Identity.Name & " has permission to access Time Card"
            li10.Attributes("class") = "i-16-status"
            litimecard.Attributes("class") = "mainmenu-show"
        Else
            Label10.Text = User.Identity.Name & " does not have permission to access Time Card"
        End If
        If User.IsInRole("HELP4IT\ServerChecks") Then
            Label11.Text = User.Identity.Name & " has permission to access Server Checks"
            li11.Attributes("class") = "i-16-status"
            liserverchecks.Attributes("class") = "mainmenu-show"
        Else
            Label11.Text = User.Identity.Name & " does not have permission to access Server Checks"
        End If
        If User.IsInRole("HELP4IT\Helpdesk") Then
            Label12.Text = User.Identity.Name & " has permission to access Help Desk"
            li12.Attributes("class") = "i-16-status"
            lihelpdesk.Attributes("class") = "mainmenu-show"
        Else
            Label12.Text = User.Identity.Name & " does not have permission to access Help Desk"
        End If
        If User.IsInRole("HELP4IT\SendReports") Then
            Label13.Text = User.Identity.Name & " has permission to Send Reports"
            li13.Attributes("class") = "i-16-status"
        Else
            Label13.Text = User.Identity.Name & " does not have permission to Send Reports"
        End If
        If User.IsInRole("HELP4IT\quotations") Then
            Label16.Text = User.Identity.Name & " has permission to access quotations"
            li14.Attributes("class") = "i-16-status"
            liquotations.Attributes("class") = "mainmenu-show"
        Else
            Label16.Text = User.Identity.Name & " does not have permission to access quotations"
        End If
    End Sub
End Class
