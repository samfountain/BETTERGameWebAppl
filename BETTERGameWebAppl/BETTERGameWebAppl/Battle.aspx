<%@ Page Title="Battle" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="Battle.aspx.cs" Inherits="BETTERGameWebAppl.WebForm9" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Battle</title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    <ul class="BattleButtons">
      <li><a href="Challenge.aspx">Challenge</a></li>
      <br /><br />
      <asp:Label ID="lblprev10battle" Text="Last 10 Battles:" runat="server"></asp:Label><br />
      <div>
        <asp:Table ID="tblbattlelog" runat="server"
            CellPadding = "10" 
            CellSpacing="0"
            GridLines="Both"
            BorderWidth="3"
            BorderColor="Black"
            BorderStyle="Solid">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell>Battle ID</asp:TableHeaderCell>
                <asp:TableHeaderCell>Date</asp:TableHeaderCell>
                <asp:TableHeaderCell>Outcome</asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell><a href="BattleSummary.aspx">ID012002</a></asp:TableCell>
                <asp:TableCell>12/9/2016</asp:TableCell>
                <asp:TableCell>Sam Wins</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
        <br /><br />
      <li><a href="BattleSummary.aspx">Battle Summary</a></li>
    </ul>
</body>
</html>
</asp:Content>
