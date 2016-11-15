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
    <asp:Label CssClass="ProfileLabels" ID="fNameLbl" runat="server" Text="Label">First Name:</asp:Label>
     <asp:Label ID="fName" runat="server" Text="Label"></asp:Label><br /><br />

    <asp:Label CssClass="ProfileLabels" ID="lNameLbl" runat="server" Text="Label">Last Name:</asp:Label>
    <asp:Label ID="lName" runat="server" Text="Label"></asp:Label><br /><br />

    <asp:Label CssClass="ProfileLabels" ID="usernameLbl" runat="server" Text="Label">Username:</asp:Label>
     <asp:Label ID="username" runat="server" Text="Label"></asp:Label><br /><br />

    <asp:Label CssClass="ProfileLabels" ID="emailLbl" runat="server" Text="Label">Email Address:</asp:Label>
     <asp:Label ID="email" runat="server" Text="Label"></asp:Label><br /><br />

    <asp:Label CssClass="ProfileLabels" ID="parentLbl" runat="server" Text="Label">Parent Email Address:</asp:Label>
     <asp:Label ID="parentEmail" runat="server" Text="Label"></asp:Label><br /><br />


    <asp:LinkButton CssClass="HomeButtons" PostBackUrl="~/ProfileUpdate.aspx" ID="LinkButton1" runat="server">Update</asp:LinkButton>
        
</body>
</html>
</asp:Content>