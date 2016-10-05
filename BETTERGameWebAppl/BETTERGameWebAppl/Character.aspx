<%@ Page Title="Character" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="Character.aspx.cs" Inherits="BETTERGameWebAppl.WebForm6" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
        <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    <div>
    <label>CHARACTER NAME:</label>  <br />
    <asp:Label ID="lblcname" Text="Champion" runat="server"></asp:Label><br /><br />
    <label>ELEMENT:</label> <br />
    <asp:Label ID="lblelement" Text="Fire" runat="server"></asp:Label><br /><br />
    <label>LEVEL:</label> <br />
    <asp:Label ID="lbllevel" Text="2" runat="server"></asp:Label><br /><br />
    <label>STEP:</label> <br />
    <asp:Label ID="lblstep" Text="3" runat="server"></asp:Label><br /><br />
    <label>FIGHTS:</label> <br />
    <asp:Label ID="lblfightnum" Text="14" runat="server"></asp:Label><br /><br />
    <label>WIN/LOSS:</label> <br />
    <asp:Label ID="lblwinloss" Text="10/4" runat="server"></asp:Label><br /><br />
    <ul class="CharacterButtons">
      <li><a href="CreateCharacter.aspx">Create Character</a></li>
    </ul>
    </div>
</body>
</html>
</asp:Content>
