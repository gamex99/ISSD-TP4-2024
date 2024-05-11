﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GrillaVuelos.aspx.cs" Inherits="TP4_TP1.GrillaVuelos" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Grilla de Vuelos</title>
    <style runat="server">
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        .grid-container {  /* Container for label, dropdown, and grid */
            display: flex;
            flex-direction: column;  /* Stack elements vertically */
            width: 80%;
            margin: 0 auto;  /* Center the container horizontally */
        }

        .grid-label {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .dropdown-container {  /* Container for dropdown and margin */
            margin-bottom: 15px;
        }

        #dropdown {
            width: 100%;
            padding: 5px;
        }

        .grid-view {
            border-collapse: collapse;
            width: 100%;
        }

        .grid-view th,
        .grid-view td {
            border: 1px solid #ccc;
            padding: 5px;
            text-align: center;
        }

        .hyperlink-container {  /* Container for hyperlink with margin */
            margin-top: 10px;
            text-align: right;  /* Align hyperlink to the right */
        }

        .hyperlink {
            text-decoration: none;
            color: #007bff;
        }

        .hyperlink:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="grid-container">
            <asp:Label ID="Label1" runat="server" Text="Grilla de vuelos" Class="grid-label"></asp:Label>
            <div class="dropdown-container">
                <asp:DropDownList ID="dropdown" runat="server" DataTextField="Aerolineas" DataValueField="id" DataSourceID="CBAerolineas" AutoPostBack="True">
                    <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                </asp:DropDownList>
            </div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="GridVuelos" Class="grid-view"></asp:GridView>
            <asp:SqlDataSource ID="CBAerolineas" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT 0 AS id, 'Seleccionar' AS Aerolineas
  UNION 
  SELECT [id], [nombre] FROM [Aerolineas]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="GridVuelos" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT v.id, v.Vuelo, a.nombre 
  FROM Vuelos v
  INNER JOIN Aerolineas a ON v.id = a.id WHERE (v.idAerolinea = @idAerolinea) OR (@idAerolinea = 0)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="dropdown" PropertyName="SelectedValue" DefaultValue="0" Name="idAerolinea"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <div class="hyperlink-container">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Menu.aspx" Text="Menu" Class="hyperlink"></asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
