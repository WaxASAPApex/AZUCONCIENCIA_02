<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificar_Paciente.aspx.cs" Inherits="AZUCONCIENCIA_02.Modificar_Paciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                             <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta name="author" content="Azuconciencia"/> 
<meta name="keywords" content="computadoras, soluciones, Accesorios, Equipos,Insumos, Impresoras, Electricos"/>
<meta name="description" content="pagina de informacion acerca de la diabetes"/>
<link rel="stylesheet" href="estilos/AYUDA.CSS"/>
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Nunito+Sans:wght@600&family=Assistant&display=swap" rel="stylesheet"/>
    <title>Modificar Pacientes</title>
    <style>
                                .Error{
    color: red;
     font-size: 13px;
}
/* Estilo general para el formulario */
.formulario {
    font-family: Arial, sans-serif;
    margin: 20px;
}

/* Estilo para el GridView */
.gridview {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

.gridview th, .gridview td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
}

.gridview th {
    background-color: #f4f4f4;
}

/* Estilo para las etiquetas y cajas de texto */
.label {
    display: block;
    margin-bottom: 10px;
    font-weight: bold;
}

.textbox {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box; /* Asegura que el padding se incluya en el ancho total */
}

/* Estilo para la tabla de datos */
.tabla-datos {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
}

.tabla-datos td {
    padding: 8px;
    border: 1px solid #ddd;
}

.tabla-datos td:first-child {
    text-align: right;
}

/* Estilo para los botones */
.boton {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 5px;
}

.boton:hover {
    background-color: #0056b3;
}

    </style>
</head>
<body>

                    	             <header> 
	<!-- Encabezado de la página que puede contener logotipos u otros elementos visuales -->

	<!-- Imagen que se muestra en el encabezado -->
	<img src="imagenes/azucologo.jpeg" />

	<!-- Líneas en blanco con <br> para separación visual -->
	<br/><br/>

	<!-- Navegación principal de la página dentro de un elemento <nav> -->
	<nav class="menu"> 
		<!-- Lista no ordenada <ul> que contiene los enlaces de navegación -->
		<ul> 
			<!-- Elementos de la lista <li> que contienen los enlaces <a> -->
			<li><a href="Index.aspx">Inicio</a></li>   
			<li><a href="Consulta_Experiencias.aspx">Experiencias</a></li>
			<li><a href="infodiabetes.aspx">Informacion acerca de la diabetes</a></li>
			<li><a href="Alta_Citas.aspx">Consultas</a></li>
			<li><a href="Informacion.aspx">Rutinas</a></li>
			<li><a href="Autenticacion_Medicos.aspx">Cuenta</a></li>
			<li><a href="AYUDA.aspx">Ayuda</a></li>
		</ul>
	</nav>

</header>

    <form id="form1" runat="server" cssclass="formulario">
    <asp:GridView ID="gvPaciente" runat="server" AutoGenerateColumns="False" DataKeyNames="PacienteID" DataSourceID="sqlPaciente" CssClass="gridview">
        <Columns>
            <asp:BoundField DataField="PacienteID" HeaderText="PacienteID" InsertVisible="False" ReadOnly="True" SortExpression="PacienteID" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
            <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" SortExpression="FechaNacimiento" />
            <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero" />
            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="sqlPaciente" runat="server" ConnectionString="<%$ ConnectionStrings:azuconcienciaConnectionString %>" SelectCommand="SELECT * FROM [Pacientes]"></asp:SqlDataSource>

    <br /><br />
    <asp:Label ID="lbPaciente" runat="server" CssClass="label" Text="Ingresa ID del Paciente a Modificar:"></asp:Label>
    <asp:TextBox ID="tbPaciente" runat="server" CssClass="textbox"></asp:TextBox>
    <br />
    <asp:Button ID="btnModificar" runat="server" CssClass="boton" Text="Modificar" OnClick="btnModificar_Click" />
    <asp:Button ID="btnCancelar" runat="server" CssClass="boton" Text="Cancelar" />

    <br /><br />

    <table id="tbDatos" runat="server" class="tabla-datos">

          <%-- Inicia Renglón 1 --%>
        <tr>
            <td>

                 <asp:RequiredFieldValidator ID="rfNombre" runat="server" ControlToValidate="tbNombre" Text="*" CssClass="Error" ErrorMessage="Campo Nombre Obligatorio en Fechas"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="reNombre" runat="server" ControlToValidate="tbNombre" ValidationExpression="^[a-zA-Z\s]*$" Text="*"  CssClass="Error" ErrorMessage="Error en Nombre solo letras y espacios"></asp:RegularExpressionValidator>
 
            </td>

            <td class="auto-style3">
                <asp:Label ID="lbNombre" runat="server" Text="Nombre(s):" CssClass="etiqueta"></asp:Label>
                <asp:TextBox ID="tbNombre" runat="server" CssClass="cuadro-texto" Width="308px"></asp:TextBox>
            </td>

            <td class="auto-style1">
                <asp:RangeValidator ID="rvFecha" runat="server" ControlToValidate="tbFecha" MinimumValue="1920" MaximumValue="2024" Text="*" CssClass="Error" ErrorMessage="Dia de naciemiento invalido (1920-2024)"></asp:RangeValidator>
          <asp:RequiredFieldValidator ID="rfNac" runat="server" ControlToValidate="tbFecha" Text="*" CssClass="Error" ErrorMessage="Campo Nombre Obligatorio en Fechas"></asp:RequiredFieldValidator>
  
            </td>

            <td class="celda">
                <asp:Label ID="lbFecha" runat="server" Text="Fecha de Nacimiento:" CssClass="etiqueta"></asp:Label>
               <asp:TextBox ID="tbFecha" runat="server" CssClass="cuadro-texto" Width="187px" TextMode="Date" ></asp:TextBox>

            </td>
        </tr>

        <%-- Inicia Renglón 2 --%>
        <tr>
            <td>
                 <asp:RequiredFieldValidator ID="rfaprellido" runat="server" ControlToValidate="tbApelldios" Text="*" CssClass="Error" ErrorMessage="Campo Apellido Obligatorio en "></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="reaprellido" runat="server" ControlToValidate="tbApelldios" ValidationExpression="^[a-zA-Z\s]*$" Text="*"  CssClass="Error" ErrorMessage="Error en Apellido solo letras y espacios"></asp:RegularExpressionValidator>
 
            </td>

            <td class="auto-style3">
                <asp:Label ID="lbApellidos" runat="server" Text="Apellidos:" CssClass="etiqueta"></asp:Label>
                <asp:TextBox ID="tbApelldios" runat="server" CssClass="cuadro-texto" Width="326px"></asp:TextBox>
            </td>

            <td class="auto-style2">
              <asp:Label ID="lbSexo" runat="server" Text="Sexo:" CssClass="etiqueta"></asp:Label>
             
           
                 <asp:RadioButtonList ID="rblSexo" runat="server" CssClass="textbox">
                    <asp:ListItem Value="F" Selected="True">Femenino</asp:ListItem>
                      <asp:ListItem Value="M" Selected="False">Masculino</asp:ListItem>
                 </asp:RadioButtonList>
             </td>
           
        </tr>

        <%-- Inicia Renglón 3 --%>
        <tr>
            <td>
                
                  <asp:RequiredFieldValidator ID="reCorreo" runat="server" ControlToValidate="tbCorreo" Text="*" CssClass="Error" ErrorMessage="Campo Correo Obligatorio"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbCorreo" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" Text="*" ErrorMessage="Formato de Correo electronico incorrecto" CssClass="Error"></asp:RegularExpressionValidator><br />
             
            </td>

            <td class="auto-style3">
                <asp:Label ID="lbCorreo" runat="server" Text="Correo Electrónico:" CssClass="etiqueta"></asp:Label>
                <asp:TextBox ID="tbCorreo" runat="server" CssClass="cuadro-texto" Width="318px"></asp:TextBox>
            </td>
        </tr>

        <%-- Inicia Renglón 4 --%>
        <tr>
            <td>
                 <asp:RequiredFieldValidator ID="rfTelefono" runat="server" ControlToValidate="tbTel" Text="*" CssClass="Error" ErrorMessage="Campo Telefono Obligatorio"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="reTel" runat="server" ControlToValidate="tbTel" ValidationExpression="^[0-9\s]{3}-[0-9]{7}$" Text="*" ErrorMessage="Solo Numeros y giones medios (311-111-1122)" CssClass="Error"></asp:RegularExpressionValidator>
        
            </td>

            <td class="auto-style3">
                <asp:Label ID="lbTel" runat="server" Text="Número de Teléfono:" CssClass="etiqueta"></asp:Label>
                <asp:TextBox ID="tbTel" runat="server" CssClass="cuadro-texto" Width="166px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:ValidationSummary ID="ErrorPacientes" runat="server" CssClass="Error" /><br />
            </td>
        </tr>
    </table>

    <!-- Botones -->
    <table id="tbbotones" runat="server">
        <tr>
            <td>
                <asp:Button ID="btnGuardar" runat="server" CssClass="boton" Text="Guardar" OnClick="btnGuardar_Click" />
                <asp:Button ID="Button1" runat="server" CssClass="boton" Text="Cancelar" />
            </td>
        </tr>
    </table>
</form>


                    <footer>
	<div class="cont">
		<h2>Contactanos</h2>
		<hr class="sep"/>
		<ul>
			<li><img src="imagenes/correo.png" alt="Logo Correo" height="30"/><a href="#"> Correo</a></li>
			<li><img src="imagenes/tel.png" alt="logo telefono" height="30"/><a href="#"> Telefono</a></li>
			<li><img src="imagenes/facebook.png" alt="logo facebook" height="30"/><a href="#"> Facebook</a></li>
		</ul>
	</div>
	<div class="cont">
		<h2>Informacion</h2>
		<hr class="sep"/>
		<ul>
			<li><a href="#">Terminos y Condiciones</a></li>
			<li><a href="#">Politica de Privacidad</a></li>
		</ul>
	</div>
</footer>
</body>
</html>
