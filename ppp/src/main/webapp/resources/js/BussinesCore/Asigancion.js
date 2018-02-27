
$(document).ready(function() {
	
	getDataBase ();
	
});

function getDataBase (){
	var Vacantes ,a ='';
	var IDREPRESENTANTE,AREATRABAJO ,CELULAR,CORREO,DIRECCION,HORARIO ,IDPERIODO ,IDVACANTES ,NCUPOS ,PERIODO , RAZONSOCIAL ,REPRESENTANTE , SUELDO ;
	$.ajax({
	    url : 'rp',
	    data : { opc : 'Vacantes' },
	    type : 'GET',
	    dataType : 'json',
	    success : function(objJson) {
	    	Vacantes = objJson.Vacantes;
	    	if (Vacantes.length > 0) {
				for (var i = 0; i < Vacantes.length; i++) {
					AREATRABAJO 	 = Vacantes[i].AREATRABAJO;
					CELULAR 	 = Vacantes[i].CELULAR;
					CORREO	     = Vacantes[i].CORREO;
					DIRECCION    = Vacantes[i].DIRECCION;
					HORARIO      = Vacantes[i].HORARIO;
					IDPERIODO    = Vacantes[i].IDPERIODO;
					IDREPRESENTANTE   = Vacantes[i].IDREPRESENTANTE;
					IDVACANTES      = Vacantes[i].IDVACANTES;
					NCUPOS          = Vacantes[i].NCUPOS;
					PERIODO         = Vacantes[i].PERIODO;
					RAZONSOCIAL     = Vacantes[i].RAZONSOCIAL;
					REPRESENTANTE   = Vacantes[i].REPRESENTANTE;
					SUELDO          = Vacantes[i].SUELDO;
					a  += CreateCard(IDVACANTES, IDREPRESENTANTE,AREATRABAJO ,CELULAR,CORREO,DIRECCION,HORARIO ,IDPERIODO ,IDVACANTES ,NCUPOS ,PERIODO , RAZONSOCIAL ,REPRESENTANTE , SUELDO );
				}
				    console.log(objJson.Vacantes);
			        $("#listed").empty();
			    	$("#listed").append(a);
			}else{
				
			}
	       
	    },
	    error : function(xhr, status) {
	    	swal({
	            title: "UPS!! Error !!",
	            text: "Intentelo nuevamente",
	            confirmButtonColor: "#2196F3",
	            type: "info"
	        });	
	    },
	    complete : function(xhr, status) {
	    	 
	    }
	});
}

function CreateCard(IDVACANTES, IDREPRESENTANTE,AREATRABAJO ,CELULAR,CORREO,DIRECCION,HORARIO ,IDPERIODO ,IDVACANTES ,NCUPOS ,PERIODO , RAZONSOCIAL ,REPRESENTANTE , SUELDO){
	var s ='<!-- List card vacantes-->\
							<ul class="media-list">\
								<li class="media panel panel-body stack-media-on-mobile">\
									<a href="resources/imagenes/ICONO_ASIG.png" class="media-left" data-popup="lightbox">\
										<img src="resources/imagenes/ICONO_ASIG.png" width="50" alt="">\
									</a>\
\
									<div class="media-body">\
										<h3 class="media-heading text-semibold">\
											<a href="#">'+RAZONSOCIAL+'</a>\
										</h3>\
\
										<ul class="list-inline list-inline-separate mb-10">\
											<li><a href="#" class="text-muted">FECHA </a></li>\
											<li><a href="#" class="text-muted">'+PERIODO+'</a></li>\
										</ul>\
\
										<!-- contenido -->\
										<ul class="list list-icons">\
                                            <li>\
                                                <h5><i class="icon-checkmark-circle text-success position-left"></i>\
                                                    Semestre : '+IDPERIODO+'</h5>\
                                            </li>\
                                            <li>\
                                                <h5><i class="icon-checkmark-circle text-success position-left"></i>\
                                                Direccion : '+DIRECCION+' </h5>\
                                            </li>\
                                            <li>\
                                               <h5> <i class="icon-checkmark-circle text-success position-left"></i>\
                                                   Area de Trabajo : '+AREATRABAJO+' </h5>\
                                            </li>\
                                            <li>\
                                                <h5><i class="icon-checkmark-circle text-success position-left"></i>\
                                                    Horario: '+HORARIO+'</h5>\
                                            </li>\
                                            <li>\
                                                <h5><i class="icon-checkmark-circle text-success position-left"></i>\
                                                    Sueldo: s/.'+SUELDO+'</h5>\
                                            </li>\
                                        </ul>\
										<!-- fin de conteniido -->\
										\
                                       <div class=" heading-divided"></div>\
                                       <h6 class="text-semibold"><i class="icon-folder6 position-left"></i> Datos del Representante: <small class="position-right"></small></h6>\
										<ul class="list-inline list-inline-separate">\
											<li><a class="btn border-indigo-400 text-indigo-400 btn-flat btn-rounded btn-xs btn-icon"><i class="icon-newspaper"></i></a><a href="#">'+REPRESENTANTE+' </a></li>\
											<li><a class="btn border-indigo-400 text-indigo-400 btn-flat btn-rounded btn-xs btn-icon"><i class="icon-phone2"></i></a>  telefono :  <a href="#">'+CELULAR+'</a></li>\
                                            <li><a class="btn border-indigo-400 text-indigo-400 btn-flat btn-rounded btn-xs btn-icon"><i class=" icon-envelop5"></i></a> Correo :  <a href="#">'+CORREO+'</a></li>\
                                          </ul>\
									</div>\
\
									<div class="media-right text-center">\
										<h3 class="no-margin text-semibold">'+NCUPOS+'</h3>\
										<input id="vacante" name="vacante" type="hidden" value="'+IDVACANTES+'">\
										<button class="btn bg-teal btn-sm" data-toggle="modal" data-target="#modal_theme_success" type="button" onclick=" getAllData('+IDVACANTES+ ","+ NCUPOS +')" class="btn bg-teal-400 mt-15"><i class="icon-medal-first position-left"></i>Asignar</button>\
									</div>\
								</li>\
				            </ul>\
							<!-- /list -->';
	return s;
}


// function :::::::::::::::::::::::::::::::::::::::
function getAllData(IDvac , cupos){
	var alumnos , rc ='';
	var url = '';
	$.ajax({
		    url : 'rp',
		    data : { opc : 'Vacantes' },
		    type : 'GET',
		    dataType : 'json',
		    success : function(objJson) {
		    	alumnos = objJson.alumnos;
		    	console.log(objJson.alumnos);
		    	if (alumnos.length > 0) {
					for (var i = 0; i < alumnos.length; i++) {
					    rc += '<div class="col-lg-3 col-sm-6">\
								<div class="thumbnail">\
									<div class="thumb thumb-rounded">\
										<img src="resources/plugin2/assets/images/placeholder.jpg" alt="">\
												<div class="caption-overflow">\
													<span> <a href="#" class="btn border-white text-white btn-flat btn-icon btn-rounded"><i class="icon-plus2"></i></a></span>\
												</div>\
									</div>\
									<div class="caption text-center">\
										<h6 class="text-semibold no-margin">'+ alumnos[i].NOMBRE+'</h6>\
										<small class="display-block"><strong>correo: </strong>'+ alumnos[i].CORREO+'</small> \
										<small class="display-block"><strong>celular:</strong>'+ alumnos[i].CELULAR+'</small> \
										<small class="display-block"><strong>Codigo:</strong> '+ alumnos[i].CODIGO+'</small> \
										<small class="display-block"><strong>Ciclo:</strong>'+ alumnos[i].CICLO+' </small>\
											<ul class="icons-list mt-15">\
												<li><a href="" data-popup="tooltip" target="_blank" title="linkedin"><i class="icon-linkedin"></i></a></li>\
												<li><a href="'+ alumnos[i].GITHUB+'" target="_blank" data-popup="tooltip" title="Github"><i class="icon-github"></i></a></li>\
												<li><a href="'+ alumnos[i].FACEBOOK+'" target="_blank" data-popup="tooltip" title="Twitter"><i class="icon-facebook2"></i></a></li>\
											</ul>\
											<ul class="icons-list mt-15">\
												<li><input type="checkbox" name="check" value="'+alumnos[i].IDALUMNO+'" class="styled"></li>\
											</ul>\
									</div>\
								</div>\
							</div>';
					}
						 $("#card").empty();
					     $("#card").append(rc); 
					     $("#completar").attr("disabled", true);

					     //-----------------------------------
			            // Evento que se ejecuta al pulsar en un checkbox
					 	$("input[type=checkbox]").change(function(){
					 		$("#completar").attr("disabled", false);
					 		// Cogemos el elemento actual
					 		var elemento=this;
					 		var contador=0;
					 		// Recorremos todos los checkbox para contar los que estan seleccionados
					 		$("input[type=checkbox]").each(function(){
					 			if($(this).is(":checked"))
					 				contador++;
					 		});
					  
					 		// Comprovamos si supera la cantidad máxima indicada
					 		if(contador>cupos)
					 		{
					 			swal({
						            title: "Has seleccionado mas checkbox que los indicados",
						            text: "Seleccione solo "+ cupos ,
						            confirmButtonColor: "#2196F3",
						            type: "info"
						        });	
					 			// Desmarcamos el ultimo elemento
					 			$(elemento).prop('checked', false);
					 			contador--;
					 		}
					 	});
				}else{
					
				}	       
		    },
		    error : function(xhr, status) {
		    	swal({
		            title: "UPS!! Error !!",
		            text: "Intentelo nuevamente",
		            confirmButtonColor: "#2196F3",
		            type: "info"
		        });	
		    },
		    complete : function(xhr, status) {
		    	 
		    }
		});
}

//-------- funcion para transformar a json

//_----

function EnvData(){
	var a = $("#vacante").val();
	var categorias = new Array();
    $("input:checkbox[name=check]:checked").each(function( i ) {
        categorias.push($(this).val() );
    });
//    categorisas.push(a);
    var enviar = JSON.parse(JSON.stringify(categorias));
   
    console.log(enviar);
    var data = JSON.stringify(enviar);
        swal({
            title: "¿Desea Registrar?",
            type: "info",
            showCancelButton: true,
            closeOnConfirm: false,
            confirmButtonColor: "#2196F3",
            showLoaderOnConfirm: true
        },
        function() {
        	//enviamos el valor al controlador
        	$.ajax({
                url : 'rp?opc=asignado&vacante='+a,
                data :   data,  
                method : 'post', //en este caso
                dataType: "json",
                contentType: "application/json",
                success : function(objJson){
               	var rspt = objJson.resp;
        			if(rspt != 0){
        				console.log("volvi papu");
        	            setTimeout(function() {
        	                swal({
        	                    title: "Se ha registrado correctamente",
        	                    type: "success",
        	                    confirmButtonColor: "#66BB6A"
        	                });
        	            }, 2000);
        	            $('#modal_theme_success').modal('hide');
        	            $("#listed").empty();
    			    	getDataBase ();
        	           
        			}else{
        				 swal({
        			            title: "Oops...",
        			            text: "Something went wrong!",
        			            confirmButtonColor: "#EF5350",
        			            type: "error"
        			        });
        			}
                },
                error: function(error){
                       //codigo error
                }
       	 });
        });
    
	
	
}