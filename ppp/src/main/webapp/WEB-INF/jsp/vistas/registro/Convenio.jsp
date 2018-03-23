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
									class="icon-home position-left"></i> Registro de Empresa</a></li>
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
																	class="form-control">
															</div>
															<div class="col-md-4">
																<label>Direccion</label> <input type="text" 
																	class="form-control">
															</div>
															<div class="col-md-4">
																<label>RUC</label> <input type="text"
																	class="form-control">
															</div>
														</div>
													</div>

													<div class="form-group">
														<div class="row">
															<div class="col-md-4">
																<label>Actividad</label> <input type="text"
																	class="form-control">
															</div>
															<div class="col-md-4">
																<label>Fecha de creacion</label> <input type="text"
																	class="form-control">
															</div>
															<div class="col-md-4">
																<label>Alumno</label> <input type="text"
																	class="form-control">
															</div>
														</div>
													</div>
													<div class="text-right">
														<button type="submit" id=""
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
	
	
	
	
	
	
	<!-- Page container -->
	<div class="page-container" style="margin-top: 0px;">

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


							<li><a href="#representante" data-toggle="tab"><i
									class="icon-person position-left"></i> Registro de Representante</a></li>
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
									<div class="tab-pane fade" id="representante">
										<div class="panel panel-flat">
											<div class="panel-heading">
												<h6 class="panel-title">Representante</h6>
												<div class="heading-elements">
													<ul class="icons-list">
														<li><a href="#" id="" data-popup="tooltip"
															title="" data-container="body"><i
																class=" icon-person"></i></a></li>

													</ul>
												</div>
											</div>

											<div class="panel-body">
												<form action="#">

													<div class="form-group">
														<div class="row">
															<div class="col-md-4">
																<label>Periodo</label> <input type="text"
																	class="form-control required">
															</div>
															<div class="col-md-4">
																<label>Empresa</label> <input type="text" 
																	class="form-control required">
															</div>
															<div class="col-md-4">
																<label>Alumno</label> <input type="text"
																	class="form-control required">
															</div>
														</div>
													</div>

													<div class="form-group">
													        <div class="col-md-3">
																<label>Cargo</label> <input type="text"
																	class="form-control required">
															</div>
														</div>
													</div>
													<div class="text-right">
														<button type="submit" id=""
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