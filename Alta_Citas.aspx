<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alta_Citas.aspx.cs" Inherits="AZUCONCIENCIA_02.Alta_Citas" %>

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
    <title>Agendar Una Cita</title>

     <style>
         .Error{
             color: red;
              font-size: 13px;
         }
        .formulario {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            width: 100%;
            box-sizing: border-box;
            margin-top:40px;
            margin-left:0px;
        }

        .titulo {
            text-align: center;
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
            font-weight: bold;
        }

        /* Estilos para la Tabla */
        .tabla {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .celda {
            padding: 15px;
            vertical-align: middle;
        }

        .etiqueta {
            font-size: 16px;
            color: #555;
            font-weight: 500;
        }

        .cuadro-texto, 
        .lista-desplegable {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
            color: #333;
        }

        .cuadro-texto:focus,
        .lista-desplegable:focus {
            border-color: #007bff;
            outline: none;
        }

        /* Estilos para Botones */
        .contenedor-botones {
            text-align: center;
            margin-top: 20px;
            padding-top:20px;
        }

        .botonIS {
            background-color: #007bff;
            color: #ffffff;
            border: none;
            padding: 12px 24px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            margin: 0 10px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            width: 150px;
            box-sizing: border-box;
        }

        .botonIS:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }

        .botonIS:active {
            background-color: #004494;
            transform: translateY(0);
        }

        /* Estilos para GridView */
        .gridview {
            width: 100%;
            border-collapse: collapse;
            margin-top: 30px;
        }

        .gridview th,
        .gridview td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
            font-size: 14px;
        }

        .gridview th {
            background-color: #f4f4f4;
            font-weight: bold;
            color: #333;
        }

        .gridview tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .gridview tr:hover {
            background-color: #eaf3ff;
        }
        
      
        #map {
            width: 50%;
            height: 400px;
            background-color: gray;
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
            <li><a href="ClinicasCercanas.html">Buscar Clinicas Cercanas</a></li>
            <li><a href="HospitalesCercanos.html"> Buscar Hospitales Cercanos</a></li>
		</ul>
	</nav>

</header>

    <center>
    <form id="form1" runat="server" class="formulario">
        <h1 class="titulo">Formulario de Citas Médicas</h1>
        <table class="tabla">
            <tr>
                <td class="celda">
                    <asp:Label ID="lbfecha" runat="server" Text="Fecha:" CssClass="etiqueta"></asp:Label>
                </td>
                <td class="celda">
                    <asp:TextBox ID="tbFecha" runat="server" TextMode="Date" CssClass="cuadro-texto"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="rvFecha" runat="server" ControlToValidate="tbFecha" MinimumValue="2024" MaximumValue="2025" Text="Solo citas de fecha de 2024" CssClass="Error"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="celda">
                    <asp:Label ID="lbpaciente" runat="server" Text="Paciente:" CssClass="etiqueta"></asp:Label>
                </td>
                <td class="celda">
                    <asp:DropDownList ID="ddlpaciente" runat="server" DataSourceID="sqlpaciente" DataTextField="Correo" DataValueField="PacienteID" CssClass="lista-desplegable"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="celda">
                    <asp:Label ID="lbMedic" runat="server" Text="Medico:" CssClass="etiqueta"></asp:Label>
                </td>
                <td class="celda">
                    <asp:DropDownList ID="ddlmedico" runat="server" DataSourceID="sqlmedico" DataTextField="Correo" DataValueField="MedicoID" CssClass="lista-desplegable"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="celda">
                    <asp:Label ID="lbConsultorio" runat="server" Text="Consultorio"></asp:Label>
                </td>

                <td class="celda">
                    <asp:DropDownList ID="ddlConsultorio" runat="server" DataSourceID="sqlconsultorio" DataTextField="Ubicacion" DataValueField="ConsultorioID" CssClass="lista-desplegable"></asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td class="celda">
                    <asp:Label ID="lbAsunto" runat="server" Text="Motivo de la cita" CssClass="etiqueta"></asp:Label>
                </td>

                <td class="celda">
                    <asp:TextBox ID="tbAsunto" runat="server" CssClass="cuadro-texto"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfMotivo" runat="server" ControlToValidate="tbAsunto" Text="Campo Obligatorio" CssClass="Error"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="reMotivo" runat="server" ControlToValidate="tbAsunto" ValidationExpression="^[a-zA-Z\s]*$" Text="Error solo letras y espacios"  CssClass="Error"></asp:RegularExpressionValidator>
               
                </td>
            </tr>
        </table>
        <!-- Botones -->
        <div class="contenedor-botones">
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="botonIS" OnClick="btnGuardar_Click" />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="botonIS" OnClick="btnCancelar_Click" />
            <asp:Button ID="btnImprimir" runat="server" Text="Imprimir Cita" CssClass="botonIS" OnClick="btnImprimir_Click" />
        </div>
       

     
        
        <!-- GridView con clases CSS aplicadas -->
        <asp:GridView ID="gbCitas" runat="server" AutoGenerateColumns="False" DataKeyNames="CitaID" DataSourceID="sqlcitas" CssClass="gridview">
            <Columns>
                <asp:BoundField DataField="CitaID" HeaderText="CitaID" InsertVisible="False" ReadOnly="True" SortExpression="CitaID" />
                <asp:BoundField DataField="PacienteID" HeaderText="PacienteID" SortExpression="PacienteID" />
                <asp:BoundField DataField="MedicoID" HeaderText="MedicoID" SortExpression="MedicoID" />
                <asp:BoundField DataField="ConsultorioID" HeaderText="ConsultorioID" SortExpression="ConsultorioID" />
                <asp:BoundField DataField="FechaHora" HeaderText="FechaHora" SortExpression="FechaHora" />
                <asp:BoundField DataField="Motivo" HeaderText="Motivo" SortExpression="Motivo" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="sqlcitas" runat="server" ConnectionString="<%$ ConnectionStrings:azuconcienciaConnectionString %>" SelectCommand="SELECT * FROM [Citas]"></asp:SqlDataSource>
    </form></center>


    <asp:SqlDataSource ID="sqlpaciente" runat="server" ConnectionString="<%$ ConnectionStrings:azuconcienciaConnectionString %>" SelectCommand="SELECT * FROM [Pacientes]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlmedico" runat="server" ConnectionString="<%$ ConnectionStrings:azuconcienciaConnectionString %>" SelectCommand="SELECT * FROM [Medicos]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlconsultorio" runat="server" ConnectionString="<%$ ConnectionStrings:azuconcienciaConnectionString %>" SelectCommand="SELECT * FROM [Consultorio]"></asp:SqlDataSource>
   
 
   



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
