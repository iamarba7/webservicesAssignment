<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Client.aspx.cs"  Inherits="Part_III._2.Client" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" align="center">
        <h1>Lottery Service Client</h1>
      
        <br />
        <div>
            <asp:Label ID="randomNumberLabel" runat="server"></asp:Label>
        </div>
          <br />
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Produce random" Width="130px" />
        </div>
    </form>
</body>
</html>
