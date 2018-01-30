<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!--     -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html lang="es">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Gestion de PPP</title>

<!-- Global stylesheets -->
<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900"	rel="stylesheet" type="text/css">
<link	href="<c:url value='resources/plugin2/assets/css/icons/icomoon/styles.css'/>"	rel="stylesheet" type="text/css">
<link href="<c:url value='resources/plugin2/assets/css/bootstrap.css'/>"	rel="stylesheet" type="text/css">
<link href="<c:url value='resources/plugin2/assets/css/core.css'/>"	rel="stylesheet" type="text/css">
<link	href="<c:url value='resources/plugin2/assets/css/components.css'/>"	rel="stylesheet" type="text/css">
<link href="<c:url value='resources/plugin2/assets/css/colors.css'/>"	rel="stylesheet" type="text/css">
<!-- /global stylesheets -->

<!-- Core JS files -->
<script type="text/javascript"
	src="<c:url value='resources/plugin2/assets/js/plugins/loaders/pace.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='resources/plugin2/assets/js/core/libraries/jquery.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='resources/plugin2/assets/js/core/libraries/bootstrap.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='resources/plugin2/assets/js/plugins/loaders/blockui.min.js'/>"></script>
	
	<!-- Theme JS files -->
	<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/plugins/velocity/velocity.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/plugins/velocity/velocity.ui.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/plugins/ui/prism.min.js'/>"></script>
	
<!-- /core JS files -->
	<script type="text/javascript"	src="<c:url value='resources/plugin2/assets/js/core/app.js'/>"></script>
	<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/animations_velocity_examples.js'/>"></script>
<!-- /theme JS files -->

</head>



<body class="login-container">

	<!-- Main navbar -->
	<div class="navbar navbar-inverse">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.html"><img src="<c:url value='resources/plugin2/assets/images/logo_icon_light.png'/>" alt=""></a>
		</div>
<div class="navbar-collapse collapse" id="navbar-mobile">
			<ul class="nav navbar-nav navbar-right">
				<li>
					<a href="#">
						<i class="icon-display4"></i> <span class="visible-xs-inline-block position-right"> Go to website</span>
					</a>
				</li>

				<li>
					<a href="#">
						<i class="icon-user-tie"></i> <span class="visible-xs-inline-block position-right"> Contact admin</span>
					</a>
				</li>

				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-cog3"></i>
						<span class="visible-xs-inline-block position-right"> Options</span>
					</a>
				</li>
			</ul>
		</div>
	
		</div>
	<!-- /main navbar -->


	<!-- Page container -->
	<div class="page-container">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main content -->
			<div class="content-wrapper">

				<!-- Content area -->
				<div class="content">

					<!-- Simple login form -->
					<form action="login" method="POST">
						<div class="panel panel-body login-form">
							<div class="text-center">
								<div class="icon-object border-slate-300 text-slate-300"><i class="icon-home2"></i></div>
								<h5 class="content-group">Gestion de Practicas Pre -  Profesionales</h5>
							</div>

							<div class="form-group has-feedback has-feedback-left">
								<input type="text" name="username"  class="form-control" placeholder="Username">
								<div class="form-control-feedback">
									<i class="icon-user text-muted"></i>
								</div>
							</div>

							<div class="form-group has-feedback has-feedback-left">
								<input type="password" name="password" class="form-control" placeholder="Password">
								<div class="form-control-feedback">
									<i class="icon-lock2 text-muted"></i>
								</div>
							</div>

							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-block">Ingresar <i class="icon-circle-right2 position-right"></i></button>
								<input type="hidden" name="${_csrf.parameterName}"	value="${_csrf.token}" />
							</div>

							<!-- if de cierre de session -->
							<div class="row margin">
								<div class="input-field col s12">
									<c:if test="${not empty error}">
										<div class="alert alert-warning alert-bordered">
											<button type="button" class="close" data-dismiss="alert">
												<span>&times;</span><span class="sr-only">Close</span>
											</button>
											<span class="text-semibold">${error}
										</div>
									</c:if>
									<c:if test="${not empty msg}">

										<div class="alert alert-primary no-border">
											<button type="button" class="close" data-dismiss="alert">
												<span>&times;</span><span class="sr-only">Close</span>
											</button>
											<span class="text-semibold">${msg}!
										</div>
									</c:if>
								</div>
							</div>

						</div>
					</form>
					<!-- /simple login form -->


					<!-- Footer -->
					<div class="footer text-center">
	                  &copy; 2018. <a href="#">Sistema de Practicas Pre-Profesionales</a> by <a href="https://www.facebook.com/AlphaTeamUPeU/" target="_blank">Alpha Team - UPeU</a>
                    </div>
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