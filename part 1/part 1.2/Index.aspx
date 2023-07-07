<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="YourNamespace.Index" Trace="true"%>

<!DOCTYPE html>
<html>
<head>
    <title>Index</title>
    <link rel="stylesheet" type="text/css" href="Styles/Index.css">
</head>
<body style= "display:block;">
    <form runat="server">
        <div class="form-group">
            <h2 class="fancy-heading">Index Page</h2>
        <div>
            <asp:Button CssClass="fancy-button" ID="errorButton" runat="server" Text="Generate Error" OnClick="errorButton_Click" />
        </div><br /><br /><br /><br /><br /><br /><br /><br /><br />
        </div>
    </form>
</body>
</html>