<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alta_Experiencia.aspx.cs" Inherits="AZUCONCIENCIA_02.Alta_Experiencia" %>

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
    <title>Narra tu Experiencia</title>

     <style>

        .formulario {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            width: 100%;
            box-sizing: border-box;
            margin-top:30px;
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

        .cuadro-texto {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
            color: #333;
            }

        .cuadro-texto:focus {
            border-color: #007bff;
            outline: none;
        }

        .dropdown {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
            color: #333;
            background-color: #fff;
            -webkit-appearance: none; /* Para ocultar el borde por defecto en Safari */
            -moz-appearance: none; /* Para ocultar el borde por defecto en Firefox */
            appearance: none; /* Para ocultar el borde por defecto en otros navegadores */
            background-repeat: no-repeat;
            background-size: 12px;
            background-image: url('data:image/svg+xml;charset=UTF-8,%3Csvg fill="%23444444" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"%3E%3Cpath d="M0 0h24v24H0V0z" fill="none"/%3E%3Cpath d="M7 10l5 5 5-5H7z"/%3E%3C/svg%3E');
        }

        .dropdown:focus {
            border-color: #007bff;
            outline: none;
        }

        /* Estilos para Botones */
        .contenedor-botones {
            text-align: center;
            margin-top: 20px;
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
    <center>
   <form id="form1" runat="server" class="formulario">
        <h1 class="titulo">Formulario de Experiencias</h1>
        <table class="tabla">
            <tr>


                <td class="celda">
                    <asp:Label ID="lbfecha" runat="server" Text="Fecha:" CssClass="etiqueta"></asp:Label>
                </td>
                <td class="celda">
                    <asp:TextBox ID="tbFecha" runat="server" TextMode="Date" CssClass="cuadro-texto"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfFechas" runat="server" ControlToValidate="tbFecha" Text="*" CssClass="Error" ErrorMessage="Campo Obligatorio en Fechas"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvFecha" runat="server" ControlToValidate="tbFecha" MinimumValue="1920" MaximumValue="2024"  ErrorMessage="En fechas solo fechas de 1920 a 2024" CssClass="Error" Text="*"></asp:RangeValidator>          
                    </td> 

            </tr>

            <tr>
                <td class="celda">
                    <asp:Label ID="lbtitulo" runat="server" Text="Título de tu Experiencia:" CssClass="etiqueta"></asp:Label>
                </td>
                <td class="celda">
                    <asp:TextBox ID="tbtitulo" runat="server" CssClass="cuadro-texto"></asp:TextBox>
                </td>
                  <td>
                    <asp:RequiredFieldValidator ID="rfTitulo" runat="server" ControlToValidate="tbtitulo" Text="*" CssClass="Error" ErrorMessage="Campo Obligatorio Titulo"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reTitulo" runat="server" ControlToValidate="tbtitulo" ValidationExpression="^[a-zA-Z\s]*$" Text="*"  CssClass="Error" ErrorMessage="Error en titulo solo letras y espacios"></asp:RegularExpressionValidator>
 
                </td>
            </tr>

            <tr>
                <td class="celda">
                    <asp:Label ID="lbcom" runat="server" Text="Comenta Acerca de tu Experiencia:" CssClass="etiqueta"></asp:Label>
                </td>
                <td class="celda">
                    <asp:TextBox ID="tbcom" runat="server" Height="185px" Width="481px" CssClass="cuadro-texto"></asp:TextBox>
                </td>
                  <td>
                     <asp:RequiredFieldValidator ID="rfExperiencia" runat="server" ControlToValidate="tbcom" Text="*" CssClass="Error" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator><br />
                      <asp:RegularExpressionValidator ID="reExperiencia" runat="server" ControlToValidate="tbcom" ValidationExpression="^[a-zA-Z\s]*$" Text="*" CssClass="Error" ErrorMessage="Error solo letras y espacios en Experiencias"></asp:RegularExpressionValidator>
 
                    </td>
            </tr>

            <tr>
                <td class="celda">
                    <asp:Label ID="lbpaciente" runat="server" Text="Reseña hecha por el paciente:" CssClass="etiqueta"></asp:Label>
                </td>
                <td class="celda">
                    <asp:DropDownList ID="ddlpaciente" runat="server" DataSourceID="sqlExperiencia" DataTextField="Correo" DataValueField="PacienteID" CssClass="dropdown" Width="539px"></asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:ValidationSummary ID="vsError" runat="server" CssClass="Error" /><br />
                </td>
            </tr>
        </table>

        <!-- Botones -->
        <div class="contenedor-botones">
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="botonIS" OnClick="btnGuardar_Click" />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="botonIS" />
        </div>
    </form></center>
    
    <asp:SqlDataSource ID="sqlExperiencia" runat="server" ConnectionString="<%$ ConnectionStrings:azuconcienciaConnectionString %>" SelectCommand="SELECT * FROM [Pacientes]"></asp:SqlDataSource>

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
