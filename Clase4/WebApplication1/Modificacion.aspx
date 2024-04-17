<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificacion.aspx.cs" Inherits="WebApplication1.Modificacion" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Formulario de Búsqueda y Modificación</title>
<style>
  /* General styles */
  body {
    font-family: 'Roboto', sans-serif; /* Modern, popular font */
    background-color: #F8F9FA; /* Soft background */
    color: #333; /* Dark text */
    margin: 0; /* Remove default margin */
    padding: 20px; /* Add some padding */
  }

  /* Form container */
  form#form1 {
    background-color: #FFF; /* White background for form */
    padding: 30px; /* Add some padding inside the form */
    border-radius: 10px; /* Rounded corners for a softer look */
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
    max-width: 500px; /* Limit form width for responsiveness */
    margin: 0 auto; /* Center the form horizontally */
  }

  /* Label styles */
  label {
    display: block; /* Display each label on a new line */
    margin-bottom: 5px; /* Add spacing between labels and inputs */
  }

  /* Input styles */
  input[type="text"] {
    width: 100%; /* Make textboxes full width */
    padding: 10px; /* Add some padding for better usability */
    border: 1px solid #CCC; /* Subtle border */
    border-radius: 5px; /* Rounded corners */
  }

  /* Button styles */
  button {
    background-color: #3498DB; /* Blue for search, inspired by finding */
    color: #FFF; /* White text */
    padding: 10px 20px; /* Add some padding */
    border: none; /* Remove default button border */
    border-radius: 5px; /* Rounded corners */
    cursor: pointer; /* Indicate clickable element */
    transition: background-color 0.3s; /* Smooth hover effect */
    margin-right: 10px; /* Add some margin for better spacing */
  }

  button:hover {
    background-color: #2980B9; /* Darker blue on hover */
  }

  button#Button2 {  /* Modify button styles */
    background-color: #2ECC71; /* Green for modification, inspired by success */
  }

  button#Button2:hover {
    background-color: #27AE60; /* Darker green on hover */
  }

  /* Success message styles */
  .success-message {
    color: green; /* Green for successful search or modification */
  }
</style>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" />
      <asp:Label ID="Label4" runat="server" Text="" class="success-message"></asp:Label>
      <br/>  <asp:Label ID="Label2" runat="server" Text="Clave:"></asp:Label>
      <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
      <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
      <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Modificar" OnClick="Button2_Click" />
      <asp:Label ID="Label5" runat="server" Text="" class="success-message"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Default.aspx">Menu</asp:HyperLink>

    </div>
      </form>
</body>
</html>