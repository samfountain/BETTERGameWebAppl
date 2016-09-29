<%@ Page Title="Home"Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BETTERGameWebAppl.Home" MasterPageFile="~/BETTERGameMaster.Master" %>


<asp:Content ID="HomeContent" ContentPlaceHolderID="Content" Runat="Server">
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    <form runat="server">
    <h1 class="HomeTitle">Welcome To BETTERGame!</h1>
    <p class="HomeBody">Text about the game! <br/>
        Text about the game! <br/>
        Text about the game! <br/>
        Text about the game! <br/>
        Text about the game! <br/>
        Text about the game! <br/>
        Text about the game! <br/>
        Text about the game! <br/>
        Text about the game! <br/>
        Text about the game! <br/>
        Text about the game! <br/>
        Text about the game! <br/>
        Text about the game! <br/>
        </p>

    <asp:LinkButton CssClass="HomeButtons" PostBackUrl="~/Login.aspx" ID="login" runat="server">Login</asp:LinkButton> 
    <asp:LinkButton CssClass="HomeButtons" PostBackUrl="~/Register.aspx" ID="register" runat="server">Register</asp:LinkButton>
    </form>
</body>
</html>
</asp:Content>
