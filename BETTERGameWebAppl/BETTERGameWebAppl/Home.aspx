<%@ Page Title="Home"Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BETTERGameWebAppl.Home" MasterPageFile="~/BETTERGameMaster.Master" %>


<asp:Content ID="HomeContent" ContentPlaceHolderID="Content" Runat="Server">
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    <%--Landing page for the web app. Brief description of game and login and register options--%>
    
    <h1 class="HomeTitle">Welcome To BETTERGame!</h1>
    <p class="HomeBody">BETTERGame is a fun and exciting game for you to play with all your friends!
        You can create your own elemental heroes and make them stronger by exercising and telling us what it was that you did.
        Or you can increase their strength by battling other fierce opponents. It should be known that exercising is the best way to
        increase your elemental hero's power. Will your character enter the Hall of the Gods?
        <br/>
        </p>
        <br />
        <br />


    <asp:LinkButton CssClass="HomeButtons" PostBackUrl="~/Login.aspx" ID="login" runat="server">Login</asp:LinkButton> 
    <asp:LinkButton CssClass="HomeButtons" PostBackUrl="~/Register.aspx" ID="register" runat="server">Register</asp:LinkButton>
    
</body>
</html>
    </asp:content>


