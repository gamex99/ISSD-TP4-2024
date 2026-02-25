<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="CRUDProfesionalesM.aspx.cs" Inherits="Issd_TP4.CRUDProfesionalesM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div>
            <h2>Lista de Profesionales</h2>
            
            <asp:SqlDataSource
        ID="dsProfesionales"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:ISSD-TP4-202501ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ISSD-TP4-202501ConnectionString.ProviderName %>"
        SelectCommand="SELECT [id], [nombre], [especialidad] FROM [Profesionales] ORDER BY [especialidad]" InsertCommand="INSERT INTO Profesionales (nombre, especialidad) VALUES (@nombre, @especialidad)" UpdateCommand="UPDATE Profesionales SET nombre=@nombre, especialidad=@especialidad WHERE id=@id" DeleteCommand="DELETE FROM Profesionales WHERE id = @id">
    <DeleteParameters>
        <asp:Parameter Name="id"></asp:Parameter>
    </DeleteParameters>
    <InsertParameters>
        <asp:ControlParameter ControlID="tbnombre" PropertyName="Text" Name="nombre"></asp:ControlParameter>
        <asp:ControlParameter ControlID="tbespecialidad" PropertyName="Text" Name="especialidad"></asp:ControlParameter>
    </InsertParameters>
            <UpdateParameters>
        <asp:Parameter Name="nombre"></asp:Parameter>
        <asp:Parameter Name="especialidad"></asp:Parameter>
        <asp:Parameter Name="id"></asp:Parameter>
    </UpdateParameters>
</asp:SqlDataSource>

            <asp:GridView ID="GridView1" runat="server" DataSourceID="dsProfesionales" AllowSorting="True" AllowPaging="True" DataKeyNames="id">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ></asp:CommandField>
    </Columns>
</asp:GridView>

            <hr />

            <h3>Agregar Nuevo</h3>
            Nombre: <asp:RequiredFieldValidator runat="server" ErrorMessage="Campo Requerido" ControlToValidate="tbnombre"></asp:RequiredFieldValidator><asp:TextBox ID="tbnombre" runat="server"></asp:TextBox>
            Especialidad: <asp:RequiredFieldValidator runat="server" ErrorMessage="Campo requrido" ControlToValidate="tbespecialidad"></asp:RequiredFieldValidator><asp:TextBox ID="tbespecialidad" runat="server"></asp:TextBox>
            
            <asp:Button ID="btnSubmit" runat="server" Text="Enviar" OnCommand="Insert" />
        </div>

</asp:Content>
