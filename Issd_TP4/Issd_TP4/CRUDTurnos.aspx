<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="CRUDTurnos.aspx.cs" Inherits="Issd_TP4.CRUDTurnos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Gestión de Turnos</h2>

    <asp:Label ID="Label1" runat="server">Profesional:</asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="nombre" DataValueField="id" DataSourceID="SqlProf"></asp:DropDownList>
    <br />

    <asp:Label ID="Label2" runat="server">Paciente:</asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" DataTextField="DatosCompletos" DataValueField="id" DataSourceID="SqlPac"></asp:DropDownList>
    <br />

    <asp:Label ID="Label3" runat="server">Motivo:</asp:Label>
    <asp:TextBox ID="tbmotivo" runat="server"></asp:TextBox> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo requerido" ControlToValidate="tbmotivo" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    <br />

    <asp:Label ID="Label4" runat="server">Fecha:</asp:Label>
    <asp:TextBox ID="tbfecha" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
    <br /><br />

   <asp:GridView ID="GridView1" runat="server" 
    DataSourceID="SqlTurnos" 
    AllowPaging="True" 
    DataKeyNames="id,idProfesional,idPaciente" 
    AutoGenerateColumns="True" 
    OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:CommandField ShowSelectButton="True" SelectText="Seleccionar"></asp:CommandField>
    </Columns>
</asp:GridView>
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="Seleccionar"></asp:CommandField>
        </Columns>
    </asp:GridView>
    <br />

    <asp:Button ID="Button1" runat="server" Text="Alta" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Baja" OnClick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Text="Modificacion" OnClick="Button3_Click" />

    <%-- DataSources --%>
    <asp:SqlDataSource ID="SqlPac" runat="server" ConnectionString="<%$ ConnectionStrings:ISSD-TP4-202501ConnectionString %>" 
        SelectCommand="SELECT id, nombre + ' ' + apellido + ' ' + dni AS DatosCompletos FROM Pacientes"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlProf" runat="server" ConnectionString="<%$ ConnectionStrings:ISSD-TP4-202501ConnectionString %>" 
        SelectCommand="SELECT [id], [nombre], [especialidad] FROM [Profesionales]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlTurnos" runat="server" ConnectionString="<%$ ConnectionStrings:ISSD-TP4-202501ConnectionString %>"
        SelectCommand="SELECT 
    T.id, 
    T.fecha, 
    T.motivo, 
    T.idProfesional, 
    T.idPaciente,
    Pr.nombre AS NombreProfesional, 
    Pa.nombre + ' ' + Pa.apellido AS NombrePaciente
FROM Turnos AS T
INNER JOIN Profesionales AS Pr ON T.idProfesional = Pr.id
INNER JOIN Pacientes AS Pa ON T.idPaciente = Pa.id"
        InsertCommand="INSERT INTO Turnos(fecha, motivo, idProfesional, idPaciente) VALUES (@fecha, @motivo, @idprof, @idpac)" UpdateCommand="UPDATE Turnos 
SET fecha = @fecha, 
    motivo = @motivo, 
    idProfesional = @idprof, 
    idPaciente = @idpac 
WHERE id = @id"
        DeleteCommand="DELETE FROM Turnos WHERE (id = @idgrid)">
        <DeleteParameters>
            <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="idgrid"></asp:ControlParameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="tbfecha" Name="fecha" PropertyName="Text" Type="DateTime" />
            <asp:ControlParameter ControlID="tbmotivo" Name="motivo" PropertyName="Text" />
            <asp:ControlParameter ControlID="DropDownList1" Name="idprof" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DropDownList2" Name="idpac" PropertyName="SelectedValue" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="fecha"></asp:Parameter>
            <asp:ControlParameter ControlID="tbmotivo" PropertyName="Text" Name="motivo"></asp:ControlParameter>
            <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="idprof"></asp:ControlParameter>
            <asp:ControlParameter ControlID="DropDownList2" PropertyName="SelectedValue" Name="idpac"></asp:ControlParameter>
            <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="id"></asp:ControlParameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>