<%@ Page Title="Register" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BETTERGameWebAppl.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
    <title>Register</title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    <%--Register page, where users fill in details to create an account--%>
    <section class="registerform">
        <form runat="server">
            <div>
            <%-- labels and textboxes, with required field validators attached below.--%>
            <asp:Label ID="lblfname" Text="First name" runat="server" AssociatedControlID="firstname"></asp:Label><br />
            <asp:TextBox ID="firstname" runat="server" Font-Size="Large"></asp:TextBox>
            <br/>
            <asp:RequiredFieldValidator 
                    id="firstNameValid"
                    ControlToValidate="firstname"
                    Display="Static"
                    ErrorMessage="First name is required!"
                    ValidationGroup="1"
                    ForeColor="Red"
                    runat="server"/> 
            <br/>
            <asp:Label ID="lbllname" Text="Last name" runat="server" AssociatedControlID="lastname"></asp:Label><br />
            <asp:TextBox ID="lastname" runat="server" Font-Size="Large"></asp:TextBox>
            <br/>
            <asp:RequiredFieldValidator 
                    id="lastNameValid"
                    ControlToValidate="lastname"
                    Display="Static"
                    ErrorMessage="Last name is required!"
                    ValidationGroup="1"
                    ForeColor="Red"
                    runat="server"/>
            <br/>
            <asp:Label ID="lblemail" Text="Email" runat="server"></asp:Label><br />
            <asp:TextBox ID="email" type="email" runat="server" Font-Size="Large"></asp:TextBox>
            <br/>
            <asp:RequiredFieldValidator 
                    id="emailValid"
                    ControlToValidate="email"
                    Display="Static"
                    ErrorMessage="Email is required!"
                    ValidationGroup="1"
                    ForeColor="Red"
                    runat="server"/>
            <br />
             <asp:Label ID="lblparemail" Text="Parent email" runat="server"></asp:Label><br />
            <asp:TextBox ID="parentemail" runat="server" Font-Size="Large"></asp:TextBox>
            <br/>
            <asp:RequiredFieldValidator 
                    id="parentEmailValid"
                    ControlToValidate="parentemail"
                    Display="Static"
                    ErrorMessage="parent email is required!"
                    ValidationGroup="1"
                    ForeColor="Red"
                    runat="server"/>    
            <br />
             <asp:Label ID="lblusername" Text="Username" runat="server"></asp:Label><br />
            <asp:TextBox ID="username" runat="server" Font-Size="Large"></asp:TextBox>
            <br/>
            <asp:RequiredFieldValidator 
                    id="usernameValid"
                    ControlToValidate="username"
                    Display="Static"
                    ErrorMessage="Username is required!"
                    ValidationGroup="1"
                    ForeColor="Red"
                    runat="server"/>     
            <br />
             <asp:Label ID="lblpassword" Text="Password" runat="server"></asp:Label><br />
            <asp:TextBox ID="password"  type="password" runat="server" Font-Size="Large"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator 
                id="passwordValid"
                ControlToValidate="password"
                Display="Static"
                ErrorMessage="Password is required!"
                ValidationGroup="1"
                ForeColor="Red"
                runat="server"/> 
            <br />
            <br />
            <%--Compare validator to ensure the email address and parent email address are not the same--%>
            <asp:CompareValidator 
                ID="compareEmail" 
                runat="server" 
                ErrorMessage="Supplied email and parent email cannot be the same."
                ControlToCompare="email"
                ForeColor="Red"
                Type="String"
                Operator="NotEqual"
                ValidationGroup="1"
                ControlToValidate="parentemail">
            </asp:CompareValidator>
                <br />
                <br />
                <br />

            </div>
            <asp:LinkButton CssClass="HomeButtons" ID="btnRegister" runat="server" ValidationGroup="1">Register</asp:LinkButton>
        </form>
    
        
    </section>
</body>
</html>
</asp:Content>
