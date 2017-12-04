<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Root - Bootstrap 4 Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,AngularJS,Angular,Angular2,jQuery,CSS,HTML,RWD,Dashboard">
    <link rel="shortcut icon" href="img/favicon.png">

    <title> Gestion de PPP </title>


<!--  Style -->
    <%@ include file="../../jspf/head.jspf" %>


</head>

<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">
   
   <!-- Navbar -->
     <%@ include file="../../jspf/NavBar.jspf" %>
    <!-- Fin navbar -->


    <div class="app-body">
 
		 <!-- Get All Data Perfil -->
		       <%@ include file="../../jspf/GetPerfil.jspf" %>
		 <!-- end Get All Data Perfil -->


        <!-- Main content -->
        <main class="main">
			<section id="contenedor">
				Pulsa 'Actualizar capa' y este texto se actualizará
			</section>
            
        </main>

    </div>




    <!--  footer -->
    <%@include file="../../jspf/footer.jspf"%>

<!-- script's -->

    <%@include file="../../jspf/jsGeneral.jspf"%>

	
	

</body>
</html>