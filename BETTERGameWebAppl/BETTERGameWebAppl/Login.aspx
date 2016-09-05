<%@ Page Title="Login" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BETTERGameWebAppl.WebForm1" %>

<asp:Content ID="HomeContent" ContentPlaceHolderID="Content" Runat="Server">
    <form id="form1" runat="server">

    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

</head>
<body>
    <section class="loginform cf">
        <asp:Login ID="Login" runat="server" DestinationPageUrl="~/Home.aspx">
        </asp:Login>

    </section>
</body>
</html>
    </form>
</asp:Content>
