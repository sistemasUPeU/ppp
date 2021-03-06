$(document).ready(function() {
	$("#ocultar , #form_despl_representante").hide();
	$("#btn_select_representante").prop("disabled",true);
	
	listarSeguro();
	dataVacante();
	ListEmpresa();
	
	$("#select").on("change",function(){
		$("#btn_select_representante").prop("disabled",false);				
	});
	
	$("#btn_select_empresa").on("click",function(){
		$("#Boton").attr("onclick","registrar();");
	});
	
	$("#btn_select_representante").on("click",function(){
		$("#Boton").attr("onclick","create_Representante();");
	});
	
	$('#btnDesc').attr("disabled", true);
});



// funciones de vista
function ocultar(){
	$("#ocultar").show(500);
	$("#Aparecer").hide();	
	$("#Boton").show();
	$("#BotonEx").hide();
}
function ocultar2(desplegarVista){
	$("#"+desplegarVista).show(500);
	$("#Aparecer").hide();
	$("#Boton").show();
	$("#BotonEx").hide();
	
	$("#id_form_registrar").attr("value",desplegarVista);
}

// funciones para cargar combobox
function listarSeguro() {
	$.get('rp?opc=Combox', function(objJson) {
		var v = '';
		var c='';
		var list = objJson.as;
		var listLin = objJson.li;
		console.log(list);
		console.log(listLin);
		
		// solo para seguro
		for (var i = 0; i < list.length; i++) {
			v +='<option value="' + list[i].IDSEGUROS + '">'+ list[i].SEGURO +'</option>';
		}
		$("#seguro").empty();
		
		v = '<option></option>\
			<optgroup label="Seguros de Empresa">'
			+ v	+ 
			'</optgroup>';
		
		$("#seguro").append(v);
		
		// solo para lineas
		for (var j = 0; j < listLin.length; j++) {
			c +='<option value="' + listLin[j].Idlineasp + '">'+ listLin[j].LINEA +'</option>';
		}
		$("#lineas").empty();
		
		c = '<option></option>\
			<optgroup label="Lineas academicas">'
			+ c	+ 
			'</optgroup>';
		
		$("#lineas").append(c);
	});
}

function ListEmpresa() {
	$.get('rp?opc=Combox', function(objJson) {
		var v = '';
		var c='';
		var combox1 = objJson.combox1;
		console.log(combox1);
		
		// solo para ListEmpresa
		if(combox1.length>0){
			for (var i = 0; i < combox1.length; i++) {
				v +='<option value="' + combox1[i].IDEMPRESA + '">'+ combox1[i].RAZONSOCIAL +'</option>';
			}
			$("#cbx1").empty();			
			$("#cbx1").append(v);
			$('#select2').attr("disabled", true);
		
			$('#select').on('change', function() {
				$("#cbx12").empty();
				
				$('#select2').attr("disabled", false);
				var selec = $(this).val();
				c= '';
				alert(selec)
				
				$.get('rp?opc=Combox1&idSe='+selec, function(objJson) {
					c= '';
					
					var combox11 = objJson.combox11;
					console.log(combox11);
					if ( combox11.length>0){
						c ='<option value=""></option>';
						for (var j = 0; j < combox11.length; j++) {
							c +='<option value="' + combox11[j].IDREPRESENTANTE + '">'+ combox11[j].REPRE +'</option>';
						}
						$("#cbx12").empty();
						$('#select2 option:select').remove();
						$("#cbx12").append(c);
						
						alert(c)
					}else{
						console.log("anidado errr");
					}
				});
				
			});
			
		}
	});
}



//---------------------------------------------------------------------------------------------------------------
// cargar vacantes existentes on data table
function dataVacante (){
	var vacantes ;
	// create component 
	var s ;
	var c ;
	var m ;
	var mm;
	var hc;
	// recoleccion de datos 
	var RAZONSOCIAL, RUC, DIRECCION;
	var REPRESENTANTE, CELULAR, DNI;
	var CORREO, CARGO , PERIODO , HORARIO ;
	var SUELDO , HORA, AREATRABAJO, ESTADO;
	
	
	// recoleccion del historial de practicas
	var CICLO , DESCRIPCION , DIRECCION2 , EMPRESA ;
	var ESCUELA, PLAZO , REPRESENTANTEH , SEMESTRE;
	
	$.getJSON('rp?opc=RegistroAlumno', function(objJson){
		vacantes = objJson.notifyVac;
		//var history =  objJson.history;
		console.log("parse");
		
		if (vacantes.length > 0) {
			for (var i = 0; i < vacantes.length; i++) {
				//recoger valores de tabla 
				RAZONSOCIAL	  = vacantes[i].RAZONSOCIAL;
				RUC 		  = vacantes[i].RUC;
				DIRECCION	  = vacantes[i].DIRECCION;
				REPRESENTANTE = vacantes[i].REPRESENTANTE;
				CELULAR		  = vacantes[i].CELULAR;
				DNI 		  = vacantes[i].DNI;
				CORREO		  = vacantes[i].CORREO;
				CARGO		  = vacantes[i].CARGO;
				PERIODO		  = vacantes[i].PERIODO;
				HORA 		  = vacantes[i].HORA;
				HORARIO		  = vacantes[i].HORARIO;
				SUELDO		  = vacantes[i].SUELDO;
				AREATRABAJO   = vacantes[i].AREATRABAJO;
				ESTADO        = vacantes[i].ESTADO;
				// cargar tabla 
				s += '<tr>';
					s += '<td>'+RAZONSOCIAL+'</td>';
					s += '<td>'+RUC+'</td>';
					s += '<td>'+HORARIO+'</td>';
					s += '<td><strong>S/. </strong>'+SUELDO+'</td>';
					s += '<td><span class="label label-info">'+ESTADO+'</span></td></td>';
					s += '<td class="text-center" >';
					
					if(ESTADO == 'ASIGANDO' || ESTADO == 'PENDIENTE'){
					s += '<button onclick=""  data-toggle="modal" data-target="#modal_theme_warning" type="button" class="btn btn-primary btn-icon btn-rounded"><i class="icon-search4"></i></button>';
					
					}else if(ESTADO == 'APROBADO'){
						s += '<button onclick=""  data-toggle="modal" data-target="#modal_theme_warning" type="button" class="btn btn-primary btn-icon btn-rounded"><i class="icon-search4"></i></button>';
						s += '<button onclick=""  data-toggle="modal" data-target="#modal_theme_success" type="button" class="btn btn-success btn-icon btn-rounded"><i class="icon-checkmark4"></i></button>';
					}
					s +='</td>';
				s += '</tr>';
				
			}
			
			$('#btn_Rvca').attr("disabled", true);
			
			$("#contTable").empty();
			c = create (s);
			$("#contTable").append(c);
			$('#tabla').DataTable();
		
			// resetear modal
			$("#empresaName").empty();
			mm =  minimalModal(RAZONSOCIAL);
			$("#empresaName").append(mm);
			
			$("#cargModal").empty();
			m = createModal (RUC,DIRECCION,REPRESENTANTE, CELULAR ,DNI, CORREO,PERIODO,HORARIO,HORA,SUELDO,AREATRABAJO , CARGO);
			$("#cargModal").append(m);
	
			
		
		}else{
			
			$("#contTable").hide();
			var a ="<h2><strong>NO!! tienes vacante asignada..</strong><p>Puedes realizar tu solicitud de practicas</p></h2>";
			$("#msj").empty();
			$("#msj").append(a);
		}
		
		
//		if(history.length > 0){
//			for(var j = 0; j < history.length; j++){
//				//recoger valores de tabla 
//				EMPRESA	  			  = history[j].EMPRESA;
//				REPRESENTANTEH 		  = history[j].REPRESENTANTE;
//				DIRECCION2			  = history[j].DIRECCION;
//				CICLO 				  = history[j].CICLO;
//				REPRESENTANTEH 		  = history[j].REPRESENTANTE;
//				ESCUELA			 	  = history[j].ESCUELA;
//				CICLO 				  = history[j].CICLO;
//				DESCRIPCION 		  = history[j].DESCRIPCION;
//				SEMESTRE			  = history[j].SEMESTRE;
//				PLAZO 				  = history[j].PLAZO;
//			}
//			
//			// reseteamos y mostramos HisotryCards
//			$("#historyCards").empty();
//			hc =  historyCards(EMPRESA, REPRESENTANTEH , DIRECCION2 , REPRESENTANTEH , ESCUELA , CICLO , DESCRIPCION , SEMESTRE , PLAZO);
//			$("#historyCards").append(hc);
//			
//		}else{
//			
//			console.log("Error Papai");
//		}
		
	});
}

//funcion para crear datatable
function create (s){
	var b ='<table id="tabla" class="table datatable-responsive">\
				<thead>\
					<tr>\
						<th>Empresa</th>\
						<th>Ruc</th>\
						<th>Horario</th>\
						<th>Sueldo</th>\
						<th>Estado</th>\
						<th class="text-center">Opciones</th>\
					</tr>\
				</thead>\
				<tbody id="data">'+
					s
				'</tbody>\
				</table>';
	return b;
}




// funcion para crear y  llenar modales 
function minimalModal(RAZONSOCIAL){
	var mm ="<div class='icon-object border-danger text-danger'><i class='icon-office'></i></div>\
			<h5 class='text-semibold'>"+ RAZONSOCIAL +"</h5>";
	return mm;
}

function createModal (RUC,DIRECCION,REPRESENTANTE, CELULAR ,DNI, CORREO,PERIODO,HORARIO,HORA,SUELDO,AREATRABAJO , CARGO){
	var m ="<ul class='media-list'>\
				<li class='media'>\
					<div class='media-left'>\
						<a href='#' class='btn border-primary text-primary btn-flat btn-icon btn-rounded btn-sm'>\
								<i class='icon-store2'></i>\
						</a>\
					</div>\
					<div class='media-body'>\
						<p><strong>RUC : </strong> "+RUC+"</p>\
						<p><strong>Dirección : </strong>"+DIRECCION+"</p>\
					</div>\
				</li>\
				<li class='media'>\
					<div class='media-left'>\
						<a href='#' class='btn border-danger text-danger btn-flat btn-icon btn-rounded btn-sm'>\
							<i class='icon-vcard'></i>\
						</a>\
					</div>\
					<div class='media-body'>\
						<p><strong>Representante :</strong>"+REPRESENTANTE+"</p>\
						<p><strong>Celular : </strong>"+CELULAR+"</p>\
						<p><strong>DNI : </strong>"+DNI+"</p>\
						<p><strong>Correo : </strong>"+CORREO+"</p>\
					    <p><strong>Cargo : </strong>"+CARGO+"</p>\
					</div>\
				</li>\
				<li class='media'>\
					<div class='media-left'>\
						<a href='#' class='btn border-slate text-slate btn-flat btn-icon btn-rounded btn-sm'>\
							<i class='icon-cash3'></i>\
						</a>\
					</div>\
					<div class='media-body'>\
						<p><strong>Periodo : </strong>"+PERIODO+"</p>\
						<p><strong>Horario : </strong>"+HORARIO+" de <strong> "+HORA+"</strong></p>\
						<p><strong>Sueldo : </strong> "+SUELDO+"</p>\
					</div>\
				</li>\
				<li class='media'>\
					<div class='media-left'>\
						<a href='#' class='btn border-success text-success btn-flat btn-icon btn-rounded btn-sm'>\
							<i class='icon-checkmark3'></i>\
						</a>\
					</div>\
					<div class='media-body'>\
						<p><strong>Area de Trabajo : </strong>"+AREATRABAJO+"</p>\
					</div>\
				</li>\
			</ul>";
	return m;
}

//funcion de history
function historyCards(EMPRESA, REPRESENTANTEH , DIRECCION2 , REPRESENTANTEH , ESCUELA , CICLO , DESCRIPCION , SEMESTRE , PLAZO){
	var h="	<div class='col-lg-12'>\
				<div class='panel border-left-lg border-left-danger invoice-grid timeline-content'>\
					<div class='panel-body'>\
						<div class='row'>\
							<div class='col-sm-12'>\
								<h6 class='text-semibold no-margin-top'>"+EMPRESA+"</h6>\
								<ul class='list list-unstyled'>\
									<li>Representante: "+ REPRESENTANTEH +"</li>\
									<li>Direccion:<span class='text-semibold'>"+DIRECCION2+"</span></li>\
								</ul>\
							</div>\
							<div class='col-sm-12'>\
								<h6 class='text-semibold text-right no-margin-top'>"+ESCUELA+"</h6>\
								<ul class='list list-unstyled text-right'>\
									<li><span class='text-semibold'>"+CICLO+"</span></li>\
									<li class='dropdown'>\
										Estado: &nbsp;\
										<a  class='label bg-danger-400 dropdown-toggle'>"+DESCRIPCION+"</a>\
									</li>\
								</ul>\
							</div>\
						</div>\
					</div>\
					<div class='panel-footer panel-footer-condensed'>\
						<div class='heading-elements'>\
							<span class='heading-text'>\
								<span class='status-mark border-danger position-left'></span><strong> "+SEMESTRE+" </strong> ; <span class='text-semibold'>"+PLAZO+"</span>\
							</span>\
							<ul class='list-inline list-inline-condensed heading-text pull-right'>\
								<li><a href='#' class='text-default' data-toggle='modal' data-target='#invoice'><i class='icon-eye8'></i></a></li>\
							</ul>\
						</div>\
					</div>\
				</div>\
			</div>";
	return h;
}

// Funcion para generatorCarta
function getCarta(){
	var obj;
	var RAZONSOCIAL, CARGO, DIRECCION, REPRESENTANTE ,AREATRABAJO;
	$.getJSON('rp?opc=Vacantes', function(objJson){
		var obj = objJson.Vacantes;
		if (obj.length > 0) {
			for (var i = 0; i < obj.length; i++) {
				RAZONSOCIAL	  = obj[i].RAZONSOCIAL;
				CARGO 		  = obj[i].CARGO;
				DIRECCION	  = obj[i].DIRECCION;
				REPRESENTANTE = obj[i].REPRESENTANTE;
				AREATRABAJO   = obj[i].AREATRABAJO;
			}
		}
		var dataB	  = '&RAZONSOCIAL='+RAZONSOCIAL;
		dataB 		 += '&CARGO='+CARGO;
		dataB		 += '&DIRECCION='+DIRECCION;
		dataB		 += '&REPRESENTANTE='+REPRESENTANTE;
		dataB 		 += '&AREATRABAJO='+AREATRABAJO;
		alert(dataB);
		$.post('rp?opc=CreateCart', dataB , function(objJson){
			$('#btnDesc').attr("disabled", false);
        	var rspt = objJson.crtA;
 			console.log(rspt);
 			if(rspt != 0){
				swal({
					title : "Generada correctamente!",
					text : "Proceda a descargarlo!",
					confirmButtonColor : "#66BB6A",
					type : "success"
				});
				$('#btnGen').attr("disabled", true);
 			}else{
				swal({
		            title: "UPS!! Error al gener carta!!",
		            text: "Intentelo nuevamente",
		            confirmButtonColor: "#2196F3",
		            type: "info"
		        });	
 			}
		});
//		
//		$.ajax({
//	         url : 'rp?opc=CreateCart',
//	         data : {RAZONSOCIAL:RAZONSOCIAL}, 
//	         method : 'post',
//	         dataType: "json",
//	         contentType: "application/json",
//	         success : function(objJson){
//	        	$('#btnDesc').attr("disabled", false);
//	        	var rspt = objJson.crt;
//	 			console.log(rspt);
//	 			if(rspt != 0){
//					swal({
//						title : "Generada correctamente!",
//						text : "Proceda a descargarlo!",
//						confirmButtonColor : "#66BB6A",
//						type : "success"
//					});
//					$('#btnGen').attr("disabled", true);
//	 			}else{
//					swal({
//			            title: "UPS!! Error al gener carta!!",
//			            text: "Intentelo nuevamente",
//			            confirmButtonColor: "#2196F3",
//			            type: "info"
//			        });	
//	 			}
//	 			
//	         },
//	         error: function(error){
//	                //codigo error
//	         }
//		 });
//		
		
	});
	
//	$('#modal_theme_success').modal('toggle');
}



//-------- funcion para transformar a json
function FormatearFormJson(form_json){
	var n_json='';
	$.each(form_json.serializeArray(),function(index,v){
		var clave=v.name;
		var valor=v.value;
		
		n_json=n_json+'"'+clave+'":"'+valor+'",';		
	});
	n_json=n_json.substring(0,n_json.length-1);
	n_json=JSON.parse('{'+n_json+'}');
	
	return n_json;
}
// -------------------------------------------------------------- Registros -------------------------
// funcion para re3gistrar vacante
function registrar() {
	
	var urls = "rp?opc=new_Empresa";
	// Datos del Representante y la empresa
	var data = $("#form_new_empresa");
	data=FormatearFormJson(data);
	
	console.log("----imprime datos repre y empresa");	
	console.log(data);
	
	 $.ajax({
         url : urls,
         data : JSON.stringify(data), 
         method : 'post', //en este caso
         dataType: "json",
         contentType: "application/json",
         success : function(objJson){
        	var rspt = objJson.resp;
 			console.log("llego");
 			console.log(rspt);
 			if(rspt != 0){
				swal({
					title : "Registrado correctamente!",
					text : "Espere la confirmación del Supervisor de Practicas.!",
					confirmButtonColor : "#66BB6A",
					type : "success"
				});
 			}else{
				swal({
		            title: "For your information",
		            text: "This is some sort of a custom alert",
		            confirmButtonColor: "#2196F3",
		            type: "info"
		        });	
 			}
 			
         },
         error: function(error){
                //codigo error
         }
	 });
	
};

function create_Representante() {
	
	var urls = "rp?opc=new_Representante";
	// Datos del Representante y la empresa
	var data = $("#form_new_representante");		
	data=FormatearFormJson(data);
	data.idempresa=$("#select").val();
	console.log("----imprime datos representante");	
	console.log(data);

	 $.ajax({
         url : urls,
         data : JSON.stringify(data), 
         method : 'post', //en este caso
         dataType: "json",
         contentType: "application/json",
         success : function(objJson){
        	var rspt = objJson.resp;
 			console.log("llego");
 			console.log(rspt);
 			if(rspt != 0){
				swal({
					title : "Registrado correctamente!",
					text : "Espere la confirmación del Supervisor de Practicas.!",
					confirmButtonColor : "#66BB6A",
					type : "success"
				});
				ListEmpresa();
 			}else{
				swal({
		            title: "For your information",
		            text: "This is some sort of a custom alert",
		            confirmButtonColor: "#2196F3",
		            type: "info"
		        });	
 			}
 			
         },
         error: function(error){
                //codigo error
         }
	 });
};