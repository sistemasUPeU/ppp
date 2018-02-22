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

	<div class="col-md-12">

		<!-- Basic setup -->
		<div class="panel panel-white">
			<div class="panel-heading">
				<h6 class="panel-title">Vacantes</h6>
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
					<div class="alert alert-info alert-styled-left alert-arrow-left alert-component">
						<button type="button" class="close" data-dismiss="alert">
							<span>&times;</span><span class="sr-only">Close</span>
						</button>
						<h6 class="alert-heading text-semibold">Bienvenido al area de
							registro de Empresa</h6>
						Registrar empresa en caso de que no se encuentre registrada..!!! 
					</div>
					<!-- /info alert -->				
				<div id="div_new_vacante">
					<%@ include file="../../../../jspf/vacante_asignacion/form_vacante.jspf"%>
				</div>							
				<div id="DataTables_Table_2_wrapper" class="dataTables_wrapper no-footer">
					<div class="datatable-header">
					<div class="col-md-3">
						<div class="form-group">
								<button id="algo_" type="button" onclick="mostrar_bloque('div_new_vacante');" class="btn  btn-info bg-teal-400 btn-labeled btn-rounded btn-xs">
								<b><i class="icon-plus3"></i></b> Agregar</button>															
						</div>
					</div>
						<div id="DataTables_Table_2_filter" class="dataTables_filter">
							<label><span>Filter:</span> 
								<input type="search" class="" placeholder="Type to filter..." aria-controls="DataTables_Table_2">
							</label>
						</div>
						<div class="dataTables_length" id="DataTables_Table_2_length">
							<label><span>Show:</span> 
								<select name="DataTables_Table_2_length" aria-controls="DataTables_Table_2" class="select2-hidden-accessible" tabindex="-1" aria-hidden="true">
									<option value="10">10</option>
									<option value="25">25</option>
									<option value="50">50</option>
									<option value="100">100</option>
									</select>
									<span class="select2 select2-container select2-container--default" dir="ltr" style="width: auto;">
									<span class="selection">
										<span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-DataTables_Table_2_length-hi-container">
										<span class="select2-selection__rendered" id="select2-DataTables_Table_2_length-hi-container" title="10">10</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span></label></div></div><div class="datatable-scroll"><table class="table datatable-save-state dataTable no-footer" id="DataTables_Table_2" role="grid" aria-describedby="DataTables_Table_2_info">
							<thead>
								<tr role="row">
										<th class="sorting_asc" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1" colspan="1" aria-sort="ascending" aria-label="First Name: activate to sort column descending">First Name</th>
										<th class="sorting" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1" colspan="1" aria-label="Last Name: activate to sort column ascending">Last Name</th>
										<th class="sorting" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1" colspan="1" aria-label="Job Title: activate to sort column ascending">Job Title</th>
										<th class="sorting" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1" colspan="1" aria-label="DOB: activate to sort column ascending">DOB</th>
										<th class="sorting" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1" colspan="1" aria-label="Status: activate to sort column ascending">Status</th>
										<th class="text-center sorting_disabled" rowspan="1" colspan="1" aria-label="Actions" style="width: 100px;">Actions</th>
								</tr>
							</thead>
							<tbody>																					
							<tr role="row" class="odd">
									<td class="sorting_1">Aura</td>
									<td>Hard</td>
									<td>Business Services Sales Representative</td>
									<td>19 Apr 1969</td>
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
								</tr><tr role="row" class="even">
									<td class="sorting_1">Chantal</td>
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
								</tr><tr role="row" class="odd">
									<td class="sorting_1">Cicely</td>
									<td>Sigler</td>
									<td><a href="#">Senior Research Officer</a></td>
									<td>15 Mar 1960</td>
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
								</tr><tr role="row" class="even">
									<td class="sorting_1">Coy</td>
									<td>Wollard</td>
									<td>Customer Service Operator</td>
									<td>12 Oct 1982</td>
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
								</tr><tr role="row" class="odd">
									<td class="sorting_1">Delma</td>
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
								</tr><tr role="row" class="even">
									<td class="sorting_1">Jackelyn</td>
									<td>Weible</td>
									<td><a href="#">Airline Transport Pilot</a></td>
									<td>3 Oct 1981</td>
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
								</tr><tr role="row" class="odd">
									<td class="sorting_1">Kennedy</td>
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
								</tr><tr role="row" class="even">
									<td class="sorting_1">Lizzee</td>
									<td><a href="#">Goodlow</a></td>
									<td>Technical Services Librarian</td>
									<td>1 Nov 1961</td>
									<td><span class="label label-danger">Suspended</span></td>
									<td class="text-center">
										<ul class="icons-list">
											<li class="dropdown dropup">
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
								</tr><tr role="row" class="odd">
									<td class="sorting_1">Marth</td>
									<td><a href="#">Enright</a></td>
									<td>Traffic Court Referee</td>
									<td>22 Jun 1972</td>
									<td><span class="label label-success">Active</span></td>
									<td class="text-center">
										<ul class="icons-list">
											<li class="dropdown dropup">
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
								</tr><tr role="row" class="even">
									<td class="sorting_1">Maxine</td>
									<td><a href="#">Woldt</a></td>
									<td><a href="#">Business Services Sales Representative</a></td>
									<td>17 Oct 1987</td>
									<td><span class="label label-info">Pending</span></td>
									<td class="text-center">
										<ul class="icons-list">
											<li class="dropdown dropup">
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
								</tr></tbody>
						</table></div><div class="datatable-footer"><div class="dataTables_info" id="DataTables_Table_2_info" role="status" aria-live="polite">Showing 1 to 10 of 15 entries</div><div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_2_paginate"><a class="paginate_button previous disabled" aria-controls="DataTables_Table_2" data-dt-idx="0" tabindex="0" id="DataTables_Table_2_previous">←</a><span><a class="paginate_button current" aria-controls="DataTables_Table_2" data-dt-idx="1" tabindex="0">1</a><a class="paginate_button " aria-controls="DataTables_Table_2" data-dt-idx="2" tabindex="0">2</a></span><a class="paginate_button next" aria-controls="DataTables_Table_2" data-dt-idx="3" tabindex="0" id="DataTables_Table_2_next">→</a></div></div></div>
				
				</fieldset>			

				<button type="button" 
					class="btn btn-primary stepy-finish">
					Registrar <i class="icon-check position-right"></i>
				</button>
			</div>
		</div>
	</div>

</body>

<script type="text/javascript" src="<c:url value='resources/plugin2/assets/js/core/libraries/jquery.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='resources/js/BussinesCore/yer_vacante.js'/>"></script>
<!-- 
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
 -->
</html>