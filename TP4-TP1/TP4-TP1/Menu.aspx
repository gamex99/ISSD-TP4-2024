<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="TP4_TP1.Menu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menú Navegación</title>
    <style runat="server">
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        #form1 {
            display: flex;  /* Arrange links horizontally */
            justify-content: space-between;  /* Distribute links evenly */
        }

        .nav-link {
            text-decoration: none;  /* Remove underline from links */
            color: #007bff;  /* Blue color for links */
            padding: 10px 15px;  /* Add padding around links */
            border: 1px solid #ddd;  /* Add a thin border */
            border-radius: 5px;  /* Rounded corners for links */
            margin: 0 5px;  /* Add space between links */
        }

        .nav-link:hover {
            background-color: #ddd;  /* Change background color on hover */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="GrillaVuelos.aspx" Text="Grilla" CssClass="nav-link"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="RegistrarAerolinea.aspx" Text="Registrar Aerolinea" CssClass="nav-link"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="RegistrarVuelo.aspx" Text="Registrar Vuelos" CssClass="nav-link"></asp:HyperLink>
        </div>
    </form>
</body>
</html>

