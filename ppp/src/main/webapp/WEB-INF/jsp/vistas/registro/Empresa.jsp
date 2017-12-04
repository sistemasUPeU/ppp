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
					<legend class="text-semibold">Personal data</legend>
					<%@ include file="../../../jsp/vistas/registro/RE_Empresa01.jsp"%>
				</fieldset>

				<fieldset title="2">
					<legend class="text-semibold">Your education</legend>
					<%@ include file="../../../jsp/vistas/registro/RE_Empresa02.jsp"%>
				</fieldset>

				<fieldset title="3">
					<legend class="text-semibold">Your experience</legend>
					<%@ include file="../../../jsp/vistas/registro/RE_Empresa03.jsp"%>
				</fieldset>



				<button type="submit" class="btn btn-primary stepy-finish">
					Submit <i class="icon-check position-right"></i>
				</button>
			</form>
		</div>
	</div>

</body>
</html>