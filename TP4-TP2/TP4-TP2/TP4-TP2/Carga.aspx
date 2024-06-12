<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Carga.aspx.cs" Inherits="TP4_TP2.Formulario_web11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div>
    <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />
    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Descargar" HeaderText="Descargar" ShowHeader="True" Text="Botón" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</div>
</asp:Content>
