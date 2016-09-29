<%@ Page Title="Create Character" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="CharacterCreation.aspx.cs" Inherits="BETTERGameWebAppl.WebForm6" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <form id="characterform" runat="server">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    <div>
        Element: <br />
        <asp:DropDownList ID="dropelement" runat="server">
             <asp:ListItem Text="Select Element" Value="0"></asp:ListItem>
             <asp:ListItem Text="Earth" Value="1"></asp:ListItem>
             <asp:ListItem Text="Fire" Value="2"></asp:ListItem>
             <asp:ListItem Text="Air" Value="3"></asp:ListItem>
             <asp:ListItem Text="Water" Value="4"></asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        <asp:Label ID="lblcname" Text="Character Name" runat="server"></asp:Label><br />
        <asp:TextBox ID="charactername" runat="server"></asp:TextBox>
        <br /><br />
        <button type="button" name="charbutton">Create Character</button>  
    </div>
</body>
</html>
    </form>
</asp:Content>
