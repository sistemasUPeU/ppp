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

	<!-- Page container -->
	<div class="page-container">

		<!-- Page content -->
		<div class="page-content">


			<!-- Main content -->
			<div class="content-wrapper">

				<!-- Content area -->
				<div class="content">

					<div class="row">
                    <div class="col-md-6">

							<div class="panel panel-body bg-success-400 has-bg-image">
								<div class="media no-margin">
									<div class="media-left media-middle">
										<i class="icon-pointer icon-3x opacity-75"></i>
									</div>

									<div class="media-body text-right">
										<button id="validateBtn" onclick="valid();" type="button" class="btn btn-danger btn-ladda btn-ladda-progress" data-style="zoom-out"><span class="ladda-label"> + </span></button>
									</div>
								</div>
							</div>

                        
                                <!-- Wizard with validation -->
                            <div class="panel panel-white col-md-12" id="ocultIn">



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

                                    <fieldset title="1">
                                      <%@ include file="../../../../jspf/Emp/RE_Emp01.jspf"%>
                                    </fieldset>

                                    <fieldset title="2">
                                       <%@ include file="../../../../jspf/Emp/RE_Emp02.jspf"%>
                                    </fieldset>

                                    <fieldset title="3">
                                        <%@ include file="../../../../jspf/Emp/RE_Emp03.jspf"%>
                                    </fieldset>

                                    <fieldset title="4">
                                        <%@ include file="../../../../jspf/Emp/RE_Emp4.jspf"%>
                                    </fieldset>


                                    <fieldset title="5">
                                        <%@ include file="../../../../jspf/Emp/RE_Emp5.jspf"%>
                                    </fieldset>

                                    <button type="submit" class="btn btn-primary stepy-finish">Submit <i class="icon-check position-right"></i></button>
                                </form>
         
                           </div>
                            <!-- /wizard with validation -->
                        
                        
						</div>

                    <div class="col-md-6" >

							<div class="panel panel-body bg-indigo-400 has-bg-image">
								<div class="media no-margin">
									<div class="media-left media-middle">
										<i class="icon-enter6 icon-3x opacity-75"></i>
									</div>

									<div class="media-body text-right">
										<button id="asignBtn" onclick="Asig();" type="button" class="btn btn-danger btn-ladda btn-ladda-progress" data-style="zoom-out"><span class="ladda-label"> + </span></button>
									</div>
								</div>
							</div>

                        
                                <!-- Wizard with validation -->
                            <div class="panel panel-white col-md-12" id="insOcult">



                                <div class="panel-heading">
                                    <h6 class="panel-title">Area de asignaciones</h6>
                                    <div class="heading-elements">
                                        <ul class="icons-list">
                                            <li><a data-action="collapse"></a></li>
                                            <li><a data-action="reload"></a></li>
                                            <li><a data-action="close"></a></li>
                                        </ul>
                                    </div>
                                </div>

                                <table class="table datatable-scroll-y" width="100%">
							<thead>
								<tr>
									<th>First Name</th>
									<th>Last Name</th>
									<th>Job Title</th>
									<th>DOB</th>
									<th>Status</th>
									<th class="text-center">Actions</th>
								</tr>
							</thead>
							<tbody>
								
								<tr>
									<td>Sylvia</td>
									<td><a href="#">Mcgaughy</a></td>
									<td>Hemodialysis Technician</td>
									<td>11 Nov 1983</td>
									<td><span class="label label-danger">Suspended</span></td>
									<td class="text-center">
										<ul class="icons-list">
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown">
													<i class="icon-menu9"></i>
												</a>

												<ul class="dropdown-menu dropdown-menu-right">
													<li><a href="#"><i class="icon-file-pdf"></i> Export to .pdf</a></li>
													<li><a href="#"><i class="icon-file-excel"></i> Export to .csv</a></li>
													<li><a href="#"><i class="icon-file-word"></i> Export to .doc</a></li>
												</ul>
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<td>Kennedy</td>
									<td>Haley</td>
									<td>Senior Marketing Designer</td>
									<td>18 Dec 1960</td>
									<td><span class="label label-success">Active</span></td>
									<td class="text-center">
										<ul class="icons-list">
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown">
													<i class="icon-menu9"></i>
												</a>

												<ul class="dropdown-menu dropdown-menu-right">
													<li><a href="#"><i class="icon-file-pdf"></i> Export to .pdf</a></li>
													<li><a href="#"><i class="icon-file-excel"></i> Export to .csv</a></li>
													<li><a href="#"><i class="icon-file-word"></i> Export to .doc</a></li>
												</ul>
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<td>Chantal</td>
									<td><a href="#">Nailor</a></td>
									<td>Technical Services Librarian</td>
									<td>10 Jan 1980</td>
									<td><span class="label label-default">Inactive</span></td>
									<td class="text-center">
										<ul class="icons-list">
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown">
													<i class="icon-menu9"></i>
												</a>

												<ul class="dropdown-menu dropdown-menu-right">
													<li><a href="#"><i class="icon-file-pdf"></i> Export to .pdf</a></li>
													<li><a href="#"><i class="icon-file-excel"></i> Export to .csv</a></li>
													<li><a href="#"><i class="icon-file-word"></i> Export to .doc</a></li>
												</ul>
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<td>Delma</td>
									<td>Bonds</td>
									<td>Lead Brand Manager</td>
									<td>21 Dec 1968</td>
									<td><span class="label label-info">Pending</span></td>
									<td class="text-center">
										<ul class="icons-list">
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown">
													<i class="icon-menu9"></i>
												</a>

												<ul class="dropdown-menu dropdown-menu-right">
													<li><a href="#"><i class="icon-file-pdf"></i> Export to .pdf</a></li>
													<li><a href="#"><i class="icon-file-excel"></i> Export to .csv</a></li>
													<li><a href="#"><i class="icon-file-word"></i> Export to .doc</a></li>
												</ul>
											</li>
										</ul>
									</td>
								</tr>
							</tbody>
						</table>
					
                               
                           </div>
                            <!-- /wizard with validation -->
                        
                        
						</div>

                    
                    </div>

		            


					
				</div>
				<!-- /content area -->

			</div>
			<!-- /main content -->

		</div>
		<!-- /page content -->

	</div>
	<!-- /page container -->

</body>

<script type="text/javascript">
	
$(document).ready(function() {
	$("#ocultIn").hide();
	$("#insOcult").hide();
	
});
function valid() {
	$("#ocultIn").show(500);
	$('#validateBtn').attr("disabled", true);
}
function Asig() {
	$("#insOcult").show(500);
	$('#asignBtn').attr("disabled", true);
}


	
</script>
<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/picker_date.js'/>"></script>
<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/wizard_stepy.js'/>"></script>
<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/datatables_basic.js'/>"></script>
<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/components_buttons.js'/>"></script>
<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/uploader_bootstrap.js'/>"></script>
<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/pages/form_controls_extended.js'/>"></script>

<%-- <script src="<c:url value='resources/js/BussinesCore/ReEm.js'/>"></script> --%>


</html>