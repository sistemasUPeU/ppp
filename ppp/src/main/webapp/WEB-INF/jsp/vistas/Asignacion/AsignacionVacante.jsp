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
								Bienvenido al area de notificaciones y registro de vacante <small class="display-block">Panther
									egret cut a more this bound one much yikes more less because
									hello alas while unbridled seal</small>
							</h4>
							<!-- sino -->
							<div class="row">
								
								
								<div class="row text-center">
									<div class="col-xs-6">
										<p><i class="icon-users2 icon-2x display-inline-block text-info"></i></p>
										<h5 class="text-semibold no-margin">2,345</h5>
										<span class="text-muted text-size-small">users</span>
									</div>

									

									<div class="col-xs-6">
										<p><i class="icon-cash3 icon-2x display-inline-block text-success"></i></p>
										<h5 class="text-semibold no-margin">$9,693</h5>
										<span class="text-muted text-size-small">revenue</span>
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
									<button id="btn_Nb" onclick="Notify();" type="button"
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

									<button  id="btn_Rvca" onclick="Regis();" type="button"
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
									
									<h3 id="msj" style="text-align: center;"><strong>Tienes una vacante pendiente </strong> </h3>
								
										<!-- data table -->
										<div class="row" id="contTable" >
									
										<table id="tabla" class="table datatable-responsive">
													<thead>
														<tr>
															<th>Empresa</th>
															<th>Ruc</th>
															<th>Horario</th>
															<th>Sueldo</th>
															<th>Estado</th>
															<th class="text-center">Opciones</th>
														</tr>
													</thead>
												<tbody id="data">
												<!-- data for js table -->
												
											</tbody>
										</table>
										
										</div>
										<!-- / data table  for js -->
									</div>
									
									
									<div class="row">
										
										<!-- User profile -->
											<div class="row">
											
											<!-- Timeline HISTORIAL -->
												<div class="col-lg-12">
													<div class="tabbable">
														<div class="tab-content">
															<div class="tab-pane fade in active" id="activity">
						
																
																<div class="timeline timeline-left content-group">
																	<div class="timeline-container">
																		<!-- Date stamp -->
																		<div class="timeline-date text-muted">
																			<i class="icon-history position-left"></i> <span class="text-semibold">Historial de practicas 
																		</div>
																		<!-- /date stamp -->
						
																		<!-- Invoices  -->
																		<div class="timeline-row">
																			<div class="timeline-icon">
																				<div class="bg-warning-400">
																					<i class="icon-cash3"></i>
																				</div>
																			</div>
						
																			<div id="historyCards" class="row">
																			
																				<div class="col-lg-12">
																					<div class="panel border-left-lg border-left-danger invoice-grid timeline-content">
																						<div class="panel-body">
																							<div class="row">
																								<div class="col-sm-12">
																									<h3 class="text-semibold no-margin-top">Usted Aun no ha iniciado su folder de practicas</h3>
																									<p>Para empezar su folder debe iniciar sus practicas</p>
																								</div>
																							</div>
																						</div>
						
																						<div class="panel-footer panel-footer-condensed">
																							<div class="heading-elements">
																								<span class="heading-text">
																									<span class="status-mark border-danger position-left"></span> <span class="text-semibold"></span>
																								</span>
						
																								<ul class="list-inline list-inline-condensed heading-text pull-right">
																									<li><a href="#" class="text-default" data-toggle="modal" data-target="#invoice"><i class="icon-eye8"></i></a></li>
																								</ul>
																							</div>
																						</div>
																					</div>
																				</div>
																			
																			</div>
																			
																		</div>
																		<!-- /invoices -->
																		
																		
																		
																		
																	</div>
															    </div>
															   
															
															</div>
														</div>
													</div>
												</div>
						
						                     <!-- /timeline HISTORIAL-->
						                  
						                    
						                    </div>
											<!-- /user profile -->
																
									</div>
									
									
									
									<button onclick="nsocultar();" style=" text-align: center;" type="button" class="btn bg-danger-400 btn-labeled btn-rounded"><b><i class="icon-switch2"></i></b> Cerrar	</button>
										
								</div>
							</div>
						</div>



					<!-- panel de registro -->
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
								
									<!-- Combobox -->
											<div class="row" id="Aparecer">
												
												<div class="row" id="combosb">
													<div class="col-md-6">
														<div class="form-group required">
															<label class="control-label">Empresas</label> 
															<select  data-placeholder="Lista de empresasEmpresas" id="select" class="select">
																<!-- Aqui va combo -->
																<optgroup  id="cbx1" label="Seleeciona Empresa">
																	<!-- data for js -->
																</optgroup>
															</select>
														</div>
													</div>
													
													<div class="col-md-6">
														<div class="form-group required">
															<label class="control-label">Representante</label>
															 <select  data-placeholder="Seguros de Empresa"  id="select2" class="select">
																<!-- Aqui va combo -->
																<optgroup id="cbx12" label="Seleeciona Representante">
																	<!-- data for js -->
																	
																</optgroup>
															</select>
														</div>
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
									<!-- /Combobox -->

								
									<div class="col-md-12" id="ocultar">
										<span class="label border-left-primary label-striped">Representante
											de Empresa</span>
											<br>

										
											<br>
											
											<div class="row">
												
												<form action="">
														<div class="row">
															<div class="col-md-3">
																<div class="form-group">
																	<label>Nombre: <span class="text-danger">*</span></label>
																	<input type="text" id="nombreRepre" name="nombre"
																		class="form-control" required placeholder="Nombre...">
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
												</form>										
											</div>
									</div>
									
									
									<div class ="row">
									
										<div class="col-md-3">
											<button  id="BotonEx" onclick="alert('soy existente')" style=" text-align: center;" type="button" class="btn bg-success-400 btn-labeled btn-rounded"><b><i class="icon-checkmark"></i></b> Registrar Existente	</button>
										</div>
										<div class="col-md-4">
											<button onclick="asocultar();" style=" text-align: center;" type="button" class="btn bg-danger-400 btn-labeled btn-rounded"><b><i class="icon-switch2"></i></b> Cancelar	</button>
										</div>
										
										<div class="col-md-3">
											<button  id="Boton" onclick="registrar();" style=" text-align: center;" type="button" class="btn bg-success-400 btn-labeled btn-rounded"><b><i class="icon-checkmark"></i></b> Registrar nuevo	</button>
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


	<!-- area de modales  -->
		 
		<div id="modal_theme_warning" class="modal fade">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header bg-warning">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h6 class="modal-title">Detalle de la vacante</h6>
								</div>

								<div class="modal-body">
									<h6 class="text-semibold">Información acerca de la vacante </h6>
									
									
									<div class="panel">
										
										<div id="empresaName" class="panel-body text-center">
											<div class="icon-object border-danger text-danger"><i class="icon-office"></i></div>
											<h5 class="text-semibold">Universidad Peruana Union</h5>
										</div>
							
									</div>
									<!-- List of latest updates -->
							<div class="panel panel-flat">
								
								<div id="cargModal" class="panel-body">
									<!-- esto esta siendo cargado por js -->
										<ul class="media-list">
											<li class="media">
												<div class="media-left">
													<a href="#" class="btn border-primary text-primary btn-flat btn-icon btn-rounded btn-sm">
														<i class="icon-store2"></i>
													</a>
												</div>
	
												<div class="media-body">
													<p><strong>RUC : </strong></p>
													<p><strong>Dirección : </strong></p>
												</div>
											</li>
	
											<li class="media">
												<div class="media-left">
													<a href="#" class="btn border-danger text-danger btn-flat btn-icon btn-rounded btn-sm">
														<i class="icon-vcard"></i>
													</a>
												</div>
	
												<div class="media-body">
													<p><strong>Representante : </strong></p>
													<p><strong>Celular : </strong></p>
													<p><strong>DNI : </strong></p>
													<p><strong>Correo : </strong></p>
												</div>
											</li>
	
											<li class="media">
												<div class="media-left">
													<a href="#" class="btn border-slate text-slate btn-flat btn-icon btn-rounded btn-sm">
														<i class="icon-cash3"></i>
													</a>
												</div>
	
												<div class="media-body">
													<p><strong>Periodo : </strong></p>
													<p><strong>Horario : </strong></p>
													<p><strong>Sueldo : </strong></p>
												</div>
											</li>
											<li class="media">
												<div class="media-left">
													<a href="#" class="btn border-success text-success btn-flat btn-icon btn-rounded btn-sm">
														<i class="icon-checkmark3"></i>
													</a>
												</div>
												
												<div class="media-body">
													<p><strong>Area de Trabajo : </strong></p>
												</div>
											</li>
										</ul>
									<!-- /esto esta siendo cargado por js -->
								</div>
								
								
							</div>
							<!-- /list of latest updates -->

									<hr>

									<h6 class="text-semibold">Nota:</h6>
									<p>Una vez aceptado la vacante tendras que descargar la carta de presentacion..... bla bla bla</p>
								</div>

								<div class="modal-footer">
									<button type="button" class="btn btn-link" data-dismiss="modal">Cerrar</button>
									<button type="button" class="btn btn-warning">Aceptar </button>
								</div>
							</div>
						</div>
				</div>
				
	<!-- / are4a de modales -->


</body>
		
		
<script>
	$(document).ready(function() {
		$("#Notify").hide();
		$("#Regis").hide();
		$("#Boton").hide();
// 		$("#modal_theme_warning").modal('show');
	});

	function Notify() {
		$("#Notify").show(500);
		$('#btn_Nb').attr("disabled", true);
	}

	function Regis() {
		$("#Regis").show(500);
		$('#btn_Rvca').attr("disabled", true);
	}
	
	function asocultar(){
		$("#Regis").hide(500);
		$('#btn_Rvca').attr("disabled", false);
		$("#Aparecer").show();
		$("#ocultar").hide();
		
		//botones
		$("#Boton").hide();
		$("#BotonEx").show();
	}
	
	function nsocultar(){
		$("#Notify").hide(500);
		$('#btn_Nb').attr("disabled", false);
	}
	
</script>

	<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/datatables_responsive.js'/>"></script>
	<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/wizard_steps.js'/>"></script>
	<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/components_buttons.js'/>"></script>
<%-- 	<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/user_pages_profile.js'/>"></script> --%>
	<script src="<c:url value='resources/js/BussinesCore/ReEm.js'/>"></script>
</html>