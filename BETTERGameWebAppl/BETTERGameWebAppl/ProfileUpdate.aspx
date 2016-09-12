<%@ Page Title="Update Profile" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="ProfileUpdate.aspx.cs" Inherits="BETTERGameWebAppl.WebForm4" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" Runat="Server">
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    First name: <input type="text" name="firstname"/><br>
    Last name: <input type="text" name="lastname"/><br>
    Email: <input type="email" name="email"/><br>
    Parent Email: <input type="email" name="parentemail"/><br>
    Password: <input type="password" name="password"/> <br>
    <ul class="ProfileButtons">
        <li><a href="Profile.aspx">Back to Profile</a></li>
    </ul>
</body>
</html>
</asp:Content>