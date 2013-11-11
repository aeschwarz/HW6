<%@ Page Language="VB" AutoEventWireup="false" CodeFile="teams.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <div style="text-align:center;">
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_HW6 %>" 
            DeleteCommand="DELETE FROM [Table] WHERE [teamId] = @teamId" 
            InsertCommand="INSERT INTO [Table] ([teamName], [teamCity], [teamState], [teamStadium], [teamColors]) VALUES (@teamName, @teamCity, @teamState, @teamStadium, @teamColors)" 
            SelectCommand="SELECT * FROM [Table]" 
            UpdateCommand="UPDATE [Table] SET [teamName] = @teamName, [teamCity] = @teamCity, [teamState] = @teamState, [teamStadium] = @teamStadium, [teamColors] = @teamColors WHERE [teamId] = @teamId">
                     <DeleteParameters>
                <asp:Parameter Name="teamId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="teamName" Type="String" />
                <asp:Parameter Name="teamCity" Type="String" />
                <asp:Parameter Name="teamState" Type="String" />
                <asp:Parameter Name="teamStadium" Type="String" />
                <asp:Parameter Name="teamColors" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="teamName" Type="String" />
                <asp:Parameter Name="teamCity" Type="String" />
                <asp:Parameter Name="teamState" Type="String" />
                <asp:Parameter Name="teamStadium" Type="String" />
                <asp:Parameter Name="teamColors" Type="String" />
                <asp:Parameter Name="teamId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            </div>
    </div>
        <br />
        <a href="default.aspx"> Home </a>
        <br />
        <a href="newteam.aspx"> Add a new team </a>
        <br />

        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="teamId" DataSourceID="SqlDataSource1" Height="210px" Width="524px" AllowPaging="True" PageSize="5">
            <Columns>
                <asp:BoundField DataField="teamName" HeaderText="Name" SortExpression="teamName" />
                <asp:HyperLinkField DataNavigateUrlFields="teamID" DataNavigateUrlFormatString="teamdetails.aspx?teamID={0}" Text="View Details" />
            </Columns>
        </asp:GridView>
 

 <div id="footer"> &copy; Adam Schwarz &Sigma;&Chi; | <asp:Label ID="lbl_date" runat="server" Text=""> </asp:Label>
    </div>
    </form>
</body>
</html>
