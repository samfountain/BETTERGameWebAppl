<%@ Page Title="Character" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="Character.aspx.cs" Inherits="BETTERGameWebAppl.WebForm6" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
        <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%--Character page shows information about a user's character--%>
    <title>Character</title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
    
<body>
    <div>
    <%--Information about user characters--%>
    <label>CHARACTER NAME:</label>  <br />
    <asp:Label ID="lblcname" Text="Champion" runat="server"></asp:Label><br /><br />
    <label>ELEMENT:</label> <br />
    <asp:Label ID="lblelement" Text="Fire" runat="server"></asp:Label><br /><br />
    <label>LEVEL:</label> <br />
    <asp:Label ID="lbllevel" Text="2" runat="server"></asp:Label><br /><br />
    <label>STEP:</label> <br />
    <asp:Label ID="lblstep" Text="3" runat="server"></asp:Label><br /><br />
    
    </div>
</body>
</html>
</asp:Content>
