<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta_Cita.aspx.cs" Inherits="AZUCONCIENCIA_02.Consulta_Cita" %>

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
    <title>Consulta citas</title>

	<style>

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
    <center>
    <form id="form1" runat="server" class="formulario">
        <!-- GridView con clases CSS aplicadas -->
        <asp:GridView ID="gbCitas" runat="server" AutoGenerateColumns="False" DataKeyNames="CitaID" DataSourceID="sqlCitas" CssClass="gridview">
            <Columns>
                <asp:BoundField DataField="CitaID" HeaderText="CitaID" InsertVisible="False" ReadOnly="True" SortExpression="CitaID" />
                <asp:BoundField DataField="PacienteID" HeaderText="PacienteID" SortExpression="PacienteID" />
                <asp:BoundField DataField="MedicoID" HeaderText="MedicoID" SortExpression="MedicoID" />
                <asp:BoundField DataField="ConsultorioID" HeaderText="ConsultorioID" SortExpression="ConsultorioID" />
                <asp:BoundField DataField="FechaHora" HeaderText="FechaHora" SortExpression="FechaHora" />
                <asp:BoundField DataField="Motivo" HeaderText="Motivo" SortExpression="Motivo" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="sqlCitas" runat="server" ConnectionString="<%$ ConnectionStrings:azuconcienciaConnectionString %>" SelectCommand="SELECT * FROM [Citas]"></asp:SqlDataSource>
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
