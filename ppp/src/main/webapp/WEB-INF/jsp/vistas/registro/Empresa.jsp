<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
		
		<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/wizard_stepy.js'/>"></script>
		<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/plugins/pickers/daterangepicker.js'/>"></script>

		<!-- File imput -->
		<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/plugins/uploaders/fileinput/fileinput.min.js'/>"></script>
		<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/uploader_bootstrap.js'/>"></script>
				
		<!-- Date pickers -->
		<script type="text/javascript" src="<c:url value='resources/plugin2/assets/assets/js/plugins/notifications/jgrowl.min.js'/>"></script>
		<script type="text/javascript" src="<c:url value='resources/plugin2/assets/assets/js/plugins/ui/moment/moment.min.js'/>"></script>
		<script type="text/javascript" src="<c:url value='resources/plugin2/assets/assets/js/plugins/pickers/anytime.min.js'/>"></script>
		<script type="text/javascript" src="<c:url value='resources/plugin2/assets/assets/js/plugins/pickers/pickadate/picker.js'/>"></script>
		<script type="text/javascript" src="<c:url value='resources/plugin2/assets/assets/js/plugins/pickers/pickadate/picker.date.js'/>"></script>
		<script type="text/javascript" src="<c:url value='resources/plugin2/assets/assets/js/plugins/pickers/pickadate/picker.time.js'/>"></script>
		<script type="text/javascript" src="<c:url value='resources/plugin2/assets/assets/js/plugins/pickers/pickadate/legacy.js'/>"></script>
		<script type="text/javascript" src="<c:url value='resources/plugin2/assets/assets/js/pages/picker_date.js'/>"></script>
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

			<form class="stepy-basic" action="#">
<!-- 			stepy-validation -->
				<fieldset title="1">
					<legend class="text-semibold">Registro Empresa</legend>

					<!-- Info alert -->

					<div
						class="alert alert-info alert-styled-left alert-arrow-left alert-component">
						<button type="button" class="close" data-dismiss="alert">
							<span>&times;</span><span class="sr-only">Close</span>
						</button>
						<h6 class="alert-heading text-semibold">Idle timeout</h6>
						Current settings allow you to track user inactivity and launch a
						warning dialog in a fixed amount of time after latest user
						activity. In this demo warning dialog appears <strong>after
							5 seconds</strong> of latest user activity.
					</div>

					<!-- /info alert -->

					<%@ include file="../../../../jspf/Emp/RE_Emp01.jspf"%>
				</fieldset>

				<fieldset title="2">
					<legend class="text-semibold">Convenio</legend>
					<%@ include file="../../../../jspf/Emp/RE_Emp02.jspf"%>
				</fieldset>

				<fieldset title="3">
					<legend class="text-semibold">Vacante</legend>
					<%@ include file="../../../../jspf/Emp/RE_Emp03.jspf"%>
				</fieldset>


				<button type="submit" id="BotonSub"
					class="btn btn-primary stepy-finish R-EmpresaPaso1">
					Submit <i class="icon-check position-right"></i>
				</button>

			</form>
		</div>
	</div>
	
</body>
</html>