<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html lang="es">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Gestion de ppp</title>
	 <%@ include file="../../jspf/head.jspf" %>
</head>

<body>

	<!-- Main navbar -->
	
     <%@ include file="../../jspf/NavBar.jspf" %>
	
	<!-- /main navbar -->


	<!-- Page container -->
	<div class="page-container">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main sidebar -->
			
			    <%@ include file="../../jspf/GetPerfil.jspf" %>
			
			<!-- /main sidebar -->


			<!-- Main content -->
			<div class="content-wrapper">

				<!-- Page header -->
				<div class="page-header page-header-default">
					<div class="page-header-content">
						<div class="page-title">
							<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Home</span> - Dashboard</h4>
						</div>
					</div>

					<div class="breadcrumb-line">
						<ul class="breadcrumb">
							<li><a href="index.html"><i class="icon-home2 position-left"></i> Home</a></li>
							<li class="active">Dashboard</li>
						</ul>
					</div>
				</div>
				<!-- /page header -->


				<!-- Content area -->
				<div class="content">

					<!-- Main charts -->
					<div class="row">
						<div class="col-lg-12">

							<!-- Traffic sources -->
<!-- 							<div class="panel panel-flat"> -->
<!-- 								<div class="panel-heading"> -->
<!-- 									<h6 class="panel-title">Traffic sources</h6> -->
<!-- 									<div class="heading-elements"> -->
<!-- 										<form class="heading-form" action="#"> -->
<!-- 											<div class="form-group"> -->
<!-- 												<label class="checkbox-inline checkbox-switchery checkbox-right switchery-xs"> -->
<!-- 													<input type="checkbox" class="switch" checked="checked"> -->
<!-- 													Live update: -->
<!-- 												</label> -->
<!-- 											</div> -->
<!-- 										</form> -->
<!-- 									</div> -->
<!-- 								</div> -->

								
								
								    <!-- Main content -->
                                    <main class="main">
                                     
                                        <section id="contenedor">
                                             <div class="position-relative" >
                                            Pulsa 'Actualizar capa' y este texto se actualizará
                                        </div>
                                        </section>
                                       
                                    </main>
								
							</div>
							<!-- /traffic sources -->

						</div>

						</div>
					<!-- /main charts -->

					<!-- Footer -->
					<%@include file="../../jspf/footer.jspf"%>
					<!-- /footer -->

				</div>
				<!-- /content area -->

			</div>
			<!-- /main content -->
		</div>
		<!-- /page content -->
	</div>
	<!-- /page container -->
	
	
	
</body>
</html>
