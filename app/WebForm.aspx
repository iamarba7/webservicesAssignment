@import NewWeb
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="NewWeb.WebForm" Trace="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Technologies Feedback</title>
</head>
<body>
    <h1>Technologies Feedback</h1>
    <form runat="server">
        <div>
            <label for="txtName">Name:</label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="txtComments">Comments:</label>
            <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
        </div>
        <div>
            <label for="ddlTechnologies">Select a Technology:</label>
            <asp:DropDownList ID="ddlTechnologies" runat="server">
                <asp:ListItem Text="ASP.NET" Value="ASP.NET"></asp:ListItem>
                <asp:ListItem Text="ADO.NET" Value="ADO.NET"></asp:ListItem>
                <asp:ListItem Text="C#" Value="C#"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
