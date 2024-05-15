<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarVuelo.aspx.cs" Inherits="TP4_TP2.RegistrarVuelo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="RegistrarVuelo:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Aerolinea"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="nombre" DataValueField="id" DataSourceID="SqlDataSource1"></asp:DropDownList>
           
            <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
                </Columns>
            </asp:GridView>
           

            <asp:Label ID="Label3" runat="server" Text="Filtrar Segun Aerolinea:"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" DataTextField="nombre" DataValueField="id" DataSourceID="SqlDataSource1"></asp:DropDownList>
            <asp:Button ID="Button2" runat="server" Text="Filtrar" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Desfiltrar" OnClick="Button3_Click" />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Menu.aspx">Menu</asp:HyperLink>
                        
            
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TP4-TP2ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:TP4-TP2ConnectionString2.ProviderName %>" SelectCommand="SELECT [id], [nombre] FROM [Aerolineas]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TP4-TP2ConnectionString3 %>" DeleteCommand="DELETE FROM [Vuelos] WHERE [id] = @id" InsertCommand="INSERT INTO [Vuelos] ([vuelo], [idAerolinea]) VALUES (@vuelo, @idAerolinea)" ProviderName="<%$ ConnectionStrings:TP4-TP2ConnectionString3.ProviderName %>" SelectCommand="SELECT v.*, a.nombre AS nombreAerolinea
FROM Vuelos v
JOIN Aerolineas a ON v.idAerolinea = a.id"
                UpdateCommand="UPDATE [Vuelos] SET [vuelo] = @vuelo, [idAerolinea] = @idAerolinea WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="vuelo" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="idAerolinea" PropertyName="SelectedValue" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="vuelo" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="idAerolinea" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
