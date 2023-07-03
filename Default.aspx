<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="YourNamespace.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Styles/Default.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="fancy-heading"><b>Welcome to PART 2 Assignment solution</b></h1>
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            <br />
           1: <button type="button" class="fancy-button" onclick="location.href='Login.aspx'">Authentication_Session</button> <br /><br />
           2: <button type="button" class="fancy-button" onclick="location.href='CookiePage.aspx'">Cookies and Advertisements</button><br /><br /> 
           3: <asp:Button CssClass="fancy-button" ID="btnDeleteCookies" runat="server" Text="Delete Cookies" OnClick="btnDeleteCookies_Click" />
        </div>
    </form>
</body>
</html>
