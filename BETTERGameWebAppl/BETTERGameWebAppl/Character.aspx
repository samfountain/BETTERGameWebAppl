<%@ Page Title="Character" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="Character.aspx.cs" Inherits="BETTERGameWebAppl.WebForm6" %>
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
    CHARACTER NAME:  <br />
    <asp:Label ID="lblcname" Text="Champion" runat="server"></asp:Label><br /><br />
    ELEMENT: <br />
    <asp:Label ID="lblelement" Text="Fire" runat="server"></asp:Label><br /><br />
    LEVEL: <br />
    <asp:Label ID="lbllevel" Text="2" runat="server"></asp:Label><br /><br />
    STEP: <br />
    <asp:Label ID="lblstep" Text="3" runat="server"></asp:Label><br /><br />
    <ul class="CharacterButtons">
      <asp:LinkButton CssClass="HomeButtons" PostBackUrl="~/CreateCharacter.aspx" ID="btnCreateChar" runat="server">Create</asp:LinkButton>
    </ul>
    </div>
        </form>
</body>
</html>
</asp:Content>
