<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
/* The switch - the box around the slider */
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
  float:right;
}

/* Hide default HTML checkbox */
.switch input {display:none;}

/* The slider */
.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input.default:checked + .slider {
  background-color: #444;
}
input.primary:checked + .slider {
  background-color: #2196F3;
}
input.success:checked + .slider {
  background-color: #8bc34a;
}
input.info:checked + .slider {
  background-color: #3de0f5;
}
input.warning:checked + .slider {
  background-color: #FFC107;
}
input.danger:checked + .slider {
  background-color: #f44336;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
</style>
</head>

<body class="has-detached-right">
	<!-- Page container -->
	<div class="page-container">
		<!-- Page content -->
		<div class="page-content">

			<!-- Main content -->
			<div class="content-wrapper">

				<!-- Content area -->
				<div class="content">

					<!-- Detached content -->
					<div class="container-detached">
						<div class="content-detached" id="listed">

							<!-- List card vacantes-->
							<ul class="media-list">
								<li class="media panel panel-body stack-media-on-mobile"><a
									href="<c:url value='resources/imagenes/ICONO_ASIG.png'/>"
									class="media-left" data-popup="lightbox"> <img
										src="<c:url value='resources/imagenes/ICONO_ASIG.png'/>"
										width="50" alt="">
								</a>

									<div class="media-body">
										<h3 class="media-heading text-semibold">
											<a href="#">NOMBRE DE LA EMPRESA</a>
										</h3>

										<ul class="list-inline list-inline-separate mb-10">
											<li><a href="#" class="text-muted">FECHA </a></li>
											<li><a href="#" class="text-muted">Men's Accessories</a></li>
										</ul>

										<!-- contenido -->
										<ul class="list list-icons">
											<li>
												<h4>
													<i class="icon-checkmark-circle text-success position-left"></i>
													Semestre :
												</h4>
											</li>
											<li>
												<h4>
													<i class="icon-checkmark-circle text-success position-left"></i>
													Direccion :
												</h4>
											</li>
											<li>
												<h4>
													<i class="icon-checkmark-circle text-success position-left"></i>
													Area de Trabajo :
												</h4>
											</li>
											<li>
												<h4>
													<i class="icon-checkmark-circle text-success position-left"></i>
													Horario:
												</h4>
											</li>
											<li>
												<h4>
													<i class="icon-checkmark-circle text-success position-left"></i>
													Sueldo:
												</h4>
											</li>
										</ul>
										<!-- fin de conteniido -->

										<div class=" heading-divided"></div>
										<h6 class="text-semibold">
											<i class="icon-folder6 position-left"></i> Datos del
											Representante: <small class="position-right"></small>
										</h6>
										<ul class="list-inline list-inline-separate">
											<li><a
												class="btn border-indigo-400 text-indigo-400 btn-flat btn-rounded btn-xs btn-icon"><i
													class="icon-newspaper"></i></a>nombre del representante <a
												href="#">cesar</a></li>
											<li><a
												class="btn border-indigo-400 text-indigo-400 btn-flat btn-rounded btn-xs btn-icon"><i
													class="icon-phone2"></i></a> teelefono : <a href="#">wishlist</a></li>
											<li><a
												class="btn border-indigo-400 text-indigo-400 btn-flat btn-rounded btn-xs btn-icon"><i
													class=" icon-envelop5"></i></a> Correo <a href="#">wishlist</a></li>
										</ul>
									</div>

									<div class="media-right text-center">
										<h3 class="no-margin text-semibold">cantidad</h3>
										<button type="button" onclick="alert('tu prima')"
											class="btn bg-teal-400 mt-15">
											<i class="icon-medal-first position-left"></i>Asignar
										</button>
									</div></li>
							</ul>
							<!-- /list -->

						</div>
						<!-- Pagination -->
						<div class="text-center content-group-lg pt-20">
							<ul class="pagination">
								<li class="disabled"><a href="#"><i
										class="icon-arrow-small-left"></i></a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#"><i class="icon-arrow-small-right"></i></a></li>
							</ul>
						</div>
						<!-- /pagination -->
					</div>
					<!-- /detached content -->

					<!-- Detached sidebar -->
					<div class="sidebar-detached">
						<div class="sidebar sidebar-default sidebar-separate">
							<div class="sidebar-content">


								<!-- Filter -->
								<div class="sidebar-category">
									<div class="category-title">
										<span>LINEAS ACADEMICAS</span>
										<ul class="icons-list">
											<li><a href="#" data-action="collapse"></a></li>
										</ul>
									</div>

									<div class="category-content">
										<form action="#">

											<div class="form-group">
												<legend
													class="text-size-mini text-muted no-border no-padding">Lineas
													academicas</legend>

												<div class="checkbox">
													<label class="display-block"> <input
														type="checkbox" class="styled"> Part - time
													</label>
												</div>

												<div class="checkbox">
													<label class="display-block"> <input
														type="checkbox" class="styled"> Ful - time
													</label>
												</div>

												<div class="checkbox">
													<label class="display-block"> <input
														type="checkbox" class="styled"> Kids
													</label>
												</div>

												<div class="checkbox">
													<label class="display-block"> <input
														type="checkbox" class="styled"> Unisex
													</label>
												</div>
											</div>

											<button type="submit" class="btn bg-blue btn-block">Filter</button>
										</form>
									</div>
								</div>
								<!-- /filter -->

							</div>
						</div>
					</div>
					<!-- /detached sidebar -->



				</div>
				<!-- /content area -->

				<!-- Success modal -->
				<div id="modal_theme_success" class="modal fade">
					<div class="modal-dialog  modal-lg">
						<div class="modal-content">
							<div class="modal-header bg-success">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h5 class="panel-title">Busqueda de practicantes</h5>
							</div>

							<div class="modal-body">
								<div class="panel" style="background-color: #f5f5f5;">
									<!-- pruebas -->

									<!-- Page container -->
									<div class="page-container">

										<!-- Page content -->
										<div class="page-content">
											<!-- Main content -->
											<div class="content-wrapper">
												<!-- Content area -->
												<div class="content">

													<!-- Search field -->
													<div class="panel panel-flat">
														<div class="panel-body">
															<form action="#" class="main-search">
<!-- 																<div class="input-group content-group"> -->
<!-- 																	<div class="has-feedback has-feedback-left"> -->
<!-- 																		<input type="text" class="form-control input-xlg" -->
<!-- 																			value=""> -->
<!-- 																		<div class="form-control-feedback"> -->
<!-- 																			<i class="icon-search4 text-muted text-size-base"></i> -->
<!-- 																		</div> -->
<!-- 																	</div> -->

<!-- 																	<div class="input-group-btn"> -->
<!-- 																		<button type="submit" class="btn btn-primary btn-xlg">Search</button> -->
<!-- 																	</div> -->
<!-- 																</div> -->

																<div class="row search-option-buttons">
																	<div class="col-sm-6">
																		<ul
																			class="list-inline list-inline-condensed no-margin-bottom">
																			<li class="dropdown"><a href="#"
																				class="btn btn-link dropdown-toggle"
																				data-toggle="dropdown"> <i
																					class="icon-stack2 position-left"></i> All
																					categories <span class="caret"></span>
																			</a>

																				<ul class="dropdown-menu">
																					<li><a href="#"><i class="icon-question7"></i>
																							Getting started</a></li>
																				</ul></li>

																		</ul>
																	</div>


																</div>
															</form>
														</div>
													</div>
													<!-- /search field -->


													<!-- Tabs -->
													<ul
														class="nav nav-lg nav-tabs nav-tabs-bottom search-results-tabs">
														<li class="active"><a href="search_users.html"><i
																class="icon-people position-left"></i> PRACTICANTES</a></li>
													</ul>
													<!-- /tabs -->


													<!-- Search results -->
													<div class="content-group">

														<div class="search-results-list">
														<form id="tuprima">
															<div class="row data-container" id="card">
															<!-- caragn datos de js -->
															</div>
														</form>
														</div>
													</div>
													<!-- /search results -->


													<!-- Pagination -->
													<div id="pag" class="text-center content-group pt-20">
														<ul   class="pagination" >
															<li class="disabled"><a href="#">&larr;</a></li>
															<li class="active"><a href="#">1</a></li>
															<li><a href="#">2</a></li>
															<li><a href="#">3</a></li>
															<li><a href="#">4</a></li>
															<li><a href="#">&rarr;</a></li>
														</ul>
													</div>
													<!-- /pagination -->


												</div>
												<!-- /content area -->

											</div>
											<!-- /main content -->

										</div>
										<!-- /page content -->

									</div>
									<!-- /page container -->

									<!-- /fin pruebas -->
								</div>
								<hr>

							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-link" data-dismiss="modal">Cerrar</button>
								<button type="button" id="completar" onclick="EnvData();" class="btn btn-success">Completar	</button>
							</div>
						</div>

					</div>
				</div>
				<!-- /success modal -->

 
 			</div>
			<!-- /main content -->
			
		</div>
		<!-- /page content -->

	</div>
	<!-- /page container -->

</body>
<script type="text/javascript"
	src="<c:url value='resources/plugin2/assets/js/pages/ecommerce_product_list.js'/>"></script>

<%-- 	<script type="text/javascript"	src="<c:url value='resources/plugin2/assets/js/pages/form_checkboxes_radios.js'/>"></script> --%>
	
	
<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/components_modals.js'/>"></script>
	
<script type="text/javascript"
	src="<c:url value='resources/js/Paginate/jquery.bootpag.min.js'/>"></script>
	

<script type="text/javascript"
	src="<c:url value='resources/js/BussinesCore/Asigancion.js'/>"></script>
	
	

</html>