
Partial Class detailsview
    Inherits System.Web.UI.Page



    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted

        Response.Redirect("./teams.aspx")

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbl_date.Text = DateTime.Now.ToLongDateString
    End Sub
End Class
