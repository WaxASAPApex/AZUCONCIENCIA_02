<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Opciones.aspx.cs" Inherits="AZUCONCIENCIA_02.Sitios.Opciones" %>

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

    <title>Opciones</title>

	  <style>
        .formulario {
            background-color: #f4f7fa;  /* Color de fondo más claro para el formulario */
            padding: 30px;  /* Aumentado el padding para un mejor espacio */
            border: 1px solid #ddd;  /* Borde suave alrededor del formulario */
            border-radius: 8px;  /* Bordes redondeados para un aspecto moderno */
            max-width: 800px;  /* Ancho máximo para que se vea bien en dispositivos grandes */
            margin: 20px auto;  /* Centrando el formulario */
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);  /* Sombra ligera para un efecto de elevación */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;  /* Fuente moderna y limpia */
        }

        .formulario table {
            width: 100%;  /* Tabla ocupa todo el ancho del formulario */
            border-collapse: collapse;  /* Sin espacios entre bordes */
        }

        .formulario td {
            padding: 10px;  /* Espacio interior en celdas */
            text-align: center;  /* Texto centrado */
            vertical-align: middle;  /* Alineación vertical central */
        }

        .formulario td + td {
            border-left: 1px solid #ccc;  /* Línea divisoria entre celdas */
        }

        .formulario tr:not(:last-child) td {
            border-bottom: 1px solid #ccc;  /* Línea divisoria entre filas */
        }

        .formulario td:first-child {
            border-left: none;  /* Sin borde a la izquierda de la primera celda */
        }

        .boton {
            background-color: #007bff;  /* Azul brillante para botones */
            color: white;  /* Texto blanco */
            border: none;  /* Sin borde por defecto */
            padding: 12px 18px;  /* Relleno amplio para mejor tamaño */
            text-align: center;  /* Texto centrado */
            text-decoration: none;  /* Sin subrayado */
            display: inline-block;  /* Para que se comporte como un botón */
            font-size: 16px;  /* Tamaño de fuente adecuado */
            margin: 5px 2px;  /* Espacio entre botones */
            cursor: pointer;  /* Cursor de mano para botones */
            border-radius: 6px;  /* Bordes redondeados */
            transition: background-color 0.3s ease;  /* Transición suave en cambio de color */
            width: 100%;  /* Botones ocupan el 100% del espacio disponible */
            box-sizing: border-box;  /* Incluye padding y border en el ancho total */
        }

        .boton:hover {
            background-color: #0056b3;  /* Azul más oscuro en hover */
        }

        .formulario td:hover {
            background-color: #e8f0fe;  /* Fondo azul claro al pasar el mouse sobre la celda */
        }

        .formulario td:active {
            background-color: #d6e4fc;  /* Color de fondo al hacer clic */
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

   <form id="form2" runat="server" class="formulario">
            <a href="Consulta_Resenas.aspx" class="boton"> Consulta Reseñas</a><br />
            <a href="Consulta_Medicos.aspx" class="boton">Consulta Medicos</a><br />
            <a href="Consulta_Pacientes.aspx" class="boton">Consulta Pacientes</a><br />
          <a href="Consulta_Servicios.aspx" class="boton">Consulta Servicos</a>
        <table>
            
               

            <tr>
                <td>
                    <asp:Button ID="BajaMedicos" runat="server" Text="Dar de Baja un Médico" CssClass="boton" OnClick="BajaMedicos_Click" />
                </td>
                <td>
                    <asp:Button ID="BajaPaciente" runat="server" Text="Dar de Baja un Paciente" CssClass="boton" OnClick="BajaPaciente_Click" />
                </td>
                <td>
                    <asp:Button ID="BajaCita" runat="server" Text="Dar de Baja una Cita" CssClass="boton" OnClick="BajaCita_Click" />
                </td>
                <td colspan="3"></td>
            </tr>

            <tr>
                <td>
                    <asp:Button ID="MoMedico" runat="server" Text="Modificar un Médico" CssClass="boton" OnClick="MoMedico_Click" />
                </td>
                <td>
                    <asp:Button ID="MoPaciente" runat="server" Text="Modificar un Paciente" CssClass="boton" OnClick="MoPaciente_Click" />
                </td>
                <td colspan="4"></td>
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
