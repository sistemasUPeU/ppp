<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Root Bootstrap 4 Admin Template">
<meta name="author" content="Lukasz Holeczek">
<meta name="keyword" content="Root Bootstrap 4 Admin Template">
<!-- <link rel="shortcut icon" href="assets/ico/favicon.png"> -->

<title>Gestion de PPP</title>


<!-- Icons -->
<link href="<c:url value='resources/plugin/css/font-awesome.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='resources/plugin/css/simple-line-icons.css'/>"
	rel="stylesheet">

<!-- Main styles for this application -->
<link href="<c:url value='resources/plugin/css/style.css'/>"
	rel="stylesheet">

</head>
<body>
<body class="app flex-row align-items-center">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card-group mb-0">
					<div class="card p-2">

						<form class="login-form" action="login" method="POST">
							<div class="card-block">
								<h1>PPP</h1>
								<p class="text-muted">Gestion de Prácticas pre-profesionales..!</p>
								<div class="input-group mb-1">
									<span class="input-group-addon"><i class="icon-user"></i>
									</span> <input type="text" name="username" class="form-control"
										placeholder="Username">
								</div>
								<div class="input-group mb-2">
									<span class="input-group-addon"><i class="icon-lock"></i>
									</span> <input type="password" name="password" class="form-control"
										placeholder="Password">
								</div>
								<div class="row margin">
									<div class="input-field col s12">
										<c:if test="${not empty error}">

											<div class="alert alert-warning">
												<strong>${error}</strong>
											</div>

										</c:if>
										<c:if test="${not empty msg}">
											<div class="alert alert-info">
												<strong>${msg}!</strong> 
											</div>

										</c:if>
									</div>
								</div>

								<div class="row">
									<div class="col-6">
										<button type="submit" class="btn btn-primary px-2">Login</button>
										<input type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" />
									</div>
									<div class="col-6 text-right">
										<button type="button" class="btn btn-link px-0">Forgot
											password?</button>
									</div>
								</div>
							</div>

						</form>
						<!-- fin -->
					</div>


					<div class="card card-inverse card-primary py-3 hidden-md-down"
						style="width: 44%">
						<div class="card-block text-center">
							<div>
								
								<img alt="" style="width:60%" src="resources/imagenes/Logoupeu.png">
							
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap and necessary plugins -->
	<script src="<c:url value='resources/plugin/js/libs/jquery.min.js'/>"></script>
	<script src="<c:url value='resources/plugin/js/libs/tether.min.js'/>"></script>
	<script
		src="<c:url value='resources/plugin/js/libs/bootstrap.min.js'/>"></script>
</body>
</html>