<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Título de la página</title>
<style>
  /* General styles */
  body {
    font-family: 'Roboto', sans-serif; /* Modern, popular font */
    background-color: #F8F9FA; /* Soft background */
    color: #333; /* Dark text */
    margin: 0; /* Remove default margin */
    padding: 0; /* Remove default padding */
    display: flex; /* Allow for vertical centering */
    justify-content: center; /* Center content horizontally */
    align-items: center; /* Center content vertically */
    min-height: 100vh; /* Set minimum height for full viewport */
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

  /* Hyperlink styles (base) */
  a {
    color: #FFF; /* White text for contrast */
    text-decoration: none; /* Remove underline */
    font-weight: bold; /* Emphasize links */
    padding: 10px 20px; /* Add some padding for better click area */
    border: 1px solid #CCC; /* Subtle border */
    border-radius: 5px; /* Rounded corners */
    transition: background-color 0.3s; /* Smooth hover effect */
    display: block; /* Display each link on a new line */
    margin-bottom: 15px; /* Add spacing between links */
  }

  /* Specific hyperlink hover effects */
  a:hover {
    background-color: #DDD; /* Light gray on hover (default) */
  }

  /* Specific hyperlink styles */
  #HyperLink1 { /* Alta de Usuarios */
    background-color: #254E7D; /* Light blue inspired by Argentina's flag */
  }

  #HyperLink1:hover {
    background-color: #0056B3; /* Darker blue on hover */
  }

  #HyperLink2 { /* Consulta */
    background-color: #FFCE56; /* Light yellow */
  }

  #HyperLink2:hover {
    background-color: #F7C139; /* Darker yellow on hover */
  }

  #HyperLink4 { /* Baja */
    background-color: #FF7F50; /* Light orange */
  }

  #HyperLink4:hover {
    background-color: #F0653A; /* Darker orange on hover */
  }

  #HyperLink3 { /* Modificacion */
    background-color: #9CCC65; /* Light green */
  }

  #HyperLink3:hover {
    background-color: #8CB34A; /* Darker green on hover */
  }
</style>
</head>
<body>
  <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Alta.aspx">Alta de Usuarios</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Consulta.aspx">Consulta</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="Baja.aspx">Baja</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Modificacion.aspx">Modificacion</asp:HyperLink>
    </div>
  </form>
</body>
</html>



