<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="YourNamespace.Login" %>

<!DOCTYPE html>
<!--LOGIN-->
<html>
    <!--Start head Tag-->
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="Styles/Login.css"/>
</head>
    <!--End head Tag-->
<body>
    <!--Start body Tag  -->

    <!--Start form tag-->
    <form id="form1" runat="server">
        <div>
            <h2 class="fancy-heading">Login</h2>
            <asp:Label CssClass="fancy-label" ID="lblMessage" runat="server" Text=""></asp:Label>
            <br />
                <div class="form-group">
                    <label CssClass="fancy-label" for="txtUsername">Username:</label>
                <asp:TextBox CssClass="fancy-input" ID="txtUsername" runat="server"></asp:TextBox>
                </div>
                <br />
                        <div class="form-group">
                            <label CssClass="fancy-label"  for="txtPassword">Password:</label>
                        <asp:TextBox CssClass="fancy-input" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        <br /><br /><br />
                        <asp:Button CssClass="fancy-button" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </div>
    </form>
    <!--End form Tag  -->
</body>
    <!--End body tag-->
</html>
