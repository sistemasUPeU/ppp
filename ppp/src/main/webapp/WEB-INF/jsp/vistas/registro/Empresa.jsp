<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
 <%@ include file="../../../../jspf/head.jspf" %>
<body>

	<div class="content">

		<!-- Basic setup -->
		<div class="panel panel-white">
			<div class="panel-heading">
				<h6 class="panel-title">REGISTRAR EMPRESA</h6>

			</div>

			<form class="stepy-basic" action="#">
				<fieldset title="1">
					<legend class="text-semibold">Registro Empresa</legend>
				  <%@ include file="../../../../jspf/Emp/RE_Emp01.jspf" %>
				</fieldset>

				<fieldset title="2">
					<legend class="text-semibold">Convenio</legend>
					<%@ include file="../../../../jspf/Emp/RE_Emp02.jspf" %>
				</fieldset>

				<fieldset title="3">
					<legend class="text-semibold">Vacante</legend>
					<%@ include file="../../../../jspf/Emp/RE_Emp03.jspf" %>
				</fieldset>



				<button type="submit" class="btn btn-primary stepy-finish">
					Submit <i class="icon-check position-right"></i>
				</button>
			</form>
		</div>
	</div>
<script type="text/javascript" src="<c:url value='resources/js/ReEm.js'/>"></script>
</body>
</html>