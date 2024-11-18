<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alta_Paciente.aspx.cs" Inherits="AZUCONCIENCIA_02.Alta_Paciente" %>

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
    <title>Registro de Pacientes</title>

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
            max-width: 700px;
            width: 100%;
            margin-top: 40px; /* Espacio superior para separar del header */
               margin-left:0px;
        }

        /* Estilo del título */
        .titulo {
            text-align: center;
            color: #89CFF1;
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: 600;
        }

        /* Estilo de la tabla */
        .tabla {
            width: 100%;
            border-collapse: collapse;
        }

        /* Estilo de las celdas de la tabla */
        .celda {
            padding: 10px;
            vertical-align: middle;
            width: 50%; /* Para ajustar el ancho de las celdas */
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
        .auto-style1 {
            width: 8%;
        }
        .auto-style2 {
            padding: 10px;
            vertical-align: middle;
            width: 8%; /* Para ajustar el ancho de las celdas */
        }
        .auto-style3 {
            padding: 10px;
            vertical-align: middle;
            width: 39%; /* Para ajustar el ancho de las celdas */
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
        <h1 class="titulo">Formulario de Registro de Pacientes</h1>
        <table class="tabla">
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
                 <asp:RegularExpressionValidator ID="reTel" runat="server" ControlToValidate="tbTel" ValidationExpression="^[0-9\s]{3}-[0-9]{7}$" Text="*" ErrorMessage="Solo Numeros y giones medios (311-3331122)" CssClass="Error"></asp:RegularExpressionValidator>
            
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

        <%-- Botones --%>
        <div class="contenedor-botones">
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="botonIS" OnClick="btnGuardar_Click" />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="botonIS" />
        </div>
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
