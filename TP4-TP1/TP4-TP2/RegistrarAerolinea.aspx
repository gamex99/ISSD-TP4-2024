<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarAerolinea.aspx.cs" Inherits="TP4_TP2.RegistrarAerolinea" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <asp:Label ID="Label1" runat="server" Text="Registrar Aerolinea:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="btnregistrar" runat="server" Text="Registrar" OnClick="btnregistrar_Click" />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" DataKeyNames="id">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
                </Columns>
            </asp:GridView>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Menu.aspx">Menu</asp:HyperLink>
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
