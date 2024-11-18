<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificacion_Medico.aspx.cs" Inherits="AZUCONCIENCIA_02.Modificacion_Medico" %>

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
    <title>Modificar Medicos</title>

    <style>
        /* Estilo del formulario */
        .formulario {
            background-color: #FFFFFF;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 1000px; /* Ajustado para el GridView */
            margin-top: 40px; /* Espacio superior para separar del header */
            margin-left: 520px; /* Margen izquierdo añadido como solicitado */
        }

        /* Estilo del GridView */
        .gridview {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .gridview th, .gridview td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .gridview th {
            background-color: #89CFF1;
            color: #fff;
        }

        .gridview tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        /* Estilo de los botones */
        .botonIS {
            margin: 5px;
            padding: 10px 20px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .botonIS:hover {
            background-color: #0056b3;
        }

        /* Estilo de la tabla de datos y botones */
        #tbdatos, #tbbotones {
            width: 100%;
            margin-bottom: 20px;
        }

        #tbdatos td, #tbbotones td {
            padding: 10px;
        }

        #tbdatos {
            border-collapse: collapse;
        }

        #tbdatos td {
            border: 1px solid #ddd;
        }

        #tbbotones td {
            text-align: center;
        }
                        .Error{
    color: red;
     font-size: 13px;
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

       <!-- Formulario con estilos aplicados mediante CssClass -->
    <form id="form1" runat="server" class="formulario">
        <!-- GridView con clases CSS aplicadas -->
        <asp:GridView ID="gvMedico" runat="server" AutoGenerateColumns="False" DataKeyNames="MedicoID" DataSourceID="sqlMedico" CssClass="gridview">
            <Columns>
                <asp:BoundField DataField="MedicoID" HeaderText="MedicoID" InsertVisible="False" ReadOnly="True" SortExpression="MedicoID" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="Especialidad" HeaderText="Especialidad" SortExpression="Especialidad" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="sqlMedico" runat="server" ConnectionString="<%$ ConnectionStrings:azuconcienciaConnectionString %>" SelectCommand="SELECT * FROM [Medicos]"></asp:SqlDataSource>

        <br /><br />
        <asp:Label ID="lbMedico" runat="server" Text="Ingresa ID del Médico a Modificar:"></asp:Label>
        <asp:TextBox ID="tbMedico" runat="server"></asp:TextBox>
         <asp:RegularExpressionValidator ID="reID" runat="server" ControlToValidate="tbMedico" ValidationExpression="^[0-9]*$" Text="Solo Numeros" CssClass="Error"></asp:RegularExpressionValidator>
            
        <br />
        <asp:Button ID="btnModificar" runat="server" Text="Modificar" CssClass="botonIS" OnClick="btnModificar_Click" />
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="botonIS" />

        <br /><br />
        <table id="tbdatos" runat="server">
            <tr>
            <td>
<asp:RequiredFieldValidator ID="rfNombre" runat="server" ControlToValidate="tbNombre" Text="*" CssClass="Error" ErrorMessage="Campo Nombre Obligatorio"></asp:RequiredFieldValidator>
   <asp:RegularExpressionValidator ID="reNombre" runat="server" ControlToValidate="tbNombre" ValidationExpression="^[a-zA-Z\s\u00f1\u00d1\u00E0-\u00FC]*$" Text="*"  CssClass="Error" ErrorMessage="Error en Nombre solo letras y espacios"></asp:RegularExpressionValidator>
    
            </td>
            <td class="celda">
                <asp:Label ID="lbNombre" runat="server" Text="Nombre(s):" CssClass="etiqueta"></asp:Label>
            </td>
            <td class="celda">
                <asp:TextBox ID="tbNombre" runat="server" CssClass="cuadro-texto"></asp:TextBox>
            </td>
            <td>
                 <asp:RequiredFieldValidator ID="rfEspecialidad" runat="server" ControlToValidate="tbespecialidad" Text="*" CssClass="Error" ErrorMessage="Campo Especialidad Obligatorio"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="reEspecialidad" runat="server" ControlToValidate="tbespecialidad" ValidationExpression="^[a-zA-Z\s\u00f1\u00d1\u00E0-\u00FC]*$" Text="*"  CssClass="Error" ErrorMessage="Error en Especialida solo letras y espacios"></asp:RegularExpressionValidator>
   
            </td>
            <td class="celda">
                <asp:Label ID="lbespecialidad" runat="server" Text="Especialidad:" CssClass="etiqueta"></asp:Label>
            </td>
            <td class="celda">
                <asp:TextBox ID="tbespecialidad" runat="server" CssClass="cuadro-texto"></asp:TextBox>
            </td>
        </tr>

        <%-- Inicia Renglon 2 --%>
        <tr>
            <td>
                   <asp:RequiredFieldValidator ID="rfAp" runat="server" ControlToValidate="tbApellidos" Text="*" CssClass="Error" ErrorMessage="Campo Nombre Obligatorio en Apellidos"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reAp" runat="server" ControlToValidate="tbApellidos" ValidationExpression="^[a-zA-Z\s\u00f1\u00d1\u00E0-\u00FC]*$" Text="*"  CssClass="Error" ErrorMessage="Error en Apellidos solo letras y espacios"></asp:RegularExpressionValidator>
   
            </td>
            <td class="celda">
                <asp:Label ID="lbApellidos" runat="server" Text="Apellidos:" CssClass="etiqueta"></asp:Label>
            </td>
            <td class="celda">
                <asp:TextBox ID="tbApellidos" runat="server" CssClass="cuadro-texto"></asp:TextBox>
            </td>
           
        </tr>

        <%-- Inicia Renglon 3 --%>
        <tr>
            <td>
                  <asp:RequiredFieldValidator ID="reCorreo" runat="server" ControlToValidate="tbCorreo" Text="*" CssClass="Error" ErrorMessage="Campo Correo Obligatorio"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbCorreo" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" Text="*" ErrorMessage="Formato de Correo electronico incorrecto" CssClass="Error"></asp:RegularExpressionValidator><br />
             
           
            </td>
            <td class="celda">
                <asp:Label ID="lbCorreo" runat="server" Text="Correo Electrónico:" CssClass="etiqueta"></asp:Label>
            </td>
            <td class="celda">
                <asp:TextBox ID="tbCorreo" runat="server" CssClass="cuadro-texto"></asp:TextBox>
            </td>
         
        </tr>

        <tr>
            <td>
                <asp:RequiredFieldValidator ID="rfTelefono" runat="server" ControlToValidate="tbCorreo" Text="*" CssClass="Error" ErrorMessage="Campo Telefono Obligatorio"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="reTel" runat="server" ControlToValidate="tbTel" ValidationExpression="^[0-9\s]{3}-[0-9]{7}$" Text="*" ErrorMessage="Solo Numeros y giones medios (311-111-1122)" CssClass="Error"></asp:RegularExpressionValidator>
        
            </td>
            <td class="celda">
                <asp:Label ID="lbTel" runat="server" Text="Numero de Telefono:" CssClass="etiqueta"></asp:Label>
            </td>
            <td class="celda">
                <asp:TextBox ID="tbTel" runat="server" CssClass="cuadro-texto"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:ValidationSummary ID="ErrorMedicos" runat="server" CssClass="Error" /><br />
            </td>
        </tr>
        </table>

        <!-- Botones -->
        <table id="tbbotones" runat="server">
            <tr>
                <td>
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="botonIS" OnClick="btnGuardar_Click" />
                    <asp:Button ID="Button1" runat="server" Text="Cancelar" CssClass="botonIS" />
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
