<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <div>

       <h1 class="default">  Welcome to my NFL database! <br /> </h1>

        <div id="menu">
            <ul id="navlist">
                <h2 class="main"> 
                    <li> <a href="teams.aspx"> View all teams </a> </li>  
                    <li> <a href="newteam.aspx"> Add a new team </a> </li>
              
                </h2> 
            </ul>
        </div>

 <div class="img" > 
        <img alt="NFL Teams" title="NFL Teams" height="450px" align="center" src="./images/map.jpg" /> 
            </div>

        

        <br /> <br /> 

       


    </div>
    </form>
</body>
</html>
