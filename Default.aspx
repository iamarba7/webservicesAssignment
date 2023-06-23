<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication.Default" Trace="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Web application in ASP.NET</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Web Services and Technologies</h1>
        <p>
            Enter your name:
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </p>
        <p>
            Enter your comments:
            <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine"></asp:TextBox>
        </p>
        <p>
            Select a technology:
            <asp:ListBox ID="lstTechnologies" runat="server">
                <asp:ListItem Text="ASP.NET"></asp:ListItem>
                <asp:ListItem Text="ADO.NET"></asp:ListItem>
                <asp:ListItem Text="C#"></asp:ListItem>
            </asp:ListBox>
        </p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </p>
        <p>
            <asp:Label ID="lblOutput" runat="server" Visible="false"></asp:Label>
        </p>
    </form>
</body>
</html>
