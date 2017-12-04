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
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value='resources/plugin2/assets/css/icons/icomoon/styles.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='resources/plugin2/assets/css/bootstrap.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='resources/plugin2/assets/css/core.css'/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value='resources/plugin2/assets/css/components.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='resources/plugin2/assets/css/colors.css'/>"
	rel="stylesheet" type="text/css">
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
<!-- /core JS files -->

<!-- Theme JS files -->
<script type="text/javascript"
	src="<c:url value='resources/plugin2/assets/js/plugins/forms/styling/uniform.min.js'/>"></script>

<script type="text/javascript"
	src="<c:url value='resources/plugin2/assets/js/core/app.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='resources/plugin2/assets/js/pages/login.js'/>"></script>
<!-- /theme JS files -->

</head>

<body class="login-container bg-slate-800">

	<!-- Page container -->
	<div class="page-container">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main content -->
			<div class="content-wrapper">

				<!-- Content area -->
				<div class="content">

					<!-- Advanced login -->
					<form action="login" method="POST">
						<div class="panel panel-body login-form">
							<div class="text-center">
								<div class="icon-object border-warning-400 text-warning-400">
									<i class="icon-people"></i>
								</div>
								<h5 class="content-group-lg">
									Login to your account <small class="display-block">Enter
										your credentials</small>
								</h5>
							</div>

							<div class="form-group has-feedback has-feedback-left">
								<input type="text" name="username" class="form-control"
									placeholder="Username">
								<div class="form-control-feedback">
									<i class="icon-user text-muted"></i>
								</div>
							</div>

							<div class="form-group has-feedback has-feedback-left">
								<input type="password" name="password" class="form-control"
									placeholder="Password">
								<div class="form-control-feedback">
									<i class="icon-lock2 text-muted"></i>
								</div>
							</div>

							<div class="form-group login-options">
								<div class="row">
									<div class="col-sm-6">
										<label class="checkbox-inline"> <input type="checkbox"
											class="styled" checked="checked"> Remember
										</label>
									</div>

									<div class="col-sm-6 text-right">
										<a href="login_password_recover.html">Forgot password?</a>
									</div>
								</div>
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

							<div class="form-group">
								<button type="submit" class="btn bg-blue btn-block">
									Login <i class="icon-circle-right2 position-right"></i>
							 <input	type="hidden" name="${_csrf.parameterName}"	value="${_csrf.token}" />
								</button>
							</div>

						</div>
					</form>
					<!-- /advanced login -->

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