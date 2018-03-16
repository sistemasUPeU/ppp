<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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




				<!-- Toolbar -->
				<div class="navbar navbar-default navbar-xs content-group">
					<ul class="nav navbar-nav visible-xs-block">
						<li class="full-width text-center"><a data-toggle="collapse"
							data-target="#navbar-filter"><i class="icon-menu7"></i></a></li>
					</ul>

					<div class="navbar-collapse collapse" id="navbar-filter">
						<ul class="nav navbar-nav">


							<li><a href="#empresa" data-toggle="tab"><i
									class="icon-cog3 position-left"></i> Registro de Convenio</a></li>
						</ul>

					</div>
				</div>
				<!-- /toolbar -->


				<!-- Content area -->
				<div class="content">

					<!-- User profile -->
					<div class="row">
						<div class="col-lg-9">
							<div class="tabbable">
								<div class="tab-content">
								<!-- /Registro Empresa -->
									<div class="tab-pane fade" id="empresa">
										<div class="panel panel-flat">
											<div class="panel-heading">
												<h6 class="panel-title">Empresa</h6>
												<div class="heading-elements">
													<ul class="icons-list">
														<li><a href="#" id="" data-popup="tooltip"
															title="" data-container="body"><i
																class=" icon-home"></i></a></li>

													</ul>
												</div>
											</div>

											<div class="panel-body">
												<form action="#">

													<div class="form-group">
														<div class="row">
															<div class="col-md-4">
																<label>Razon Social</label> <input type="text"
																	value="EL MOLINO" readonly="readonly"
																	class="form-control">
															</div>
															<div class="col-md-4">
																<label>Direccion</label> <input type="text" 
																	readonly="readonly" class="form-control">
															</div>
															<div class="col-md-4">
																<label>RUC</label> <input type="text"
																	value="123456789123435" id="cel" readonly="readonly"
																	class="form-control">
															</div>
														</div>
													</div>

													<div class="form-group">
														<div class="row">
															<div class="col-md-4">
																<label>Actividad</label> <input type="text"
																	value="activate sistemas" readonly="readonly"
																	class="form-control">
															</div>
															<div class="col-md-4">
																<label>Fecha de creacion</label> <input type="text"
																	value="1821" readonly="readonly" id=""
																	class="form-control">
															</div>
															<div class="col-md-4">
																<label>Alumno</label> <input type="text"
																	value="jonas" readonly="readonly"
																	class="form-control">
															</div>
														</div>
													</div>
													<div class="text-right">
														<button type="submit" disabled="true" id=""
															class="btn btn-danger">
															Registrar <i class="icon-arrow-right14 position-right"></i>
														</button>
													</div>
												</form>
											</div>
										</div>
									<!-- /Registro de Representante -->
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-3">


						</div>
					</div>
					<!-- /user profile -->




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