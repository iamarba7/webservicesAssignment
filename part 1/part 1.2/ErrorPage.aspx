<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="YourNamespace.ErrorPage" Trace="true"%>

<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <link rel="stylesheet" type="text/css" href="Styles/Errorpage.css">
</head>
<body style= "display:block;">
    <h1 class="fancy-heading">An error occurred</h1>
    <asp:Label ID="errorMessageLabel" runat="server"></asp:Label>
</body>
</html>