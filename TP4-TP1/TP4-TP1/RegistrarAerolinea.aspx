<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarAerolinea.aspx.cs" Inherits="TP4_TP1.RegistrarAerolinea" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title></title>
  <style>
    body {
      margin: 0;
      padding: 20px;
      font-family: Arial, sans-serif;
    }

    form {
      display: flex;
      flex-direction: column;
      align-items: center;
      border: 1px solid #ccc;
      border-radius: 5px;
      padding: 20px;
    }

    #Label1, #Label2, #resultado {
      margin-bottom: 10px;
    }

    #TextBox1 {
      width: 200px;
      padding: 5px;
      border: 1px solid #ccc;
      border-radius: 3px;
    }

    #registrar, #menu {
      margin: 5px;
      padding: 10px 20px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    #registrar:hover, #menu:hover {
      background-color: #3e8e41;
    }
  </style>
</head>
<body>
  <form id="form1" runat="server">
    <div id="lbresultado">
      <asp:Label ID="Label1" runat="server" Text="Agregar Aerolínea<br>"></asp:Label>
      <asp:Label ID="Label2" runat="server" Text="Nombre: "></asp:Label>
        <asp:TextBox ID="tbnombre" runat="server"></asp:TextBox>
      <asp:Label ID="resultado" runat="server" Text="Registrado<br>"></asp:Label>
        <asp:Button ID="registrar" runat="server" Text="Registrar" OnClick="registrar_Click" />
        <asp:HyperLink ID="menu" runat="server" NavigateUrl="Menu.aspx">Menu</asp:HyperLink>
    </div>
  </form>
</body>
</html>
