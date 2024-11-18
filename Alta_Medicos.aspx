<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alta_Medicos.aspx.cs" Inherits="AZUCONCIENCIA_02.Alta_Medicos" %>

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
<title>Azuconciencia</title>

    <style>
     
                .Error{
    color: red;
     font-size: 13px;
}
.formulario {
    background-color: #FFFFFF;
    border-radius: 8px;
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 600px;
    width: 100%;
    margin-top: 20px; /* Espacio superior para separar del header */
    margin-left:0px;
}

.titulo {
    text-align: center;
    color: #89CFF1;
    margin-bottom: 20px;
    font-size: 24px;
    font-weight: 600;
}

.tabla {
    width: 100%;
    border-collapse: collapse;
}

.celda {
    padding: 10px;
    vertical-align: middle;
}

.etiqueta {
    color: #333;
    font-weight: 600;
    display: block;
    margin-bottom: 5px;
}

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

.cuadro-texto:focus {
    border-color: #89CFF1;
    outline: none;
    background-color: #FFF;
}

.contenedor-botones {
    text-align: right;
    margin-top: 20px;
}

.botonIS {
    background-color: #89CFF1;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
    font-size: 14px;
    transition: background-color 0.3s ease;
    padding-right:10px;
}

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
        <h1 class="titulo">Formulario de Registro de Medicos</h1>
        <table class="tabla">
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
                    <asp:RegularExpressionValidator ID="reTel" runat="server" ControlToValidate="tbTel" ValidationExpression="^[0-9\s]{3}-[0-9]{7}$" Text="*" ErrorMessage="Solo Numeros y giones medios (311-3331122)" CssClass="Error"></asp:RegularExpressionValidator>
            
                </td>
                <td class="celda">
                    <asp:Label ID="lbTel" runat="server" Text="Numero de Telefono:" CssClass="etiqueta"></asp:Label>
                </td>
                <td class="celda">
                    <asp:TextBox ID="tbTel" runat="server" CssClass="cuadro-texto"></asp:TextBox>
                </td>
            </tr>
            <tr>
                 

            </tr>
        </table>
        <table class="tabla">
            <tr>
                <td>
                    <asp:RegularExpressionValidator ID="reArchivo" runat="server" ControlToValidate="flarchivo" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))(.pdf|.PDF)$" Text="*" CssClass="Error" ErrorMessage="Tipo de archivo no permitido, solo .pdf"></asp:RegularExpressionValidator><br /> 
                </td>
            <td>
                     <asp:Label ID="lbArchivo" runat="server" Text="Subir su titulo en PDF:" CssClass="etiqueta"></asp:Label>
                 </td>
                 <td>
                    <asp:FileUpload ID="flarchivo" runat="server" />

                </td>
            </tr>
        </table>
        <table class="tabla"> 
            <tr>
                <td>
                    <asp:ValidationSummary ID="ErrorMedicos" runat="server" CssClass="Error" /><br />
                    <asp:Label ID="lbEstatus" runat="server" CssClass="Error"></asp:Label>
                </td>
            </tr>
        </table>

        <%-- BOTONES --%>
        <div class="contenedor-botones">
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="botonIS" OnClick="btnGuardar_Click"/>
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="botonIS" />
            <asp:Button ID="btndubir" runat="server" Text="Subir archivo" CssClass="botonIS" OnClick="btndubir_Click"  />
        </div>
 </form> </center>

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
