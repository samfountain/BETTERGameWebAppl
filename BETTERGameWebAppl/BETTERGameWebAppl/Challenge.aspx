<%@ Page Title="Challenge" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="Challenge.aspx.cs" Inherits="BETTERGameWebAppl.WebForm8" %>
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
    <label>Challenger:</label> <br />
    <asp:DropDownList ID="ddlchallenger" runat="server" Width="200px">
        <asp:ListItem Text="Select Challenger" Value="0"></asp:ListItem>
        <asp:ListItem Text="Boris" Value="1"></asp:ListItem>
        <asp:ListItem Text="Ted" Value="2"></asp:ListItem>
    </asp:DropDownList>
    <br /> <br />
    <label>Challenger Element:</label> <br />
    <asp:Label ID="lblchelement" Text="Water" runat="server"></asp:Label><br /> <br />
    <label>Challenger Level:</label> <br />
    <asp:Label ID="lblchlvl" Text="2" runat="server"></asp:Label><br /> <br />
    <label>Challenger Step:</label> <br />
    <asp:Label ID="lblchstep" Text="1" runat="server"></asp:Label><br /> <br />
    <asp:Button ID="btnfight" Text="FIGHT!" runat="server" PostBackUrl="~/Combat.aspx" /><br /> <br />    
    <ul class="BattleButtons">
     <li><a href="Battle.aspx">Back to Battle</a></li>
    </ul>
    </div>
    </form>
</body>
</html>
</asp:Content>
