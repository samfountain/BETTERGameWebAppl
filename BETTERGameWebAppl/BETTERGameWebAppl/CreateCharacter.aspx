<%@ Page Title="Create Character" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="CreateCharacter.aspx.cs" Inherits="BETTERGameWebAppl.WebForm12" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    <form id="createcharacterform" runat="server">
    <div>
    <asp:Label ID="lblcharelement" Text="Element: " runat="server"></asp:Label> <br />
    <asp:DropDownList ID="ddlelement" runat="server" Width="200px" Font-Size="Large">
        <asp:ListItem Text="Select Element" Value="0"></asp:ListItem>
        <asp:ListItem Text="Fire" Value="1"></asp:ListItem>
        <asp:ListItem Text="Water" Value="2"></asp:ListItem>
        <asp:ListItem Text="Earth" Value="3"></asp:ListItem>
        <asp:ListItem Text="Air" Value="4"></asp:ListItem>
    </asp:DropDownList>
        <br />
        <asp:RequiredFieldValidator ID="elementvalidator" 
            ControlToValidate="ddlelement"
            InitialValue="0"
            Display="Static"
            ErrorMessage="Element is required!" 
            ForeColor="Red"
            ValidationGroup="1"
            runat="server" />
    <br /> <br />
    <asp:Label ID="lblcharname" Text="Character Name:" runat="server"></asp:Label><br />
    <asp:TextBox ID="charname" runat="server" Font-Size="Large"></asp:TextBox> <br />
    <asp:RequiredFieldValidator id="charNameValidator"
                    ControlToValidate="charname"
                    Display="Static"
                    ErrorMessage="Character Name is required!"
                    ForeColor="Red"
                    ValidationGroup="1"
                    runat="server"/>
        <br /><br />
    <asp:LinkButton CssClass="HomeButtons" ID="btncharcreate" runat="server" ValidationGroup="1">Create</asp:LinkButton>

        <br /> <br /> 
        <asp:LinkButton CssClass="HomeButtons" PostBackUrl="~/Character.aspx" ID="btnBack" runat="server">Back</asp:LinkButton>
    </div>
    </form>
</body>
</html>
</asp:Content>
