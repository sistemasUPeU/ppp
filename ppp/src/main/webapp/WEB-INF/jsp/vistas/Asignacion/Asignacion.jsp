<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
																<div class="input-group content-group">
																	<div class="has-feedback has-feedback-left">
																		<input type="text" class="form-control input-xlg"
																			value="">
																		<div class="form-control-feedback">
																			<i class="icon-search4 text-muted text-size-base"></i>
																		</div>
																	</div>

																	<div class="input-group-btn">
																		<button type="submit" class="btn btn-primary btn-xlg">Search</button>
																	</div>
																</div>

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
															<div class="row">
																<div class="col-lg-3 col-sm-6">
																	<div class="thumbnail">
																		<div class="thumb thumb-rounded">
																			<img
																				src="<c:url value='resources/plugin2/assets/images/placeholder.jpg'/>"
																				alt="">
																			<div class="caption-overflow">
																				<span> <a href="#"
																					class="btn border-white text-white btn-flat btn-icon btn-rounded"><i
																						class="icon-plus2"></i></a>

																				</span>
																			</div>
																		</div>

																		<div class="caption text-center">
																			<h6 class="text-semibold no-margin">Brandux
																				Didier Juarez Avila</h6>
																			<small class="display-block"><strong>correo
																					: </strong> branduxjuarez@upeu.edu.pe</small> <small
																				class="display-block"><strong>celular:
																			</strong> 931858464</small> <small class="display-block"><strong>Codigo:
																			</strong> 201521982</small> <small class="display-block"><strong>Ciclo:
																			</strong> VI</small>
																			<ul class="icons-list mt-15">
																				<li><a href="#" data-popup="tooltip"
																					title="Google Drive"><i
																						class="icon-google-drive"></i></a></li>
																				<li><a href="#" data-popup="tooltip"
																					title="Github"><i class="icon-github"></i></a></li>
																				<li><a href="#" data-popup="tooltip"
																					title="Twitter"><i class="icon-facebook2"></i></a></li>

																			</ul>
																			<ul class="icons-list mt-15">
																				<li><button onclick="alert('asa');"
																						type="button" class="btn btn-success">Completar
																					</button></li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- /search results -->


													<!-- Pagination -->
													<div class="text-center content-group pt-20">
														<ul class="pagination" id="pag">
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
								<button type="button" class="btn btn-success">Completar
								</button>
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
	src="<c:url value='resources/plugin2/assets/js/pages/datatables_responsive.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='resources/plugin2/assets/js/pages/wizard_steps.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='resources/plugin2/assets/js/pages/components_buttons.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='resources/plugin2/assets/js/pages/uploader_bootstrap.js'/>"></script>

<script type="text/javascript"
	src="<c:url value='resources/plugin2/assets/js/pages/ecommerce_product_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='resources/js/BussinesCore/Asigancion.js'/>"></script>

</html>