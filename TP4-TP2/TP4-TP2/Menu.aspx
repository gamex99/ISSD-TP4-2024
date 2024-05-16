<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="TP4_TP2.Menu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    <style>
        /* Estilos generales */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            color: #333;
        }
        
        /* Estilos para el contenedor principal */
        #container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            box-sizing: border-box;
            text-align: center; /* Centrar contenido dentro del contenedor */
        }
        
        /* Estilos para el formulario */
        #form1 {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            display: inline-block; /* Evitar que el formulario se extienda al 100% del contenedor */
        }
        
        /* Estilos para el encabezado */
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }
        
        /* Estilos para los hipervínculos */
        a {
            display: inline-block;
            padding: 12px 24px;
            margin: 10px;
            font-size: 18px;
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        
        a:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
        }
        
        /* Estilos para el formulario en dispositivos pequeños */
        @media (max-width: 768px) {
            #form1 {
                padding: 20px;
            }
            
            a {
                display: block;
                width: 100%;
                text-align: center;
                margin: 10px 0;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <h1>Menú de Opciones</h1>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegistrarAerolinea.aspx">Registrar Aerolínea</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/RegistrarVuelo.aspx">Registrar Vuelo</asp:HyperLink>
        </div>
    </form>
</body>
</html>

