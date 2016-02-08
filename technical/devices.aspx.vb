
Partial Class technical_devices
    Inherits System.Web.UI.Page

    Protected Sub LinqDataSource2_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource2.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        newdevicesitedropdown.Attributes("class") = "control-show"
    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList2.SelectedIndexChanged
        newdevicesformholder.Attributes("class") = "control-show"
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'Save new device
        Try
            Dim DeviceContext As New Support2DataClassesDataContext
            Dim Device As New Device
            Device.SiteID = DropDownList2.SelectedValue
            Device.ModelNumber = TextBox2.Text
            Device.SerialNumber = TextBox3.Text
            Device.ThirdPartyDetails = TextBox5.Text
            Device.Specification = TextBox4.Text
            Device.Comments = TextBox6.Text
            Device.Active = True
            Device.DeviceStatusID = DropDownList3.SelectedValue
            Device.ParentDeviceID = DropDownList4.SelectedValue
            Device.HostName = TextBox1.Text
            Device.OperatingSystemID = DropDownList12.SelectedValue
            DeviceContext.Devices.InsertOnSubmit(Device)
            DeviceContext.SubmitChanges()


            'Open Device Created Information Dialog
            Dim sb As New StringBuilder()
            sb.Append("$(function() { ")
            sb.Append(" $('#device-created').dialog({")
            sb.Append("    width: 300,")

            sb.Append(" });")
            sb.Append("});")
            Page.ClientScript.RegisterStartupScript(GetType(Page), "myscript", sb.ToString(), True)
        Catch ex As Exception
            ' Open Record failure Information Dialog
            Dim sb As New StringBuilder()
            sb.Append("$(function() { ")
            sb.Append(" $('#device-failure').dialog({")
            sb.Append("    width: 300,")
            sb.Append(" });")
            sb.Append("});")
            Page.ClientScript.RegisterStartupScript(GetType(Page), "myscript", sb.ToString(), True)
        End Try


    End Sub

    Protected Sub LinqDataSource5_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource5.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub

    Protected Sub LinqDataSource6_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource6.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub

    Protected Sub LinqDataSource7_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource7.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub

    Protected Sub DropDownList5_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList5.SelectedIndexChanged
        editdevicesite.Attributes("Class") = "control-show"
    End Sub

    
    Protected Sub LinqDataSource9_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource9.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub

    Protected Sub LinqDataSource10_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource10.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub

    Protected Sub LinqDataSource11_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource11.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub

    Protected Sub DropDownList10_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList10.SelectedIndexChanged
        sitedeactivatedropdown.attributes("class") = "control-show"
    End Sub

    
    
    Protected Sub LinqDataSource14_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource14.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub

    Protected Sub LinqDataSource15_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource15.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub

    Protected Sub LinqDataSource16_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource16.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub

    Protected Sub DropDownList14_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList14.SelectedIndexChanged
        sitenic.Attributes("class") = "control-show"
    End Sub

    Protected Sub DropDownList15_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList15.SelectedIndexChanged
        nicform.Attributes("class") = "control-show"
    End Sub

    Protected Sub LinqDataSource17_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource17.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub

    
    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

    End Sub
End Class
