
Partial Class detailsview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim delTeam As String = e.Values("teamName").ToString()

        Response.Write("The record ")
        Response.Write("<span class=deletedteamshighlight>")
        Response.Write(delTeam)
        Response.Write("</span> has been deleted from the database.")


        Response.AddHeader("REFRESH", "3;URL=./teams.aspx")

        'Response.Write("The record has been deleted from the database")

    End Sub


    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated

        Response.Redirect("./teams.aspx")

    End Sub
End Class
