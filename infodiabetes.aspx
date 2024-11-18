<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="infodiabetes.aspx.cs" Inherits="AZUCONCIENCIA_02.infodiabetes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
        <!-- Metadatos del documento -->
    <meta name="author" content="Nephtis Adonahi Cañedo Segura"/>
    <meta name="description" content="Página informática de diabetes"/>
    <meta name="keywords" content="isabetes, consultas, consultas medicas, medicina"/>
    <meta name="generator" content="html5, css3, asp.net, c#, javascript"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <!-- Vinculación de estilos -->
    <link rel="stylesheet" type="text/css" href="estilos/infodiabetes.css"/>
    <!-- Fuentes desde Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Nunito+Sans:wght@600&family=Assistant&display=swap" rel="stylesheet"/>

  <title>Azuconciencia / Información</title>

</head>

   

<body>
    <!-- Encabezado -->
 
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
    <!-- Título principal -->
    <h1><b style="font-family: 'Anton', sans-serif;">AZUCONCIENCIA</b></h1>

    <!-- Sección con múltiples imágenes y textos -->
    <section>
    <table>
        <tr>
            <!-- Columna 1 -->
            <td>
                <img src="https://imgs.search.brave.com/6TZu8BanmUJjsE5VJ_BJ5cu34dZjooyYgF9mVI7HxF8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/ZWNlc3RhdGljb3Mu/Y29tL2ltYWdlL2Ns/aXBwaW5nL2FjMzg1/YmMxNGVhOTI5YmY2/YTgwZWQzODc4Mjdk/NzFiL3JlY29tbWVu/ZGVkLmpwZw" alt="Causas de la Diabetes" width="200" height="150"/>
                <p>La diabetes es una enfermedad crónica que ocurre cuando el cuerpo no puede regular adecuadamente los niveles de azúcar en la sangre. Esto se debe a la insuficiencia en la producción de insulina o a la resistencia a la insulina.</p>
            </td>
            <!-- Columna 2 -->
            <td>
                <img src="https://clinicasorigen.es/wp-content/uploads/2019/05/depresion-2048x1365.jpg" alt="Síntomas de la Diabetes" width="200" height="150"/>
                <p>Los síntomas de la diabetes pueden incluir sed extrema, micción frecuente, hambre excesiva, pérdida de peso inexplicable, fatiga, visión borrosa y lenta cicatrización de heridas.</p>
            </td>
            <!-- Columna 3 -->
            <td>
                <img src="https://res.cloudinary.com/grohealth/image/upload/v1581692292/DCUK/Content/Young-woman-injecting-Insulin-with-an-Insulin-Pen_Medium.jpg" alt="Tratamiento para la Diabetes" width="200" height="150"/>
                <p>El tratamiento para la diabetes incluye una combinación de cambios en el estilo de vida, monitoreo regular de los niveles de glucosa en la sangre, medicación oral y, en algunos casos, administración de insulina.</p>
            </td>
            <!-- Columna 4 -->
            <td>
                <img src="https://t1.uc.ltmcdn.com/es/posts/8/1/7/consecuencias_de_una_mala_alimentacion_44718_orig.jpg" alt="Dieta para la Diabetes" width="200" height="150"/>
                <p>Una dieta balanceada y controlada en carbohidratos es fundamental para el manejo de la diabetes. Se recomienda consumir alimentos ricos en fibra, como frutas, verduras y granos enteros.</p>
            </td>
            <!-- Columna 5 -->
            <td>
                <img src="https://medicinaysaludpublica.blob.core.windows.net.optimalcdn.com/images/2023/02/01/formato-sacs---2023-02-01t165531491-ca1ac85c-focus-0-0-688-364.png" alt="Emergencias en la Diabetes" width="200" height="150"/>
                <p>Las emergencias diabéticas pueden incluir hipoglucemia (bajo nivel de azúcar en sangre) e hiperglucemia (alto nivel de azúcar en sangre), que requieren atención médica inmediata para evitar complicaciones graves.</p>
            </td>
        </tr>
    </table>
</section>

<!-- Navegación secundaria -->
<div class="nav-wrapper">
    <nav id="menu_secundario" class="menu"> 
        <ul>  
            <li><a href="#">Causas y factores de riesgo</a></li>
            <li><a href="#">Síntomas y diagnóstico</a></li>
            <li><a href="#">Tratamiento y manejo</a></li>
            <li><a href="#">Nutrición y dieta</a></li>
            <li><a href="#">Emergencias</a></li>
        </ul>
    </nav>
</div>

<!-- Sección con dos columnas de texto e imágenes -->
<section>
    <table>
        <tr>
            <!-- Columna 1 -->
            <td width="50%">
                <img src="https://insights.omnia-health.com/sites/omnia-health.com/files/diabetes_3.jpg" alt="Diagnóstico de Diabetes" width="300" height="200"/>
            </td>
            <!-- Columna 2 -->
            <td width="50%">
                <p>El diagnóstico de diabetes se realiza mediante pruebas de sangre que miden los niveles de glucosa. Las pruebas comunes incluyen la prueba de glucosa en ayunas, la prueba de tolerancia a la glucosa y la prueba de hemoglobina A1c, que refleja los niveles de azúcar en sangre durante los últimos 2 a 3 meses.</p>
            </td>
        </tr>
        <tr>
            <!-- Columna 1 -->
            <td>
                <img src="https://th.bing.com/th/id/OIP.bz7AwG9n_zIHbhxSUyKUDwHaEP?rs=1&pid=ImgDetMain" alt="Control de la Diabetes" width="300" height="200"/>
            </td>
            <!-- Columna 2 -->
            <td>
                <p>El control de la diabetes requiere una gestión constante, que incluye el monitoreo regular de la glucosa, la adherencia a los planes de tratamiento prescritos y el ajuste de la dieta y el ejercicio. La tecnología moderna, como los monitores continuos de glucosa, permite un seguimiento más fácil y preciso de los niveles de azúcar en sangre, mejorando así la calidad de vida de los pacientes.</p>
            </td>
        </tr>
    </table>
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
    <form id="form1" runat="server">
     <div>
     </div>
 </form>
</body>
</html>
