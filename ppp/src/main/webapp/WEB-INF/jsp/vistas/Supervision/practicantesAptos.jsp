<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript"	src="<c:url value='resources/plugin2/assets/js/pages/jqueryui_navigation.js'/>"></script>

<script type="text/javascript"	src="<c:url value='resources/plugin2/assets/js/pages/form_checkboxes_radios.js'/>"></script>
<body>
	<div class="panel panel-flat">


		<div class="panel-body">
			<div class="jui-tabs-basic">
				<ul>
					<li><a href="#Con-Practicas">Con Practicas</a></li>
					<li><a href="#Sin-Practicas">Sin Practicas</a></li>
					<li><a href="#Pendientes">Pendientes</a></li>
					<li><a href="#Practicas-Concluidas">Practicas Concluidas</a></li>
				</ul>

				<!-- SECCION CON PRACTIAS  -->
				<div id="Con-Practicas" class="col-sm-6 col-lg-3">
					<div class="content-group">
						<div class="panel-body bg-blue border-radius-top text-center">
							<div class="content-group-sm">
								<h5 class="text-semibold no-margin-bottom">Victoria
									Davidson</h5>

								<span class="display-block">Head of UX</span>
							</div>

							<a href="#" class="display-inline-block content-group-sm"> <img
								src="resources/imagenes/1.png" class="img-circle img-responsive"
								alt="" style="width: 120px; height: 120px;">
							</a>

							<ul class="list-inline no-margin-bottom">
								<li><a href="#"
									class="btn bg-blue-700 btn-rounded btn-icon"><i
										class="icon-search4"></i></a></li>
								<li><a href="#"
									class="btn bg-blue-700 btn-rounded btn-icon"><i
										class="icon-github4"></i></a></li>
								<li><a href="#"
									class="btn bg-blue-700 btn-rounded btn-icon"><i
										class=" icon-mail-read"></i></a></li>
							</ul>
						</div>

						<div class="panel panel-body no-border-top no-border-radius-top">
							<div class="form-group mt-5">
								<label class="text-semibold">Nombre:</label> <span
									class="pull-right-sm">Victoria Anna Davidson</span>
							</div>

							<div class="form-group">
								<label class="text-semibold">Telefono:</label> <span
									class="pull-right-sm">123456789</span>
							</div>

							<div class="form-group">
								<label class="text-semibold">Correo:</label> <span
									class="pull-right-sm"><a href="#">jonas@upeu.edu.pe</a></span>
							</div>

							<div class="progress progress-lg">
								<div class="progress-bar bg-primary progress-bar-striped active"
									style="width: 75%">
									<span>75% Complete</span>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- SECCION SIN PRACTIAS  -->
				<div id="Sin-Practicas" class="col-sm-6 col-lg-3">
					<div class="content-group panel">
						<div class="panel-body text-center">
							<a href="#" class="display-inline-block"> <img
								src="resources/imagenes/1.png" class="img-circle img-responsive"
								alt="" style="width: 120px; height: 120px;">
							</a>

							<h6 class="text-semibold no-margin-bottom">
								<a href="#" class="text-default">Nathan Jacobson</a> <small
									class="display-block">Lead UX designer</small>
							</h6>
						</div>
						<div class="panel-footer text-center no-padding">
							<div class="row">
								<div class="col-xs-3">
									<a href="#" class="display-block p-10 text-default"
										data-popup="tooltip" data-placement="top"
										data-container="body" title="Google Drive"><i
										class="icon-search4"></i></a>
								</div>

								<div class="col-xs-3">
									<a href="#" class="display-block p-10 text-default"
										data-popup="tooltip" data-placement="top"
										data-container="body" title="Twitter"><i
										class="icon-github4"></i></a>
								</div>

								<div class="col-xs-3">
									<a href="#" class="display-block p-10 text-default"
										data-popup="tooltip" data-placement="top"
										data-container="body" title="Github"><i
										class="icon-mail-read"></i></a>
								</div>

								<div class="col-xs-3">
									<a href="#" class="display-block p-10 text-default"
										data-popup="tooltip" data-placement="top"
										data-container="body" title="Dribbble"><i
										class="icon-facebook2"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>


				<!-- SECCION PENDIENTES  -->
				<div id="Pendientes" class="col-lg-3 col-md-6">
					<div class="thumbnail">
						<div class="thumb thumb-rounded">
							<img src="resources/imagenes/1.png" alt="">
							<div>
								<span> <a href="assets/images/placeholder.jpg"></a>
								</span>
							</div>
						</div>
						<div class="caption text-center">
							<h6 class="text-semibold no-margin">Nombre: James Alexander</h6>
							<h6 class="text-semibold no-margin">Telefono: 123456789</h6>
							<h6 class="text-semibold no-margin">Correo:
								jonas@upeu.edu.pe</h6>

							<div class="checkbox checkbox-right checkbox-switchery ">
								<label> <input type="checkbox" class="switchery"
									id="hola"> Asignación
								</label>
							</div>
						</div>
					</div>
				</div>

				<div id="Practicas-Concluidas" class="col-sm-6 col-lg-3">
					<div class="content-group">
						<div class="panel-body bg-blue border-radius-top text-center">
							<div class="content-group-sm">
								<h5 class="text-semibold no-margin-bottom">Victoria
									Davidson</h5>

								<span class="display-block">Head of UX</span>
							</div>

							<a href="#" class="display-inline-block content-group-sm"> <img
								src="resources/imagenes/1.png" class="img-circle img-responsive"
								alt="" style="width: 120px; height: 120px;">
							</a>

							<ul class="list-inline no-margin-bottom">
								<li><a href="#"
									class="btn bg-blue-700 btn-rounded btn-icon"><i
										class="icon-search4"></i></a></li>
								<li><a href="#"
									class="btn bg-blue-700 btn-rounded btn-icon"><i
										class="icon-github4"></i></a></li>
								<li><a href="#"
									class="btn bg-blue-700 btn-rounded btn-icon"><i
										class=" icon-mail-read"></i></a></li>
							</ul>
						</div>

						<div class="panel panel-body no-border-top no-border-radius-top ">
							<div class="form-group mt-5">
								<label class="text-semibold">Nombre:</label> <span
									class="pull-right-sm">Victoria Anna Davidson</span>
							</div>

							<div class="form-group">
								<label class="text-semibold">Telefono:</label> <span
									class="pull-right-sm">123456789</span>
							</div>

							<div class="form-group">
								<label class="text-semibold">Correo:</label> <span
									class="pull-right-sm"><a href="#">jonas@upeu.edu.pe</a></span>
							</div>

							<div class="progress progress-lg">
								<div class="progress-bar bg-primary progress-bar-striped active"
									style="width: 100%">
									<span>100% Complete</span>
								</div>
							</div>
							<br>
							<div class="text-center">
								<button type="button"
									class="btn border-slate text-slate-800 btn-flat">
									<i class="icon-folder4 position-left"></i> Informe de Cierre
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$('#hola').on('click', function() {
		swal({
			title : "Good job!",
			text : "You clicked the button!",
			confirmButtonColor : "#66BB6A",
			type : "success"
		});
	});
</script>
</html>