<%@ Page Title="Login" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BETTERGameWebAppl.WebForm1" %>

<asp:Content ID="Content" ContentPlaceHolderID="Content" Runat="Server">
    <form id="form1" runat="server">

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    
    <section class="loginform">
        <asp:Login ID="Login" runat="server" DestinationPageUrl="~/Home.aspx">
            <LayoutTemplate>
                
    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Username</asp:Label>
        <br />                            
    <asp:TextBox ID="UserName" runat="server" Font-Size="Large"></asp:TextBox><br />
    <asp:RequiredFieldValidator 
                    id="UserNameValid"
                    ControlToValidate="UserName"
                    Display="Static"
                    ErrorMessage="Username is required!"
                    ValidationGroup="Login"
                    ForeColor="Red"
                    runat="server"/>
                <br />                             
    <br />
                                               
    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password</asp:Label>
    <br />                                
    <asp:TextBox ID="Password" runat="server" Font-Size="Large" TextMode="Password"></asp:TextBox><br />
    <asp:RequiredFieldValidator 
                    id="PasswordValid"
                    ControlToValidate="Password"
                    Display="Static"
                    ErrorMessage="Password is required!"
                    ValidationGroup="Login"
                    ForeColor="Red"
                    runat="server"/>
                <br />
    <br />                                
    <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
    <br />
    <br />                               
    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                   
    <asp:Button CssClass="HomeButtons" ID="LoginButton" runat="server" CommandName="Login" Text="Login" ValidationGroup="Login" />
                                    
            </LayoutTemplate>
        </asp:Login>
<br />
    
<p>Not a member yet? <br />
    <br />
    <asp:LinkButton CssClass="HomeButtons" PostBackUrl="~/Register.aspx" ID="register" runat="server">Register</asp:LinkButton></p>
    </section>
</body>
</html>
    </form>
</asp:Content>
