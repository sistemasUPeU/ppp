<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
		
</head>

<body>
	<!-- Page container -->
	<div class="page-container">

		<!-- Page content -->
		<div class="page-content">



			<!-- Main content -->
			<div class="content-wrapper">
				<!-- Content area -->
				<div class="content">

					<!-- Search field -->
					<div class="panel">
						<div class="panel-body">
							<h4 class="text-center content-group-lg">
								Welcome to our knowledge base <small class="display-block">Panther
									egret cut a more this bound one much yikes more less because
									hello alas while unbridled seal</small>
							</h4>
							<!-- sino -->
							<div class="row">
								<div class="col-sm-6 col-md-6">
									<div class="panel panel-body">
										<div class="media no-margin">
											<div class="media-body">
												<h3 class="no-margin text-semibold">Tienes una
													solicitud de vacante</h3>
											</div>

											<div class="media-right media-middle">
												<i class="icon-bubbles4 icon-3x text-blue-400"></i>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-md-6">
									<div class="panel panel-body">
										<div class="media no-margin">
											<div class="media-body">
												<h3 class="no-margin text-semibold">
													<span>Te quedan - </span>389,438 <span>Horas</span>
												</h3>
											</div>

											<div class="media-right media-middle">
												<i class="icon-bag icon-3x text-danger-400"></i>
											</div>
										</div>
									</div>
								</div>
							</div>


						</div>
					</div>
					<!-- /search field -->


					<!-- Info blocks -->
					<div class="row">
						<div class="col-md-6">
							<div class="panel">
								<div class="panel-body text-center">
									<div class="icon-object border-warning text-warning">
										<i class="icon-bell3"></i>
									</div>
									<h3 class="text-semibold">Notificaciones</h3>
									<p class="mb-15">En el presente apartado se presentan las
										notificaciones acerca de vacantes o asiganciones existentes</p>
									<button onclick="Notify();" type="button"
										class="btn bg-warning btn-ladda btn-ladda-progress"
										data-style="expand-down">
										<span class="success-label">Revisar ... !! </span>
									</button>
								</div>
							</div>
						</div>

						<div class="col-md-6">
							<div class="panel">
								<div class="panel-body text-center">
									<div class="icon-object border-success text-success">
										<i class="icon-briefcase"></i>
									</div>
									<h3 class="text-semibold">Registrar Vacante Nueva</h3>
									<p class="mb-15">En el presente apartado se puede registrar
										a la empresa en la que se realizaran las practicas</p>

									<button onclick="Regis();" type="button"
										class="btn bg-success btn-ladda btn-ladda-progress"
										data-style="expand-down">
										<span class="success-label">Revisar ... !! </span>
									</button>
								</div>
							</div>
						</div>

					</div>
					<!-- /info blocks -->

					<!-- area de panelbars -->
					<div class="row">
						<div class="col-md-6">
							
							<div id="Notify" class="panel panel-callout">
								<div class="panel-heading bg-warning">
									<h6 class="panel-title">
										<strong>Notificaciones</strong>
									</h6>
									<div class="heading-elements">
										<ul class="icons-list">
											<li><a data-action="collapse"></a></li>
											<li><a data-action="reload"></a></li>
											<li><a data-action="close"></a></li>
										</ul>
									</div>
								</div>

								<div class="panel-body">
								
									<div class="row">
										<h3>Tienes notificaciones </h3>
										
										<!-- data table -->
								
											<table class="table datatable-responsive">
							<thead>
								<tr>
									<th>First Name</th>
									<th>Last Name</th>
									<th>Job Title</th>
									<th>DOB</th>
									<th>Status</th>
									<th class="text-center">Actions</th>
								</tr>
							</thead>
							<tbody>
								
								<tr>
									<td>Delma</td>
									<td>Bonds</td>
									<td>Lead Brand Manager</td>
									<td>21 Dec 1968</td>
									<td><span class="label label-info">Pending</span></td>
									<td class="text-center">
										<ul class="icons-list">
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown">
													<i class="icon-menu9"></i>
												</a>

												<ul class="dropdown-menu dropdown-menu-right">
													<li><a href="#"><i class="icon-file-pdf"></i> Export to .pdf</a></li>
													<li><a href="#"><i class="icon-file-excel"></i> Export to .csv</a></li>
													<li><a href="#"><i class="icon-file-word"></i> Export to .doc</a></li>
												</ul>
											</li>
										</ul>
									</td>
								</tr>
								
								<tr>
									<td>Coy</td>
									<td>Wollard</td>
									<td>Customer Service Operator</td>
									<td>12 Oct 1982</td>
									<td><span class="label label-success">Active</span></td>
									<td class="text-center">
										<ul class="icons-list">
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown">
													<i class="icon-menu9"></i>
												</a>

												<ul class="dropdown-menu dropdown-menu-right">
													<li><a href="#"><i class="icon-file-pdf"></i> Export to .pdf</a></li>
													<li><a href="#"><i class="icon-file-excel"></i> Export to .csv</a></li>
													<li><a href="#"><i class="icon-file-word"></i> Export to .doc</a></li>
												</ul>
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<td>Maxwell</td>
									<td>Maben</td>
									<td>Regional Representative</td>
									<td>25 Feb 1988</td>
									<td><span class="label label-danger">Suspended</span></td>
									<td class="text-center">
										<ul class="icons-list">
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown">
													<i class="icon-menu9"></i>
												</a>

												<ul class="dropdown-menu dropdown-menu-right">
													<li><a href="#"><i class="icon-file-pdf"></i> Export to .pdf</a></li>
													<li><a href="#"><i class="icon-file-excel"></i> Export to .csv</a></li>
													<li><a href="#"><i class="icon-file-word"></i> Export to .doc</a></li>
												</ul>
											</li>
										</ul>
									</td>
								</tr>
								
							</tbody>
						</table>
					
								
									</div>
									
								</div>
							</div>
						</div>

						<div class="col-md-6">
							<div id="Regis" class="panel panel-callout">
								<div class="panel-heading bg-success">
									<h6 class="panel-title">
										<strong>Resgitro de vacante</strong>
									</h6>
									<div class="heading-elements">
										<ul class="icons-list">
											<li><a data-action="collapse"></a></li>
											<li><a data-action="reload"></a></li>
											<li><a data-action="close"></a></li>
										</ul>
									</div>
								</div>

								<div class="panel-body">
								
								<!-- forms -->
								
									<div class="row" id="Aparecer">
										<div class="col-md-6">
										
										
											<div class="form-group required">
												<label class="control-label">Empresas</label> <select
													data-placeholder="Lista de empresasEmpresas" class="select">
													<!-- Aqui va combo -->
												</select>

											</div>
										
										
										</div>
										<div class="col-md-6">
											<div class="form-group required">
												<label class="control-label">Representante</label> <select
													data-placeholder="Seguros de Empresa" class="select">
													<!-- Aqui va combo -->
												</select>
											</div>

										</div>
										<div class="col-md-3">
											<div class="form-group">
												<button type="button" onclick="ocultar();"
													class="btn btn-info btn-float btn-rounded">
													<i class="icon-plus3"></i>
												</button>
											</div>
										</div>
									</div>

									<div class="col-md-12" id="ocultar">
										<span class="label border-left-primary label-striped">Representante
											de Empresa</span>
											<br>

										
											<br>
											<div class="row">
												<div class="col-md-3">
													<div class="form-group">
														<label>Nombre: <span class="text-danger">*</span></label>
														<input type="text" id="nombreRepre" name="nombre"
															class="form-control required" placeholder="Nombre...">
													</div>
												</div>

												<div class="col-md-4">
													<div class="form-group">
														<label>Apellidos: <span class="text-danger">*</span></label>
														<input type="text" id="ape" name="apellido"
															class="form-control required" placeholder="Apellido...!">
													</div>
												</div>

												<div class="col-md-2">
													<div class="form-group">
														<label>DNI<span class="text-danger">*</span></label> <input
															type="number" id="dni" name="dni"
															class="form-control required"
															placeholder="doc. de identidad">
													</div>
												</div>

												<div class="col-md-2">
													<div class="form-group">
														<label>Celular<span class="text-danger">*</span></label> <input
															type="number" id="cel" name="celular"
															class="form-control required"
															placeholder="numero de celular">
													</div>
												</div>

												<div class="col-md-3">
													<div class="form-group">
														<label>Corre Electronico: <span
															class="text-danger">*</span></label> <input type="email"
															id="correo" name="correo" class="form-control required"
															placeholder="Example@upeu.edu.pe">
													</div>
												</div>
												<div class="col-md-2">
													<div class="form-group">
														<label>Genero<span class="text-danger required">*</span></label>
														<select name="Genero" id="genero"
															data-placeholder="Genero" class="form-control required">
															<option>Seleccionar</option>
															<option value="1">M</option>
															<option value="2">F</option>
														</select>
													</div>
												</div>

											</div>

											<span class="label border-left-success label-striped"><strong>Registro
													de Empresa</strong></span>

											<div class="row">
												<br>
												<div class="col-md-4">
													<div class="form-group">
														<label>Razon Social:<span class="text-danger">*</span></label>
														<input type="text" id="rasoc" name="rasoc"
															class="form-control required" placeholder="razon social">
													</div>
												</div>

												<div class="col-md-3">
													<div class="form-group">
														<label>Direccion:<span class="text-danger">*</span></label>
														<input type="text" id="direccion" name="direccion"
															class="form-control required" placeholder="direccion">
													</div>
												</div>

												<div class="col-md-4">
													<div class="form-group">
														<label>RUC:<span class="text-danger">*</span></label> <input
															type="text" id="ruc" name="ruc"
															class="form-control required" placeholder="ruc">
													</div>
												</div>

												<div class="col-md-2">
													<div class="form-group">
														<label>Cargo:<span class="text-danger">*</span></label> <input
															type="text" id="cargo" name="cargo"
															class="form-control required" placeholder="cargo">
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label>Actividad: <span class="text-danger">*</span></label>
														<input type="text" id="actividad" name="actividad"
															class="form-control required" placeholder="actividad">
													</div>
												</div>

												<div class="col-md-4">
													<div id="llenarseguro" class="form-group required">
														<label class="control-label">Seguros de Empresa</label> <select
															id="seguro" data-placeholder="Seguros de Empresa"
															class="select">
															<!-- Aqui va combo -->
														</select>

													</div>
												</div>
											</div>
							
											
									</div>
									
									
									<div class ="row">
										<div class="col-md-3">
											<button  id="Boton" onclick="registrar();" style=" text-align: center;" type="button" class="btn bg-success-400 btn-labeled btn-rounded"><b><i class="icon-checkmark"></i></b> Completar Registro	</button>
										</div>
										
										<div class="col-md-4">
										
											<button onclick="asocultar();" style=" text-align: center;" type="button" class="btn bg-danger-400 btn-labeled btn-rounded"><b><i class="icon-switch2"></i></b> Cancelar	</button>
										</div>
									</div>
								</div>
							</div>
						</div>


					</div>


				</div>
				<!-- /content area -->

			</div>
			<!-- /main content -->

		</div>
		<!-- /page content -->

	</div>
	<!-- /page container -->


</body>
		
		
<script>
	$(document).ready(function() {
		$("#Notify").hide();
		$("#Regis").hide();

	});

	function Notify() {
		$("#Notify").show(500);

	}

	function Regis() {
		$("#Regis").show(500);
	}
	
	function asocultar(){
		$("#Regis").hide(500);
		
	}
	
</script>

	<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/datatables_responsive.js'/>"></script>
<script src="<c:url value='resources/js/BussinesCore/ReEm.js'/>"></script>
</html>