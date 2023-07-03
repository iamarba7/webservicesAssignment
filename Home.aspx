<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="YourNamespace.Home" %>

<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="Styles/Home.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p class="fancy-paragraph">Welcome, <asp:Label ID="lblUsername" runat="server" Text=""></asp:Label>!</p>
            <p class="fancy-sentence">Session ID: <%= Session.SessionID %></p>
            <br />
            <asp:Button CssClass="fancy-button" ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        </div>
    </form>
</body>
</html>
