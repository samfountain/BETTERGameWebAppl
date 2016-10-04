<%@ Page Title="Create Character" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="CreateCharacter.aspx.cs" Inherits="BETTERGameWebAppl.WebForm12" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    <form runat="server">
    <div>
    <asp:Label ID="lblcharelement" Text="Element: " runat="server"></asp:Label> <br />
    <asp:DropDownList ID="ddlelement" runat="server" Width="200px">
        <asp:ListItem Text="Select Element" Value="0"></asp:ListItem>
        <asp:ListItem Text="Fire" Value="1"></asp:ListItem>
        <asp:ListItem Text="Water" Value="2"></asp:ListItem>
        <asp:ListItem Text="Earth" Value="3"></asp:ListItem>
        <asp:ListItem Text="Air" Value="4"></asp:ListItem>
    </asp:DropDownList>
    <br /> <br />
    <asp:Label ID="lblcharname" Text="Character Name:" runat="server"></asp:Label><br />
    <asp:TextBox ID="charname" runat="server"></asp:TextBox><br /><br />
    <asp:Button ID="btncreate" Text="Create Character" runat="server"/><br /> <br />    
    <ul class="CharacterButtons">
     <li><a href="Character.aspx">Back to Character</a></li>
    </ul>
    </div>
    </form>
</body>
</html>
</asp:Content>
