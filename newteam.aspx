<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newteam.aspx.vb" Inherits="detailsview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_HW6 %>" 
            DeleteCommand="DELETE FROM [Table] WHERE [teamId] = @teamId" 
            InsertCommand="INSERT INTO [Table] ([teamName], [teamCity], [teamState], [teamStadium], [teamColors]) VALUES (@teamName, @teamCity, @teamState, @teamStadium, @teamColors)" 
            SelectCommand="SELECT * FROM [Table] WHERE ([teamId] = @teamId)" 
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
            <SelectParameters>
                <asp:QueryStringParameter Name="teamId" QueryStringField="teamID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="teamName" Type="String" />
                <asp:Parameter Name="teamCity" Type="String" />
                <asp:Parameter Name="teamState" Type="String" />
                <asp:Parameter Name="teamStadium" Type="String" />
                <asp:Parameter Name="teamColors" Type="String" />
                <asp:Parameter Name="teamId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
               <br />
        <a href="default.aspx"> Home </a>
        <br />
        <a href="teams.aspx"> View all teams</a>
        <br /> 
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="teamId" DataSourceID="SqlDataSource1" Height="70px" Width="400px" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="teamName" HeaderText="Name" SortExpression="teamName" />
                <asp:BoundField DataField="teamCity" HeaderText="City" SortExpression="teamCity" />
                <asp:BoundField DataField="teamState" HeaderText="State" SortExpression="teamState" />
                <asp:BoundField DataField="teamStadium" HeaderText="Stadium" SortExpression="teamStadium" />
                <asp:BoundField DataField="teamColors" HeaderText="Colors" SortExpression="teamColors" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
