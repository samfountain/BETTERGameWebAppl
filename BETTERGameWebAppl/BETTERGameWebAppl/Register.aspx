<%@ Page Title="Register" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BETTERGameWebAppl.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
<head>

</head>
<body>
    <section class="registerform">
        <form runat="server">
            <div>
            <asp:Label ID="lblfname" Text="First name" runat="server"></asp:Label><br />

            <asp:TextBox ID="firstname" runat="server"></asp:TextBox>
            <br/><br />
            <asp:Label ID="lbllname" Text="Last name" runat="server"></asp:Label><br />
            <asp:TextBox ID="lastname" runat="server"></asp:TextBox>
            <br/><br />
            <asp:Label ID="lblemail" Text="Email" runat="server"></asp:Label><br />
            <asp:TextBox ID="email" type="email" runat="server"></asp:TextBox>
            <br/><br />
             <asp:Label ID="lblparemail" Text="Parent email" runat="server"></asp:Label><br />
            <asp:TextBox ID="parentemail" runat="server"></asp:TextBox>
            <br/><br />
             <asp:Label ID="lblusername" Text="Username" runat="server"></asp:Label><br />
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
            <br/><br />
             <asp:Label ID="lblpassword" Text="Password" runat="server"></asp:Label><br />
            <asp:TextBox ID="password"  type="password" runat="server"></asp:TextBox>
                <br />
                <br />
            </div>
        </form>

        
    
        <button type="button" name="registerbutton">Register</button>
    </section>
</body>
</html>
</asp:Content>
