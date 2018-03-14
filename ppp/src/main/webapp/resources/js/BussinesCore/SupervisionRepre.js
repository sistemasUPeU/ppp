$(document).ready(function(){
	cargarPracticantes();
});

function cargarPracticantes(){
	$.ajax({
		url:"supervision/get",
		method:"post",		
		success:function(retorno){
			retorno=JSON.parse(retorno);	
			console.log(retorno);
			$.each(retorno["lista_practicantes"],function(key,value){							
				var porcen=Math.round(100*+value["PORCENTAJE"]);
				var bloque='<div class="content-group col-sm-6 col-lg-3">'+
								'<div class="panel-body bg-blue border-radius-top text-center">'+
								'<div class="content-group-sm">'+value["ALUMNO"]+
									'<h5 class="text-semibold no-margin-bottom">'+
										'</h5>'+	
										'<span class="display-block">'+value["AREATRABAJO"]+'</span>'+
									'</div>'+	
									'<a href="#" class="display-inline-block content-group-sm"> <img '+
										'src="resources/imagenes/1.png" class="img-circle img-responsive"'+
										'alt="" style="width: 120px; height: 120px;">'+
									'</a>'+	
									'<ul class="list-inline no-margin-bottom">'+
										'<li><a href="#" class="btn bg-blue-700 btn-rounded btn-icon"><i'+
												'class="icon-search4"></i></a></li>'+
										'<li><a href="#" class="btn bg-blue-700 btn-rounded btn-icon"><i'+
												'class="icon-github4"></i></a></li>'+
										'<li><a href="#" class="btn bg-blue-700 btn-rounded btn-icon"><i'+
												'class=" icon-mail-read"></i></a></li>'+
									'</ul>'+
								'</div>'+	
								'<div class="panel panel-body no-border-top no-border-radius-top">'+
//									'<div class="form-group mt-5">'+
//										'<label class="text-semibold">Nombre:</label> <span'+
//											'class="pull-right-sm">Victoria Anna Davidson</span>'+
//									'</div>	'+
								'<div class="form-group">'+
									'<label class="text-semibold">Sueldo:</label> <span'+
									'class="pull-right-sm">'+value["SUELDO"]+'</span>'+
									'</div>'+
								'<div class="form-group">'+
									'<label class="text-semibold">Telefono:</label> <span'+
										'class="pull-right-sm">'+value["CELULAR"]+'</span>'+
								'</div>'+
								'<div class="form-group">'+
									'<label class="text-semibold">Dni:</label> <span'+
									'class="pull-right-sm">'+value["DNI"]+'</span>'+
								'</div>'+
								'<div class="form-group">'+
									'<label class="text-semibold">Horario:</label> <span'+
										'class="pull-right-sm">'+value["HORARIO"]+'<br>'+value["FECHA"]+'<br>'+value["HORA"]+'</span>'+
								'</div>'+
									'<div class="progress progress-lg">'+
										'<div class="progress-bar bg-primary progress-bar-striped active"'+
											'style="width: '+porcen+'%">'+
											'<span>'+porcen+' Complete</span>'+
										'</div>'+
									'</div>'+
								'</div>'+
							'</div>';
				if(value["ESTADO"]=="EN CURSO"){
					$("#Con-Practicas .row").append(bloque);
				}else if(value["ESTADO"]=="CONCLUIDO"){
					$("#Practicas-Concluidas .row").append(bloque);
				}
				
			});
		}
	});
}