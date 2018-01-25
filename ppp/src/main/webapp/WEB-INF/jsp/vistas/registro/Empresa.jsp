<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../../../../jspf/Emp/headEmpl.jspf"%>
</head>


<body>

	<div class="col-md-12">

		<!-- Basic setup -->
		<div class="panel panel-white">
			<div class="panel-heading">
				<h6 class="panel-title">REGISTRAR EMPRESA</h6>
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
					<legend class="text-semibold">Registro Empresa</legend>

					<!-- Info alert -->
					<div
						class="alert alert-info alert-styled-left alert-arrow-left alert-component">
						<button type="button" class="close" data-dismiss="alert">
							<span>&times;</span><span class="sr-only">Close</span>
						</button>
						<h6 class="alert-heading text-semibold">Bienvenido al area de
							registro de Empresa</h6>
						Registrar empresa en caso de que no se encuentre registrada..!!! 
					</div>
					<!-- /info alert -->

					<%@ include file="../../../../jspf/Emp/RE_Emp01.jspf"%>
				</fieldset>
				
				<fieldset title="2">
					<legend class="text-semibold">Vacante</legend>
					<%@ include file="../../../../jspf/Emp/RE_Emp03.jspf"%>
				</fieldset>
				
<!-- 				<fieldset title="3"> -->
<!-- 					<legend class="text-semibold">Convenio</legend> -->
<%-- 					<%@ include file="../../../../jspf/Emp/RE_Emp02.jspf"%> --%>
<!-- 				</fieldset> -->


				<button type="button" 
					class="btn btn-primary stepy-finish R-EmpresaPaso1">
					Registrar <i class="icon-check position-right"></i>
				</button>
			</div>
		</div>
	</div>

</body>

<script type="text/javascript"
	src="<c:url value='resources/plugin2/assets/js/core/libraries/jquery.min.js'/>"></script>
<script src="<c:url value='resources/js/BussinesCore/ReEm.js'/>"></script>
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

</html>