
Partial Class AccessControl_Default2
    Inherits System.Web.UI.Page

    

    Protected Sub MoveLeft1_Click(sender As Object, e As EventArgs) Handles MoveLeft1.Click


        While SelectRight1.Items.Count > 0 AndAlso SelectRight1.SelectedItem IsNot Nothing
            Dim selectedItem As ListItem = SelectRight1.SelectedItem
            selectedItem.Selected = False
            SelectLeft1.Items.Add(selectedItem)
            SelectRight1.Items.Remove(selectedItem)
        End While


    End Sub
    Protected Sub LinqDataSource4_Selecting(sender As Object, e As LinqDataSourceSelectEventArgs) Handles LinqDataSource4.Selecting
        For Each kvp As KeyValuePair(Of String, Object) In e.WhereParameters
            If kvp.Value Is Nothing Then
                e.Cancel = True
                Return
            End If
        Next
    End Sub
End Class
