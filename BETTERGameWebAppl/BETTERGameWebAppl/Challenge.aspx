<%@ Page Title="Challenge" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="Challenge.aspx.cs" Inherits="BETTERGameWebAppl.WebForm8" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%--Challenge is where the user selects an opponent to battle--%>
    <title></title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    <form runat="server">
    <div>
    <label>Opponent:</label> <br />
    <%--A dropdown list of other users--%>
    <asp:DropDownList ID="ddlopponent" runat="server" Width="200px">
        <asp:ListItem Text="Select Opponent" Value="0"></asp:ListItem>
        <asp:ListItem Text="Boris" Value="1"></asp:ListItem>
        <asp:ListItem Text="Ted" Value="2"></asp:ListItem>
    </asp:DropDownList>
        <br />
    <%--A required field validator that ensures that the user makes a valid selection--%>
    <asp:RequiredFieldValidator ID="opponentvalidator" 
            ControlToValidate="ddlopponent"
            InitialValue="0"
            Display="Static"
            ErrorMessage="Opponent is required!" 
            ForeColor="Red"
            ValidationGroup="1"
            runat="server" />
    <br /> <br />
    <%--Information about selected oppontent--%>
    <label>Challenger Element:</label> <br />
    <asp:Label ID="lblchelement" Text="Water" runat="server"></asp:Label><br /> <br />
    <label>Challenger Level:</label> <br />
    <asp:Label ID="lblchlvl" Text="2" runat="server"></asp:Label><br /> <br />
    <label>Challenger Step:</label> <br />
    <asp:Label ID="lblchstep" Text="1" runat="server"></asp:Label><br /> <br />
    <asp:LinkButton CssClass="HomeButtons" ID="btnchallenge" PostBackUrl="~/Combat.aspx" runat="server" ValidationGroup="1">FIGHT!</asp:LinkButton>
    <asp:LinkButton PostBackUrl="~/Battle.aspx" CssClass="HomeButtons" ID="btnBackToBattle" runat="server">Back</asp:LinkButton>
    <br /><br />
    <%--Link to battle page--%>
    
    </div>
    </form>
</body>
</html>
</asp:Content>
