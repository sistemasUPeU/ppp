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
	<div class="content">
		<div class="row">
				<div class="col-md-6">
									<div class="panel panel-flat">
									
										<div class="panel-heading">
											<h5 class="panel-title">Lineas evaluación</h5>
											
											<div class="heading-elements">
												<ul class="icons-list">
							                		<li><a data-action="collapse"></a></li>
							                		<li><a data-action="reload"></a></li>
							                		<li><a data-action="close"></a></li>
							                	</ul>
						                	</div>
										</div>
		
										<div class="panel-body">
												<div class="tabbable">
													<ul class="nav nav-pills">
														<li class="active"><a href="#basic-pill1" data-toggle="tab">Inactivo</a></li>
														<li><a href="#basic-pill2" data-toggle="tab">Activo</a></li>
													</ul>
			
													<div class="tab-content">
														<div class="tab-pane active" id="basic-pill1">
															<div class="alert alert-warning alert-styled-left">
			                                                    <button type="button" class="close" data-dismiss="alert"><span>&times;</span><span class="sr-only">Close</span></button>
			                                                    <span class="text-semibold">Activar exámen ! </span> Su exámen esta desactivado.
											                </div>
														</div>
			
														<div class="tab-pane" id="basic-pill2">
															<div class="alert alert-success alert-styled-left alert-arrow-left alert-bordered">
			                
			                                                    <span class="text-semibold">En hora buena !</span> El examén ha sido activado exitosamente
											                </div>
														</div>
													</div>
												</div>
			                                    <div class="form-group">
													<div class="col-lg-10">
														<div class="input-group">
															<input type="text" class="form-control" placeholder="Ingresar Lineas" id='pregunta'>
															<span class="input-group-btn" id="guardar">
																<button class="btn bg-teal" type="button"><i class="icon-add"></i> Agregar</button>
															</span>
														</div><br>
														<div id="aqui">
			                                    
			                                            </div>
													</div>
												</div>
			                                
			                                <div class="form-group">
			                                    <button type="submit" id="createexamen"class="btn btn-danger">Crear Examen</button>
			                                </div>
												    <!---Empieza formulario preguntas-->
												</div>
								</div>
					</div>
		</div>
		</div>
</body>
<script type="text/javascript">
		var nr=1;
		var contador=0;
		var array=[];
		$(document).ready(function() {
			
		});
		function insertar(){
		     var x= $("#pregunta").val();
		     console.log(x);
		      if(x!=''){
		         array.push(x);
		         console.log(array);
		         show();
		        }
		    }
		           
		    function show() {
		    var add="";
		    $("#pregunta").val('');
		      for(contador ; contador < array.length; contador++)
		      {
		      add+="<label class='form-control dynamic'>"+array[contador]+"</label>";
		      console.log(array[contador]);
		     $("#aqui").append(add);
		      }

		    }
		            
		            $("#guardar").click(function(){
		              insertar();
		             })
		            $("#listar").click(function(){
		              alert("hola");
		              show();
		            })
        </script>
</html>