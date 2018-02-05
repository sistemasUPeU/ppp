<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript"
	src="<c:url value='resources/plugin2/assets/js/pages/jqueryui_navigation.js'/>"></script>

<script type="text/javascript"
	src="<c:url value='resources/plugin2/assets/js/pages/form_checkboxes_radios.js'/>"></script>
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
				<div id="Con-Practicas">
					<div class="col-lg-3 col-md-6">
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
								<div class="progress progress-lg">
									<div
										class="progress-bar bg-primary progress-bar-striped active"
										style="width: 75%">
										<span>75% Complete</span>
									</div>
								</div>
								<br>
								<button type="button" class="btn border-slate text-slate-800 btn-flat"><i class="icon-search4 position-left"></i> Prefil</button>			
							</div>
						</div>
					</div>					
				</div>

				<div id="Sin-Practicas"></div>


				<!-- SECCION PENDIENTES  -->
				<div id="Pendientes">

					<div class="col-lg-3 col-md-6">
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
				</div>

				<div id="Practicas-Concluidas"></div>
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