﻿<%@ Page Title="Login" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BETTERGameWebAppl.WebForm1" %>

<asp:Content ID="Content" ContentPlaceHolderID="Content" Runat="Server">
    <form id="form1" runat="server">

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    <section class="loginform">
        <asp:Login ID="Login" runat="server" DestinationPageUrl="~/Home.aspx">
        </asp:Login>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Login" />

    </section>
<p>Not a member yet? <ul class="HomeButtons">
      <li><a href="Register.aspx">Register</a></li>
    </ul></p>

</body>
</html>
    </form>
</asp:Content>
