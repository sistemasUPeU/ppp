<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>

<body  class="has-detached-right" >

   
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
						<div class="content-detached">

							<!-- List -->
							<ul class="media-list">
								<li class="media panel panel-body stack-media-on-mobile">
									<a href="<c:url value='resources/imagenes/ICONO_ASIG.png'/>" class="media-left" data-popup="lightbox">
										<img src="<c:url value='resources/imagenes/ICONO_ASIG.png'/>" width="50" alt="">
									</a>

									<div class="media-body">
										<h3 class="media-heading text-semibold">
											<a href="#">NOMBRE DE LA EMPRESA</a>
										</h3>

										<ul class="list-inline list-inline-separate mb-10">
											<li><a href="#" class="text-muted">FECHA </a></li>
											<li><a href="#" class="text-muted">Men's Accessories</a></li>
										</ul>

										<p class="content-group-sm">
                                            Requerimientos que las empresas
                                        </p>
<!--                                        <div class=" heading-divided"></div> -->
                                       <h6 class="text-semibold heading-divided"><i class="icon-folder6 position-left"></i> Datos del Representante: <small class="position-right"></small></h6>
										<ul class="list-inline list-inline-separate">
											<li><a class="btn border-indigo-400 text-indigo-400 btn-flat btn-rounded btn-xs btn-icon"><i class="icon-newspaper"></i></a>nombre del representante <a href="#">cesar</a></li>
											<li><a class="btn border-indigo-400 text-indigo-400 btn-flat btn-rounded btn-xs btn-icon"><i class="icon-phone2"></i></a>  teelefono : <a href="#">wishlist</a></li>
                                            <li><a class="btn border-indigo-400 text-indigo-400 btn-flat btn-rounded btn-xs btn-icon"><i class=" icon-envelop5"></i></a> Correo  <a href="#">wishlist</a></li>
                                          </ul>
									</div>

									<div class="media-right text-center">
										<h3 class="no-margin text-semibold">cantidad</h3>
										<button type="button" onclick="alert('tu prima')" class="btn bg-teal-400 mt-15"><i class="icon-medal-first position-left"></i>Asignar</button>
									</div>
								</li>
				            </ul>
							<!-- /list -->


							<!-- Pagination -->
							<div class="text-center content-group-lg pt-20">
								<ul class="pagination">
									<li class="disabled"><a href="#"><i class="icon-arrow-small-left"></i></a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#"><i class="icon-arrow-small-right"></i></a></li>
								</ul>
							</div>
							<!-- /pagination -->

						</div>
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
												<legend class="text-size-mini text-muted no-border no-padding">Lineas academicas</legend>

												<div class="checkbox">
													<label class="display-block">
														<input type="checkbox" class="styled">
														Part - time
													</label>	
												</div>

												<div class="checkbox">
													<label class="display-block">
														<input type="checkbox" class="styled">
												        Ful - time 
													</label>
												</div>

												<div class="checkbox">
													<label class="display-block">
														<input type="checkbox" class="styled">
														Kids
													</label>
												</div>

												<div class="checkbox">
													<label class="display-block">
														<input type="checkbox" class="styled">
														Unisex
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

			
			</div>
			<!-- /main content -->

		</div>
		<!-- /page content -->

	</div>
	<!-- /page container -->

</body>
<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/ecommerce_product_list.js'/>"></script>
<script type="text/javascript" src="<c:url value='resources/js/BussinesCore/Asigancion.js'/>"></script>

</html>