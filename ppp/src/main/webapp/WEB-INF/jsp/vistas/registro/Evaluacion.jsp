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
			<!-- Content area -->
				<div class="content">
                            <!--Inicia row cabecera Examén-->
                           <div class="row">
                               		<div class="col-md-6" id="panels-target">
									<div class="panel panel-flat">
									
										<div class="panel-heading">
											<h5 class="panel-title">EXÁMEN</h5>
											
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
														<li class="col-xs-8">
														<div class="form-group">
			                                                 <button type="submit" id="createexamen"class="btn btn-danger">Publicar Examen</button>
			                                            </div>
			                                            </li>
			                                            
													</ul>
			
													<div class="tab-content">
														<div class="tab-pane active" id="basic-pill1">
															<div class="alert alert-warning alert-styled-left">
			                                                    <span>&times;</span><span class="sr-only">Close</span>
			                                                    <span class="text-semibold">Activar exámen ! </span> Su exámen esta desactivado.
											                </div>
														</div>
			
														<div class="tab-pane" id="basic-pill2">
															<div class="alert alert-success alert-styled-left alert-arrow-left alert-bordered">
			                
			                                                    <span class="text-semibold">En hora buena !</span> El examén ha sido activado exitosamente
											                </div>
														</div>
													</div>
                                                    <ul class="nav nav-pills">
													    <li class="col-xs-6">
														<div class="form-group">
			                                                 <button type="submit" id="createdimension"class="btn btn-primary">Crear Dimensión</button>
			                                            </div>
			                                            </li>
			                                            </ul>
												</div>
												
												</div>
								</div>
					</div>
                           </div>
                           <!--Fin row cabecera Examén-->
                           
                           
                          
                    		<div class="row">
                    		
                         <!--Inicio Modal editar-->
                    		<div id="modal_default" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h5 class="modal-title">Edite la Línea</h5>
                                            </div>

                                            <div class="modal-body">
                                               
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-link" data-dismiss="modal">Cerrar</button>
                                                <button type="button" class="btn btn-primary">Guardar</button>
                                            </div>
                                        </div>
                                    </div>
					           </div>
                         <!--Fin Modal editar-->
                         
                         <!--Inicio row cuerpo Examén-->
					    <div class="col-md-6" id="panels-target-left">
							<div class="panel panel-white">
								<div class="panel-heading">
									<h6 class="panel-title text-semibold">DIMENSIÓN: </h6>
									<br>
									<div class="form-group">
										<div class="row">
											<div class="col-xs-8">
                                                <select data-placeholder="Seleccione la Dimensión" class="select-size-sm">
                                                    <option></option>
                                                    <optgroup label="Ingeniería de Sistemas">
                                                        <option value="AZ">Infraestructura y Telecomunicaciones</option>
                                                        <option value="CO">Ingeniería de Software</option>
                                                        <option value="ID">Tecnologias de la Información</option>
                                                    </optgroup>
                                                    <optgroup label="Ingeniería Ambiental">
                                                        <option value="AL">Cuidado Ambiental</option>
                                                        <option value="IA">Calidad de Suelos</option>
                                                        
                                                    </optgroup>
                                                    
                                                </select>
                                            </div>
                                        </div>
									</div>
	                                    

									<div class="heading-elements">
										<ul class="icons-list">
					                		<li><a data-action="collapse"></a></li>
					                		<li><a data-action="reload"></a></li>
					                		<li><a data-action="close"></a></li>
					                	</ul>
				                	</div>
								</div>								
								<div class="panel-body">
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
								</div>
							</div>

				
						</div>
					
		</div>
                <!--Fin row cuerpo Examén-->

					
					
					
					<div class="footer text-muted">
						&copy; 2015. <a href="#">Limitless Web App Kit</a> by <a href="http://themeforest.net/user/Kopyov" target="_blank">Eugene Kopyov</a>
					</div>
					<!-- /footer -->

				</div>
</body>
<script type="text/javascript">
		var nr=1;
		var contador=0;
        var contadorpanel=0;
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
		      add+="<div class='input-group'>"+
                    "<label id='guardar'>"+array[contador]+"</label>"+
                        "<button type='button' data-toggle='modal' data-target='#modal_default' class='right btn btn-primary btn-icon btn-rounded'><i class='glyphicon glyphicon-edit'></i></button>"+
                        "<button type='button' class='btn btn-danger btn-icon btn-rounded'><i class='glyphicon glyphicon-remove-circle'></i></button>"+
                  "</div>"
                  ;
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
    
               
                
                $("#createdimension").click(function(){
                    createpaneldimension();
                })
                
                 function createpaneldimension()
                {
                    var panel="";
                            panel+="<div class='panel panel-white'>"+
								    "<div class='panel-heading'>"+
									   "<h6 class='panel-title text-semibold'>DIMENSIÓN: </h6>"+
                                        "<div class='heading-elements'>"+
										"<ul class='icons-list'>"+
					                		"<li><a data-action='collapse'></a></li>"+
					                		"<li><a data-action='reload'></a></li>"+
					                		"<li><a data-action='close''></a></li>"+
					                	"</ul>"+
				                	"</div>"+
                                    "</div>"+
                                    "</div>";
                        
                    console.log(contadorpanel);
                    $("#panels-target-left").append(panel);
                }
        </script>
</html>