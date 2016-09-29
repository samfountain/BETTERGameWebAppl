<%@ Page Title="Hall Of Gods" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="HallOfGods.aspx.cs" Inherits="BETTERGameWebAppl.WebForm5" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
        <form id="form1" runat="server">
        <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    <div>
        <asp:Table ID="HallOfGodsTable" runat="server"
            CellPadding = "10" 
            CellSpacing="0"
            GridLines="Both"
            BorderWidth="3"
            BorderColor="Black"
            BorderStyle="Solid">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell>Character</asp:TableHeaderCell>
                <asp:TableHeaderCell>Username</asp:TableHeaderCell>
                <asp:TableHeaderCell>Date</asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>
                    Max
                </asp:TableCell>
                <asp:TableCell>
                    NotMax
                </asp:TableCell>
                <asp:TableCell>
                    12/9/2016
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</body>
</html>
        </form>
</asp:Content>

