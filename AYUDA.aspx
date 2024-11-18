<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AYUDA.aspx.cs" Inherits="AZUCONCIENCIA_02.AYUDA" %>

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
    <title>Ayuda</title>
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
	     <section>
        <h2 align="center">Preguntas frecuentes</h2>
        <div class="faq">
            <details>
                <summary>Qué es la diabetes</summary>
                <p>La diabetes es una enfermedad crónica que se caracteriza por niveles elevados de glucosa en la sangre.</p>
            </details>
            <details>
                <summary>Cómo registro una cuenta</summary>
                <p>Para registrar una cuenta, haga clic en el botón "Registrarse" y siga las instrucciones.</p>
            </details>
            <details>
                <summary>Cómo contacto al soporte técnico</summary>
                <p>Puede contactar al soporte técnico a través del formulario de contacto en nuestra página web.</p>
            </details>
        </div>
    </section>
<hr/>
     	<h2 align="center">Video-tutoriales</h2>
	<div class="tut">
		<div class="vid">
			
		<iframe width="560" height="315" src="https://www.youtube.com/embed/AnFEUqxzgGw?si=Qp_0n8jEavIYvwjA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen=""></iframe>
		</div>
		<div class="vid">
			<iframe width="560" height="315" src="https://www.youtube.com/embed/0shwDlAt14U?si=DO-Q_Uz6HJoQASPw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen=""></iframe>
		</div>
	</div>
<hr/>
	<section>
     	<h2 align="center">Como podemos ayudarte</h2>
     	<div></div><!--USUARIO INGRESE COMENTARIO Y LO ENVIE -->
     	<p align="center">COMENTARIO</p>
	</section>

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
    <form id="form1" runat="server"></form>
</body>
</html>
