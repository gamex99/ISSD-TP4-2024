<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarAerolinea.aspx.cs" Inherits="TP4_TP2.RegistrarAerolinea" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    <style>
        /* Estilos generales */
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 20px;
            background-color: #f7f7f7;
        }
        
        /* Estilos para el formulario */
        #form1 {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            max-width: 500px;
            margin: 0 auto;
        }
        
        /* Estilos para etiquetas */
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
        }
        
        /* Estilos para botones */
        button {
            padding: 8px 16px;
            border-radius: 4px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            margin-top: 10px;
        }
        
        /* Estilos para cuadros de texto */
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        
        /* Estilos para la tabla (GridView) */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        
        /* Estilos para hipervínculos */
        a {
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Registrar Aerolínea:" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Button ID="btnregistrar" runat="server" Text="Registrar" OnClick="btnregistrar_Click" CssClass="btn btn-primary" />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" DataKeyNames="id" CssClass="table table-striped">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
                </Columns>
            </asp:GridView>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Menu.aspx" CssClass="btn btn-link">Menú</asp:HyperLink>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TP4-TP2ConnectionString %>" DeleteCommand="DELETE FROM [Aerolineas] WHERE [id] = @id" InsertCommand="INSERT INTO [Aerolineas] ([nombre]) VALUES (@nombre)" ProviderName="<%$ ConnectionStrings:TP4-TP2ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Aerolineas]" UpdateCommand="UPDATE [Aerolineas] SET [nombre] = @nombre WHERE [id] = @id">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="nombre" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre" Type="String"></asp:Parameter>
                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                </UpdateParameters> 
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
