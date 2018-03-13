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

<div class="panel panel-flat">


		<div class="panel-body">
			<div class="jui-tabs-basic">				
				<ul>
					<li><a href="#Con-Practicas">Con Practicas</a></li>								
					<li><a href="#Practicas-Concluidas">Practicas Concluidas</a></li>
				</ul>
				
				<!-- SECCION CON PRACTIAS  -->
				<div id="Con-Practicas">
					<div class="row">
								
					</div>	
				</div>
				
				<!-- SECCION PRACTIAS CONCLUIDAS -->
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
<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/jqueryui_navigation.js'/>"></script>
<script type="text/javascript" src="<c:url value='resources/js/BussinesCore/SupervisionRepre.js'/>"></script>
</html>