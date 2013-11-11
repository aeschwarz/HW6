<%@ Page Language="VB" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <a href="default.aspx"> Home </a>
        <br />
        <br />
        <br />
        <br />
    
        <asp:SqlDataSource ID="ToolDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_HW6 %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
    
    </div>
        <% If Not IsPostBack Then%>
            Search for a tool by name:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbTool" runat="server" AutoPostBack="true"></asp:TextBox>
        <br />
        <br />
        <br />
        <%Else%>
            Search for another tool by name:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbTool2" runat="server" AutoPostBack="true"></asp:TextBox>
        <br />
        <asp:GridView ID="GridView1" 
            runat="server" 
            AllowSorting="True" 
            AutoGenerateColumns="False" 
            DataKeyNames="teamId" 
            DataSourceID="ToolDataSource" 
            Height="227px" 
            Width="594px"
            CssClass="search"
            >
            <Columns>  
                   <asp:BoundField DataField="teamID" HeaderText="teamID" InsertVisible="False" ReadOnly="True" SortExpression="teamID" /> 
                  <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                  <asp:BoundField DataField="teamDetails" HeaderText="teamDetails" SortExpression="teamDetails" /> 
                   
            </Columns>
        </asp:GridView>
        <%End If%>
     
        <br />
        
     
    </form>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
     
     <div id="footer"> &copy; Adam Schwarz &Sigma;&Chi; | <asp:Label ID="lbl_date" runat="server" Text=""> </asp:Label> | <a href="aboutme.aspx"> About Me </a> | <a href="contact.aspx"> Contact Us</a>
         </div>
</body>
</html>
