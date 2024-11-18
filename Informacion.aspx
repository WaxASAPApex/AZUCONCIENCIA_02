<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Informacion.aspx.cs" Inherits="AZUCONCIENCIA_02.Informacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta name="author" content="Azuconciencia"/> 
	<meta name="keywords" content="computadoras, soluciones, Accesorios, Equipos,Insumos, Impresoras, Electricos"/>
    <meta name="description" content="pagina de informacion acerca de la diabetes"/>
	<title>Azuconciencia</title>
    <link rel="stylesheet" type="text/css" href="estilos/rutinas.css"/>
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
			<li><a href="Informacion.aspx">Informacion</a></li>
			<li><a href="Autenticacion_Medicos.aspx">Cuenta</a></li>
			<li><a href="AYUDA.aspx">Ayuda</a></li>
		</ul>
	</nav>

</header>
    <div></div> <!--LINEA-->

<!-- Tarjetas -->
<div class="title-cards"><!--El título encima de las tarjetas-->
    <h2>Rutinas</h2>
</div>
<div class="container-card"><!--Se abre el contenedor de las tarjetas-->

    <div class="card">
        <figure>
            <img src="https://www.clinicaincor.com/wp-content/uploads/2020/10/diabetes-hipoglucemia-niveles-glucosa-sangre-805x503.jpg" alt="Hipoglucemia" width="300" height="200"/><!--Imagen de la tarjeta-->
        </figure>
        <div class="contenido-card">
            <h3>Hipoglucemia</h3><!--Titulo de tarjeta-->
            <p>La hipoglucemia ocurre cuando el nivel de azúcar en sangre cae por debajo de lo normal. Los síntomas pueden incluir temblores, sudoración, palpitaciones, confusión y, en casos graves, pérdida de conciencia. Es crucial tratar la hipoglucemia rápidamente con carbohidratos de acción rápida.</p><!--Texto Introductorio-->
            <a href="#">Leer Más</a><!--Botón de la tarjeta-->
        </div>
    </div>
    
    <div class="card">
        <figure>
            <img src="https://imgs.search.brave.com/8HizjRLLEAtXzGUfw7irNkEhX43gso6Vmz0EfQcNCrE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTM1/NDI0OTE1NC9waG90/by9kaWFiZXRpYy10/ZXN0LWtpdC5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9Q2I2/R3JrYVdxY1YxRUtW/bTQ3UnNpLTVTaTlI/YVJqbzBhWHlpcVRs/Y1dvWT0" alt="Diabetes" width="300" height="200"/><!--Imagen de la tarjeta-->
        </figure>
        <div class="contenido-card">
            <h3>Diabetes</h3><!--Titulo de tarjeta-->
            <p>La diabetes es una enfermedad metabólica que causa altos niveles de azúcar en la sangre. Los tipos más comunes son la diabetes tipo 1, tipo 2 y gestacional. El tratamiento puede incluir dieta, ejercicio, medicamentos y monitoreo regular de los niveles de glucosa.</p><!--Texto Introductorio-->
            <a href="#">Leer Más</a><!--Botón de la tarjeta-->
        </div>
    </div>
    
    <div class="card">
        <figure>
            <img src="https://imgs.search.brave.com/UQN6S49rkcqHCeRed94FxADm4KhNkLJba7_AmPGhEIY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/d2lraWhvdy5jb20v/aW1hZ2VzX2VuL3Ro/dW1iLzIvMmQvVGVs/bC1pZi1Zb3UtSGF2/ZS1EaWFiZXRlcy1T/dGVwLTQuanBnL3Y0/LTQ2MHB4LVRlbGwt/aWYtWW91LUhhdmUt/RGlhYmV0ZXMtU3Rl/cC00LmpwZw" alt="¿Soy Diabético?" width="300" height="200"/><!--Imagen de la tarjeta-->
        </figure>
        <div class="contenido-card">
            <h3>¿Soy Diabético?</h3><!--Titulo de tarjeta-->
            <p>Para determinar si tienes diabetes, se pueden realizar pruebas de glucosa en ayunas, hemoglobina A1c y pruebas de tolerancia a la glucosa. Es importante buscar atención médica si experimentas síntomas como sed excesiva, micción frecuente y fatiga inexplicable.</p><!--Texto Introductorio-->
            <a href="#">Leer Más</a><!--Botón de la tarjeta-->
        </div>
    </div>
    
</div><!--Se cierra el contenedor de las tarjetas-->

<div class="container-card"><!--Se abre el contenedor de las tarjetas-->

    <div class="card">
        <figure>
            <img src="https://imgs.search.brave.com/KGBvldJmp_OBD6vEtLdssTXsOktwpjYne96rpRiMj_A/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/bmlkZGsubmloLmdv/di8tL21lZGlhL0lt/YWdlcy9IZWFsdGgt/SW5mb3JtYXRpb24v/RGlhYmV0ZXMvUGhv/dG8tb2YtYW4taW5z/dWxpbi1wZW4uanBn" alt="Insulinas" width="300" height="200"/><!--Imagen de la tarjeta-->
        </figure>
        <div class="contenido-card">
            <h3>Insulinas</h3><!--Titulo de tarjeta-->
            <p>La insulina es una hormona esencial para el control de la glucosa en sangre. Las personas con diabetes tipo 1 dependen de inyecciones de insulina, mientras que algunas con diabetes tipo 2 pueden necesitarla para controlar sus niveles de azúcar.</p><!--Texto Introductorio-->
            <a href="#">Leer Más</a><!--Botón de la tarjeta-->
        </div>
    </div>
    
    <div class="card">
        <figure>
            <img src="https://imgs.search.brave.com/Qop2Z92hNuvzIbMRQcRrwU72NtY0CQuQums0q0pPCNI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/ZW1lcmdlbmN5cGh5/c2ljaWFucy5vcmcv/c2l0ZWFzc2V0cy9l/bXBoeXNpY2lhbnMv/YWxsLWltYWdlcy9h/bWJ1bGFuY2U3Lmpw/Zw" alt="¿Qué hacer en emergencia?" width="300" height="200"/><!--Imagen de la tarjeta-->
        </figure>
        <div class="contenido-card">
            <h3>¿Qué hacer en emergencia?</h3><!--Titulo de tarjeta-->
            <p>En una emergencia diabética, como hipoglucemia severa o cetoacidosis diabética, es vital actuar rápidamente. Administra glucosa para hipoglucemia o busca atención médica inmediata para la cetoacidosis. Conoce los síntomas y ten un plan de acción.</p><!--Texto Introductorio-->
            <a href="#">Leer Más</a><!--Botón de la tarjeta-->
        </div>
    </div>
    
</div><!--Se cierra el contenedor de las tarjetas-->


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
<!--Fin Tarjetas-->
</body>
</html>
