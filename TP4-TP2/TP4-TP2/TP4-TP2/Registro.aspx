<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TP4_TP2.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <asp:Label ID="Label1" runat="server" Text="Email: "></asp:Label>
 <asp:TextBox ID="tbemail" runat="server"></asp:TextBox>
 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbemail" Display="Dynamic" ErrorMessage="El valor ingresado no es un Email" ForeColor="#CC3300" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator>
 <br />

 <asp:Label ID="Label2" runat="server" Text="Username: "></asp:Label>
 <asp:TextBox ID="tbusername" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo Requerido" ControlToValidate="tbusername"></asp:RequiredFieldValidator>
 <br />

 <asp:Label ID="Label3" runat="server" Text="Edad: "></asp:Label>
 <asp:TextBox ID="tbedad" runat="server"></asp:TextBox>
 <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbedad" Display="None" ErrorMessage="La edad no esta entre 12 y 99" ForeColor="#CC3300" MaximumValue="99" MinimumValue="12" Type="Integer"></asp:RangeValidator>
 <br />

 <asp:Label ID="Label4" runat="server" Text="Contraseña: "></asp:Label>
 <asp:TextBox ID="tbcontrasena" runat="server" TextMode="Password"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo Requeridpo" ControlToValidate="tbcontrasena"></asp:RequiredFieldValidator>
 <br />

 <asp:Label ID="Label5" runat="server" Text="Repetir Contraseña: "></asp:Label>
 <asp:TextBox ID="tbrepetir" runat="server" TextMode="Password"></asp:TextBox>
 <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Las contraseñas no son iguales" ControlToCompare="tbcontrasena" ControlToValidate="tbrepetir"></asp:CompareValidator>
 <br />

 <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
 <br />

 Cookie: <asp:Label ID="lbcookie" runat="server" Text=""></asp:Label><br />
 Session: <asp:Label ID="lbsession" runat="server" Text=""></asp:Label>
</asp:Content>
