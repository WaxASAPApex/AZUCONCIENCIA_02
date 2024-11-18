<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Baja_Pacientes.aspx.cs" Inherits="AZUCONCIENCIA_02.Baja_Pacientes" %>

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
    <title>Baja Pacientes</title>

	 <style>
                           .Error{
    color: red;
     font-size: 13px;
}
        /* Estilo del formulario */
        .formulario {
            background-color: #FFFFFF;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 800px; /* Ajustado para el GridView */
            margin-top: 40px; /* Espacio superior para separar del header */
            margin-left: 0px; /* Margen izquierdo añadido como solicitado */
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

        /* Estilo de las etiquetas */
        .etiqueta {
            color: #333;
            font-weight: 600;
            display: block;
            margin-bottom: 5px;
        }

        /* Estilo de los cuadros de texto */
        .cuadro-texto {
            width: calc(100% - 20px);
            padding: 8px 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            font-size: 14px;
            color: #333;
            background-color: #FFCCCB;
            transition: all 0.3s ease;
        }

        /* Estilo de los cuadros de texto en foco */
        .cuadro-texto:focus {
            border-color: #89CFF1;
            outline: none;
            background-color: #FFF;
        }

        /* Estilo del contenedor de botones */
        .contenedor-botones {
            text-align: right;
            margin-top: 20px;
        }

        /* Estilo de los botones */
        .botonIS {
            background-color: #89CFF1;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s ease;
            margin-right: 10px; /* Espacio entre botones */
        }

        /* Estilo de los botones al pasar el ratón */
        .botonIS:hover {
            background-color: #71B8E1;
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
    <center>
    <form id="form1" runat="server" class="formulario">
        <!-- GridView con clases CSS aplicadas -->
        <asp:GridView ID="gvCitas" runat="server" AutoGenerateColumns="False" DataKeyNames="PacienteID" DataSourceID="sqlPaciente" CssClass="gridview">
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

        <table>
            <tr>
                 <td>
     <asp:RegularExpressionValidator ID="reID" runat="server" ControlToValidate="tbCitas" ValidationExpression="^[0-9]*$" Text="*"  CssClass="Error" ErrorMessage="Error en ID solo Numeros"></asp:RegularExpressionValidator>
 </td>
                <td>
                    <asp:Label ID="lbCitas" runat="server" Text="Ingresa el ID del Paciente que quieres eliminar:" CssClass="etiqueta"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbPaciente" runat="server" CssClass="cuadro-texto"></asp:TextBox>
                </td>
            </tr>
             <tr>
     <td>
         <asp:ValidationSummary ID="vsErrores" runat="server" CssClass="Error" Width="195px" />
     </td>
 </tr>
            <tr>
                <td>
                    <asp:Button ID="btnborrar" runat="server" Text="Borrar" OnClick="btnborrar_Click" CssClass="botonIS" />
                </td>
            </tr>
        </table>
    </form></center>

    
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
