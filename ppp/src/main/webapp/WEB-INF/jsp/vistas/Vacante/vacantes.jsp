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

	<div class="col-md-12">

		<!-- Basic setup -->
		<div class="panel panel-white">
			<div class="panel-heading">
				<h6 class="panel-title">Vacantes</h6>
				<div class="heading-elements">
					<ul class="icons-list">
						<li><a data-action="collapse"></a></li>
						<li><a data-action="reload"></a></li>
						<li><a data-action="close"></a></li>
					</ul>
				</div>
			</div>

			<div class="stepy-basic">
				<!-- 			stepy-validation -->
				<fieldset title="1">					

					<!-- Info alert -->
					<div class="alert alert-info alert-styled-left alert-arrow-left alert-component">
						<button type="button" class="close" data-dismiss="alert">
							<span>&times;</span><span class="sr-only">Close</span>
						</button>
						<h6 class="alert-heading text-semibold">Bienvenido al area de
							Registro de Vacantes</h6>
						Registrar los cupos para una vacante. ejemplo: Para el puesto de programador java necesito 4 personas. Los cupos seria 4. 
					</div>
					<!-- /info alert -->
<!-- 
				<div class="row">	
					<div class="col-md-3">
						<div class="form-group">
								<button id="algo_" type="button" onclick="mostrar_bloque('div_new_vacante');" class="btn  btn-info bg-teal-400 btn-labeled btn-rounded btn-xs">
								<b><i class="icon-plus3"></i></b> Agregar</button>															
						</div>
					</div>	
				</div>
 -->												
				<div>									
					<!-- Page container -->					
		<div class="page-container">	
			<!-- Page content -->
			<div class="page-content">
				<!-- Main content -->
				<div class="content-wrapper">
					<!-- Content area -->
					<div class="content">
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
												<div id="div_new_vacante">
													<%@ include file="../../../../jspf/vacante/form_vacante.jspf"%>
												</div>
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
									
									<%@ include file="../../../../jspf/vacante/form_vacante.jspf"%>																			
																				
								<!-- Botones de los formularios desplegables -->
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
											<input type="hidden" id="id_form_registrar" value="">										
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
				</div>
														
				</fieldset>			
 
				<button type="button" 
					class="btn btn-primary stepy-finish">
					Registrar <i class="icon-check position-right"></i>
				</button>
 				
			</div>
		</div>
	</div>

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
		
		var vistaDesplegable=$("#id_form_registrar").attr("value");
		$("#"+vistaDesplegable).hide();
		
		//botones
		$("#Boton").hide();
		$("#BotonEx").show();
	}
	
	function nsocultar(){
		$("#Notify").hide(500);
		$('#btn_Nb').attr("disabled", false);
	}
	
</script>
	<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/core/libraries/jquery.min.js'/>"></script>	
	<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/wizard_steps.js'/>"></script>
	<script type="text/javascript" src="<c:url value='resources/js/BussinesCore/yer_vacante.js'/>"></script>
<!-- 
<script type="text/javascript">
	/*$('#Boton').on('click', function() {
		swal({
			title : "Registrado correctamente!",
			text : "Espere la confirmación del Supervisor de Practicas.!",
			confirmButtonColor : "#66BB6A",
			type : "success"
		});
	});*/
</script>
 -->
</html>