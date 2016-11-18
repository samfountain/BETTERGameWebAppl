<%@ Page Title="Hall Of Gods" Language="C#" MasterPageFile="~/BETTERGameMaster.Master" AutoEventWireup="true" CodeBehind="HallOfGods.aspx.cs" Inherits="BETTERGameWebAppl.WebForm5" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
        
        <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" href="MasterStyleSheet.css"/>
</head>
<body>
        <asp:DataList ID="dlHallOfGods" runat="server" DataSourceID="hogDatasource" RepeatColumns = "3" CellSpacing = "3" RepeatLayout = "Table">
    <ItemTemplate>
        <table class = "table">
            <tr>
                <th colspan="2">
                    <b><%# Eval("characterName") %></b>
                </th>
            </tr>
            <tr>
                <td colspan="2">
                    Username: <%# Eval("userName") %>
                </td>
            </tr>
            <tr>
                <td>
                    Element:
                </td>
                <td>
                    <%# Eval("element")%>
                </td>
            </tr>
            <tr>
                <td>
                    Date:
                </td>
                <td>
                    <%# Eval("date")%>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="hogDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:BetterGameDB %>"
    SelectCommand="SELECT * FROM God"></asp:SqlDataSource>

    </div>
</body>
</html>
</asp:Content>

