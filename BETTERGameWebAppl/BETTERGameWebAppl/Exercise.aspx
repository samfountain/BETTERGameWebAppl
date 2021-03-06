﻿<%@ Page Title="Exercise Upload" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="Exercise.aspx.cs" Inherits="BETTERGameWebAppl.WebForm7" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%--Exercise page is where users submit the exercise they have done--%>
    <title>Excersise</title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
    <div>
        <asp:Label ID="lblexercisedone" Text="Exercises Done:" runat="server"></asp:Label><br />
        <%--Text box for user to enter a description of exercises--%>
        <asp:TextBox ID="exercisedone" runat="server" Font-Size="Large"></asp:TextBox><br />
        <%--A required field validator that ensures that the user has written something in the text box--%>
        <asp:RequiredFieldValidator id="exerciseDoneValidator"
                    ControlToValidate="exercisedone"
                    Display="Dynamic"
                    ErrorMessage="Exercise description is required!"
                    ForeColor="Red"
                    ValidationGroup="1"
                    runat="server"/>
        <br /><br />
        <asp:Label ID="lblexercisetime" Text="Exercise Duration (Minutes):" runat="server"></asp:Label><br />
        <%--Text box for user to enter a duration of exercises--%>
        <asp:TextBox ID="exercisetime" runat="server" Font-Size="Large"></asp:TextBox><br />
        <asp:RequiredFieldValidator id="exerciseTimeValidator"
                    ControlToValidate="exercisetime"
                    Display="Dynamic"
                    ErrorMessage="Exercise time is required!"
                    ForeColor="Red"
                    ValidationGroup="1"
                    runat="server"/>
        <br />
        <asp:CompareValidator id="exerciseTimeNum"
                    ControlToValidate="exercisetime"
                    Operator="DataTypeCheck"
                    Type="Integer"
                    Display="Dynamic"               
                    ErrorMessage="Exercise time must be a number!"
                    ForeColor="Red"
                    ValidationGroup="1"
                    runat="server"/>
        <asp:Label ID="exerciceSubmitted" Visible="false" ForeColor="Red" runat="server" Text="Label">You have already submitted exercise today!</asp:Label>
        <br /><br />
        
        <%--Link button to submit exercises--%>   
        <asp:LinkButton CssClass="HomeButtons" ID="btnSubmit" runat="server" CommandName="Exercise" Onclick="Exercise_Click" ValidationGroup="1">Submit</asp:LinkButton>  
    </div>
</body>
</html>
</asp:Content>

