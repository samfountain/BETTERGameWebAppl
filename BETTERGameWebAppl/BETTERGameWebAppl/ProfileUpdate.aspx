<%@ Page Title="Update Profile" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="ProfileUpdate.aspx.cs" Inherits="BETTERGameWebAppl.WebForm4" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" Runat="Server">
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
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
             <asp:Label ID="lblpassword" Text="Password" runat="server"></asp:Label><br />
            <asp:TextBox ID="password"  type="password" runat="server"></asp:TextBox>
                <br />
                <br />
            </div>
    <ul class="ProfileButtons">
        <li><a href="Profile.aspx">Back to Profile</a></li>
    </ul>

        </form>
</body>
</html>
</asp:Content>