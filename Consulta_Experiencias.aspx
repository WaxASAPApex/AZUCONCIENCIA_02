<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta_Experiencias.aspx.cs" Inherits="AZUCONCIENCIA_02.Consulta_Experiencias" %>

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
    <title>Experiencias</title>

	<style>
		.formulario {
    background-color: #f9f9f9;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    width: 80%;
    margin: 0 auto;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    font-family: Arial, sans-serif;
}

.gridview {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
}

.gridview th {
    background-color: #007bff;
    color: white;
    text-align: left;
    padding: 10px;
    font-weight: bold;
    border-bottom: 2px solid #ddd;
}

.gridview td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
    text-align: left;
    color: #333;
}

.gridview tr:nth-child(even) {
    background-color: #f2f2f2;
}

.gridview tr:hover {
    background-color: #eaeaea;
}

.gridview .aspNetDisabled {
    background-color: #f9f9f9;
    color: #888;
}

.gridview th a {
    color: white;
    text-decoration: none;
}

.gridview th a:hover {
    text-decoration: underline;
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

    <form id="form1" runat="server">
    <!-- GridView con clases CSS aplicadas -->
    <asp:GridView ID="gbCitas" runat="server" AutoGenerateColumns="False" DataKeyNames="ExperienciaID" DataSourceID="sqlExperiencias" CssClass="gridview">
        <Columns>
            <asp:BoundField DataField="ExperienciaID" HeaderText="ExperienciaID" InsertVisible="False" ReadOnly="True" SortExpression="ExperienciaID" />
            <asp:BoundField DataField="PacienteID" HeaderText="PacienteID" SortExpression="PacienteID" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" /> 
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="sqlExperiencias" runat="server" ConnectionString="<%$ ConnectionStrings:azuconcienciaConnectionString %>" SelectCommand="SELECT * FROM [Experiencias]"></asp:SqlDataSource>


        <asp:Button ID="btnCreaExp" runat="server" Text="Crea tu experiencia" OnClick="btnCreaExp_Click" />
</form>
		                <footer>
	<div class="cont">
		<h2 id="Contac">Contactanos</h2>
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
