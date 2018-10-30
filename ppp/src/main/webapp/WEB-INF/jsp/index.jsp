<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html lang="es">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>PPP - UPeU</title>
<link rel="icon" type="image/ico" href="resources/imagenes/PPP.ico" />
<%@ include file="../../jspf/head.jspf"%>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">

<style>
#fade-quote-carousel.carousel {
	padding-bottom: 60px;
}

#fade-quote-carousel.carousel .carousel-inner .item {
	opacity: 0;
	-webkit-transition-property: opacity;
	-ms-transition-property: opacity;
	transition-property: opacity;
}

#fade-quote-carousel.carousel .carousel-inner .active {
	opacity: 1;
	-webkit-transition-property: opacity;
	-ms-transition-property: opacity;
	transition-property: opacity;
}

#fade-quote-carousel.carousel .carousel-indicators {
	bottom: 10px;
}

#fade-quote-carousel.carousel .carousel-indicators>li {
	background-color: #e84a64;
	border: none;
}

#fade-quote-carousel blockquote {
	text-align: center;
	border: none;
}

#fade-quote-carousel .profile-circle {
	width: 100px;
	height: 100px;
	margin: 0 auto;
	border-radius: 100px;
}
</style>
</head>

<body class="navbar-top has-detached-right">
	<!-- Main navbar -->

	<%@ include file="../../jspf/NavBar.jspf"%>

	<!-- /main navbar -->


	<!-- Page container -->
	<div class="page-container">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main sidebar -->

			<%@ include file="../../jspf/GetPerfil.jspf"%>

			<!-- /main sidebar -->


			<!-- Main content -->
			<div class="content-wrapper">

				<!-- Page header -->

				<div class="content-group">
					<div class="page-header page-header-default has-cover "
						style="border: 1px solid #ddd; border-bottom: 0;">
						<div class="page-header-content">
							<div class="page-title">
								<h5>
									<i class="icon-arrow-left52 position-left"></i> <span
										class="text-semibold">Bienvenido al Sistema de
										praciticas pre - profesionales</span> - UPeU <small
										class="display-block">Se muestra la fecha de sus
										presentes practicas</small>
								</h5>
							</div>

							<div class="heading-elements">
								<form class="heading-form" action="#">
									<div class="form-group">
										<div class="daterange-custom" id="reportrange">
											<div class="daterange-custom-display"></div>
											<span class="badge badge-success">*</span>
										</div>
									</div>
								</form>
							</div>
						</div>

						<div class="breadcrumb-line">
							<ul class="breadcrumb">
								<li><a href="index.html"><i
										class="icon-home2 position-left"></i> Home</a></li>
								<li><a href="components_page_header.html">Current</a></li>
								<li class="active">Perfil</li>
							</ul>
						</div>
					</div>
				</div>


				<!-- /page header -->


				<!-- Content area -->
				<div class="content">

					<!-- Main charts -->
					<div class="row">
						<div class="col-lg-12">
							<!-- Main content -->
							<main class="main"> <section id="contenedor">
							<div class="position-relative">


								<section id="carousel">
								<div class="container">
									<div class="row">
										<div class="col-md-8 col-md-offset-2">
											<div class="quote">
												<i class="fa fa-quote-left fa-4x"></i>
											</div>
											<div class="carousel slide" id="fade-quote-carousel"
												data-ride="carousel" data-interval="3000">
												<!-- Carousel indicators -->
												<ol class="carousel-indicators">
													<li data-target="#fade-quote-carousel" data-slide-to="0"
														class="active"></li>
													<li data-target="#fade-quote-carousel" data-slide-to="1"></li>
													<li data-target="#fade-quote-carousel" data-slide-to="2"></li>
												</ol>
												<!-- Carousel items -->
												<div class="carousel-inner">
													<div class="active item">
														<blockquote>
															<p>Lorem ipsum dolor sit amet, consectetur
																adipisicing elit. Quidem, veritatis nulla eum laudantium
																totam tempore optio doloremque laboriosam quas, quos
																eaque molestias odio aut eius animi. Impedit temporibus
																nisi accusamus.</p>
														</blockquote>
														<div class="profile-circle"
															style="background-color: rgba(0, 0, 0, .2);"></div>
													</div>
													<div class="item">
														<blockquote>
															<p>Lorem ipsum dolor sit amet, consectetur
																adipisicing elit. Quidem, veritatis nulla eum laudantium
																totam tempore optio doloremque laboriosam quas, quos
																eaque molestias odio aut eius animi. Impedit temporibus
																nisi accusamus.</p>
														</blockquote>
														<div class="profile-circle"
															style="background-color: rgba(77, 5, 51, .2);"></div>
													</div>
													<div class="item">
														<blockquote>
															<p>Lorem ipsum dolor sit amet, consectetur
																adipisicing elit. Quidem, veritatis nulla eum laudantium
																totam tempore optio doloremque laboriosam quas, quos
																eaque molestias odio aut eius animi. Impedit temporibus
																nisi accusamus.</p>
														</blockquote>
														<div class="profile-circle"
															style="background-color: rgba(145, 169, 216, .2);"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								</section>

							</div>
							</section> </main>
							<!-- cualquier cosa -->
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

	<!-- /page container -->

	<%@ include file="../../jspf/jsGeneral.jspf"%>
	<script type="text/javascript"
		src="<c:url value='resources/plugin2/assets/js/pages/components_page_header.js'/>"></script>
	<script type="text/javascript">
		/*	
		 $(document).ready(function() {
		 $(document).bind("contextmenu",function(e) {
		
		 return false;
		
		 });
		
		
		 });

		 */
		// 		$(document).keydown(function (event) {
		// 				if (event.keyCode == 123) {
		// 				return false;
		// 				}
		// 				else if (event.ctrlKey && event.shiftKey && event.keyCode == 73) {
		// 				return false;
		// 				}
		// 		});
		window.onbeforeunload = function(e) {
			var e = e || window.event;
			if (e) {
				e.returnValue = 'Se perderan todos los datos que no hayas guardado';
			}
		}

		$.ajaxPrefilter(function(options, originalOptions, jqXHR) {
			options.async = true;
		});
	</script>

</body>

</html>
