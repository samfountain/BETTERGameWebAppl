<%@ Page Title="Update Profile" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="ProfileUpdate.aspx.cs" Inherits="BETTERGameWebAppl.WebForm4" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" Runat="Server">
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Update Profile</title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    <%--Page to allow users to update their profile details--%>
    
            <div>
            <%--Similar layout to the register page, labels, textboxes and validators for the fields to update.--%>
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
             
                <br />
                <%--Compare validator for email addresses--%>
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
        <asp:LinkButton CssClass="HomeButtons" ID="btnUpdate" OnClick="OnClick_btnUpdate" runat="server" ValidationGroup="1">Submit</asp:LinkButton> 
        <asp:LinkButton PostBackUrl="~/Profile.aspx"  CssClass="HomeButtons" ID="btnBackToProfile" runat="server">Back</asp:LinkButton>

</body>
</html>
</asp:Content>