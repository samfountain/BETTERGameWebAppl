<%@ Page Title="Profile" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="BETTERGameWebAppl.WebForm3" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" Runat="Server">
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Profile</title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
    <script "></script>
</head>
<body>
    <%--Simple display page of profile details, with an update button.--%>
    
    
    <br />
        
    <br />

    Name: <asp:TextBox ID="Name" runat="server" Enabled="false"></asp:TextBox>
    Username: <br /><br />
    Email Address: <br /><br />
    Parent Email Address: <br /><br />
    <asp:LinkButton CssClass="HomeButtons" PostBackUrl="~/ProfileUpdate.aspx" ID="LinkButton1" runat="server">Update</asp:LinkButton>
        
</body>
</html>
</asp:Content>