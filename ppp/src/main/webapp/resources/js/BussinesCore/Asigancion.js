
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
					a  += CreateCard(IDREPRESENTANTE,AREATRABAJO ,CELULAR,CORREO,DIRECCION,HORARIO ,IDPERIODO ,IDVACANTES ,NCUPOS ,PERIODO , RAZONSOCIAL ,REPRESENTANTE , SUELDO );
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

function CreateCard(IDREPRESENTANTE,AREATRABAJO ,CELULAR,CORREO,DIRECCION,HORARIO ,IDPERIODO ,IDVACANTES ,NCUPOS ,PERIODO , RAZONSOCIAL ,REPRESENTANTE , SUELDO){
	var s ='<!-- List card vacantes-->\
							<ul class="media-list">\
								<li class="media panel panel-body stack-media-on-mobile">\
									<a href="<c:url value=\'resources/imagenes/ICONO_ASIG.png\'/>" class="media-left" data-popup="lightbox">\
										<img src="<c:url value=\'resources/imagenes/ICONO_ASIG.png\'/>" width="50" alt="">\
									</a>\
\
									<div class="media-body">\
										<h3 class="media-heading text-semibold">\
											<a href="#">'+AREATRABAJO+'</a>\
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
										<button class="btn bg-teal btn-sm" data-toggle="modal" data-target="#modal_theme_success" type="button" onclick=" getAlumno('+IDVACANTES+')" class="btn bg-teal-400 mt-15"><i class="icon-medal-first position-left"></i>Asignar</button>\
									</div>\
								</li>\
				            </ul>\
							<!-- /list -->';
	return s;
}



function getAlumno(id){
	
	alert(id);
}


// function :::::::::::::::::::::::::::::::::::::::
function getAllData(){
	var url = '../php/paginarProductos.php';
	$.ajax({
		type:'POST',
		url:url,
		data:'partida='+1,
		success:function(data){
			var array = eval(data);
			$('#agrega-registros').html(array[0]);
			$('#pagination').html(array[1]);
		}
	});
	return false;
}

function paginate(){
	var url = '';
	$.ajax({
		type:'POST',
		url:url,
		data:'partida='+1,
		success:function(data){
			var array = eval(data);
			$('#agrega-registros').html(array[0]);
			$('#pagination').html(array[1]);
		}
	});
	return false;
}