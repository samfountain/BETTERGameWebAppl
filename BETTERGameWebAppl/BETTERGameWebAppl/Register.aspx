<%@ Page Title="Register" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BETTERGameWebAppl.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
<head>

</head>
<body>
    <section class="registerform">
        <form>
            First name: <input type="text" name="firstname"/><br>
            Last name: <input type="text" name="lastname"/><br>
            Email: <input type="email" name="email"/><br>
            Parent Email: <input type="email" name="parentemail"/><br>
            Username: <input type="text" name="username"/><br>
            Password: <input type="password" name="password"/> <br>
        </form>
        <button type="button" name="registerbutton">Register</button>
    </section>
</body>
</html>
</asp:Content>
