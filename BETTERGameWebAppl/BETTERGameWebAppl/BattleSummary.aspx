<%@ Page Title="Battle Summary" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="BattleSummary.aspx.cs" Inherits="BETTERGameWebAppl.WebForm10" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%--Battle summary page hold information about a user's previous battles--%>
    <title>Battle Summary</title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    <%--Information about users' battles--%>
    <div>
    <label>Character Name:</label> <br />
    <asp:Label ID="lblcharname" Text="Sam" runat="server"></asp:Label><br /> <br />
    <label>Character Element:</label> <br />
    <asp:Label ID="lblcharelement" Text="Water" runat="server"></asp:Label><br /> <br />
    <label>Character Level:</label> <br />
    <asp:Label ID="lblcharlvl" Text="2" runat="server"></asp:Label><br /> <br />
    <label>Character Step:</label> <br />
    <asp:Label ID="lblcharstep" Text="1" runat="server"></asp:Label><br /> <br />
    <label>Enemy Name:</label> <br />
    <asp:Label ID="lblename" Text="Ballin" runat="server"></asp:Label><br /> <br />
    <label>Enemy Element:</label> <br />
    <asp:Label ID="lbleelement" Text="Water" runat="server"></asp:Label><br /> <br />
    <label>Enemy Level:</label> <br />
    <asp:Label ID="lblelvl" Text="2" runat="server"></asp:Label><br /> <br />
    <label>Enemy Step:</label> <br />
    <asp:Label ID="lblestep" Text="1" runat="server"></asp:Label><br /> <br />
    <label>Outcome:</label> <br />
    <asp:Label ID="lbloutcome" Text="Sam Wins" runat="server"></asp:Label><br /> <br />
    <label>Experience:</label> <br />
    <asp:Label ID="lblexp" Text="111" runat="server"></asp:Label><br /> <br />
    </div>
    <%--Link which returns to the battle page--%>
    <ul class="BattleButtons">
      <li><a href="Battle.aspx">Back to Battle</a></li>
    </ul>
</body>
</html>
</asp:Content>
