<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ include file="../../../../jspf/head.jspf"%>
<body>

	<div class="content">


		<!-- Wizard with validation -->
		<div class="panel panel-white">
			<div class="panel-heading">
				<h6 class="panel-title">Validation</h6>
				<div class="heading-elements">
					<ul class="icons-list">
						<li><a data-action="collapse"></a></li>
						<li><a data-action="reload"></a></li>
						<li><a data-action="close"></a></li>
					</ul>
				</div>
			</div>

			<form class="stepy-validation" action="#">
			<fieldset>
			<legend title="1"></legend>
			<%@include file="../../../../jspf/Emp/RE_Emp01.jspf"%>
				</fieldset>
				
				<fieldset>
			<legend title="2"></legend>
			<%@include file="../../../../jspf/Emp/RE_Emp02.jspf"%>
				</fieldset>

			<fieldset>
			<legend title="3"></legend>
			<%@include file="../../../../jspf/Emp/RE_Emp03.jspf"%>
				</fieldset>








				<button type="submit" class="btn btn-primary stepy-finish">
					Submit <i class="icon-check position-right"></i>
				</button>
			</form>
		</div>
		<!-- /wizard with validation -->




	</div>
	<script type="text/javascript"
		src="<c:url value='resources/js/ReEm.js'/>"></script>
</body>
</html>