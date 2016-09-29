<%@ Page Title="Exercise Upload" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="Exercise.aspx.cs" Inherits="BETTERGameWebAppl.WebForm7" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
<form id="exerciseform" runat="server">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    <div>
        <asp:Label ID="lblexercisedone" Text="Exercises Done:" runat="server"></asp:Label><br />
        <asp:TextBox ID="exercisedone" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="lblexercisetime" Text="Exercise Duration:" runat="server"></asp:Label><br />
        <asp:TextBox ID="exercisetime" runat="server"></asp:TextBox>
        <br /><br />
        <button type="button" name="btnexercise">Submit Exercises</button>  
    </div>
</body>
</html>
</form>
</asp:Content>

