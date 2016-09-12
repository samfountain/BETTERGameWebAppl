<%@ Page Title="Register" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BETTERGameWebAppl.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
<head>

</head>
<body>
    <section class="registerform">
        <form>
             Username:<input type="text" name="username"><br>
             First name:<input type="text" name="firstname"><br>
             Last name:<input type="text" name="lastname"><br>
             Email: <input type="email" name="email"><br>
        </form>
    </section>
</body>
</html>
</asp:Content>
