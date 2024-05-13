<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarVuelo.aspx.cs" Inherits="TP4_TP1.RegistrarVuelo" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Registrar Vuelo</title>
<style>
  body {
    font-family: Arial, sans-serif;  /* Set the default font */
  }
  
  form {
    width: 400px;  /* Set a width for the form */
    margin: 0 auto;  /* Center the form horizontally */
    padding: 20px;  /* Add some padding for better look */
    border: 1px solid #ccc;  /* Add a border to the form */
  }
  
  label {
    display: block;  /* Make labels display on a new line */
    margin-bottom: 5px;  /* Add some space between labels and fields */
  }
  
  input[type="text"], input[type="submit"] {
    width: 100%;  /* Set the width for text input and submit button */
    padding: 10px;  /* Add padding for better look */
    border: 1px solid #ccc;  /* Add a border to the input fields */
  }
  
  .btnregistrar {  /* Add a class for styling the register button */
    background-color: #4CAF50;  /* Green color */
    color: white;  /* White text color */
  }
  
  .btnregistrar:hover {  /* Add hover effect for the register button */
    background-color: #45A049;
  }
  
  .lbresultado {
    color: green;  /* Set the color for the result label */
  }
</style>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <asp:Label ID="Label1" runat="server" Text="Registrar Vuelo"></asp:Label>
      <asp:Label ID="Label2" runat="server" Text="Numero De Vuelo: "></asp:Label>
      <asp:TextBox runat="server" ID="tbvuelo"></asp:TextBox>
        <asp:DropDownList ID="dropdown" runat="server" DataTextField="Aerolineas" DataValueField="id" DataSourceID="SqlDataSource1"></asp:DropDownList>
        <asp:Label ID="lbresultado" runat="server" Text="" class="lbresultado"></asp:Label>
        <asp:Button ID="btnregistrar" runat="server" Text="Registrar" class="btnregistrar" OnClick="btnregistrar_Click" />
        <asp:HyperLink ID="Button1" runat="server" NavigateUrl="Menu.aspx">Menu</asp:HyperLink>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT 0 AS id, 'Seleccionar' AS Aerolineas
  UNION 
  SELECT [id], [nombre] FROM [Aerolineas]"></asp:SqlDataSource>

    </div>
  </form>
</body>
</html>
