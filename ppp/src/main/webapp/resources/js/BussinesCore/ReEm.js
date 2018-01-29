$(document).ready(function() {
	$("#ocultar").hide();
	listarSeguro();
	dataVacante();
});

// funciones de vista
function ocultar(){
	$("#ocultar").show(500);
	$("#Aparecer").hide();
	
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



// cargar vacantes existentes on data table
function dataVacante (){
	// create component 
	var s ;
	var c ;
	var m ;
	var mm;
	// recoleccion de datos 
	var RAZONSOCIAL, RUC, DIRECCION;
	var REPRESENTANTE, CELULAR, DNI;
	var CORREO , PERIODO , HORARIO ;
	var SUELDO , HORA, AREATRABAJO;
	
	
	$.getJSON('rp?opc=Vacantes', function(objJson){
		var vacantes = objJson.Vacantes;
		console.log(vacantes);
		if (vacantes.length > 0) {
			for (var i = 0; i < vacantes.length; i++) {
				//recoger valores de tabla 
				RAZONSOCIAL	  = vacantes[i].RAZONSOCIAL;
				RUC 		  = vacantes[i].RAZONSOCIAL;
				DIRECCION	  = vacantes[i].DIRECCION;
				REPRESENTANTE = vacantes[i].REPRESENTANTE;
				CELULAR		  = vacantes[i].CELULAR;
				DNI 		  = vacantes[i].DNI;
				CORREO		  = vacantes[i].CORREO;
				PERIODO		  = vacantes[i].PERIODO;
				HORARIO		  = vacantes[i].HORARIO;
				HORA 		  = vacantes[i].HORA;
				SUELDO		  = vacantes[i].SUELDO;
				AREATRABAJO   = vacantes[i].AREATRABAJO;
				
				// cargar tabla 
				s += '<tr>';
					s += '<td>'+vacantes[i].RAZONSOCIAL+'</td>';
					s += '<td>'+vacantes[i].RUC+'</td>';
					s += '<td>'+vacantes[i].HORARIO+'</td>';
					s += '<td><strong>S/. </strong>'+vacantes[i].SUELDO+'</td>';
					s += '<td><span class="label label-info">Pendiente</span></td></td>';
					s += '<td class="text-center">\
								<button onclick=""  data-toggle="modal" data-target="#modal_theme_warning" type="button" class="btn btn-primary btn-icon btn-rounded"><i class="icon-search4"></i></button>\
						  </td>';
				s += '</tr>';
			}
			$("#contTable").empty();
			c = create (s);
			$("#contTable").append(c);
			$('#tabla').DataTable();
		
			// resetear modal
			$("#empresaName").empty();
			mm =  minimalModal(RAZONSOCIAL);
			$("#empresaName").append(mm);
			
			$("#cargModal").empty();
			m = createModal (RUC,DIRECCION,REPRESENTANTE, CELULAR ,DNI, CORREO,PERIODO,HORARIO,HORA,SUELDO,AREATRABAJO);
			$("#cargModal").append(m);
	
			
		
		}else{
			$("#contTable").hide();
			var a ="<h2><strong>NO!! tienes vacante asignada..</strong></h2>";
			$("#msj").empty();
			$("#msj").append(a);
		}
		
	});
}
	
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

function createModal (RUC,DIRECCION,REPRESENTANTE, CELULAR ,DNI, CORREO,PERIODO,HORARIO,HORA,SUELDO,AREATRABAJO){
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


// --------------------------------------------------------------
// funcion para re3gistrar vacante
function registrar() {
	
	var url = "rp?opc=Registro";
	// REPRESENTANTE
	var data = "&nom=" + $("#nombreRepre").val();
	data += "&ape=" +  $("#ape").val();
	data += "&dnii=" + $("#dni").val();
	data += "&cel=" +  $("#cel").val();
	data += "&cor=" + $("#correo").val();
	data += "&gen=" + $("#genero").val();

	//EMPRESAS
	data += "&raz=" + $("#rasoc").val();
	data += "&rucc=" +  $("#ruc").val();
	data += "&direc=" + $("#direccion").val();
	data += "&seg=" + $("#seguro").val();
	data += "&act=" + $("#actividad").val();
	data += "&car=" + $("#cargo").val();
	
	//Registro vacante
	data += "&arTrabajo=" + $("#areaT").val();
	data += "&cantidad=" +  $("#cant").val();
	data += "&horario=" + $("#horario").val();
	data += "&f_ini=" + $("#fec_ini").val();
	data += "&f_fin=" + $("#fec_fin").val();
	data += "&h_ini=" + $("#H_inic").val();
	data += "&h_fin=" + $("#H_fin").val();
	data += "&sueldo=" + $("#suel").val();
	data += "&linia=" + $("#lineas").val();
	
	alert(data);
//	$.post(url,data, function(objJson) {
//		var rspt = objJson.abl;
//		console.log(rspt);
//		
//		if(rspt == 1){
//			swal({
//				title : "Registrado correctamente!",
//				text : "Espere la confirmación del Supervisor de Practicas.!",
//				confirmButtonColor : "#66BB6A",
//				type : "success"
//			});
//		}else{
//			swal({
//	            title: "For your information",
//	            text: "This is some sort of a custom alert",
//	            confirmButtonColor: "#2196F3",
//	            type: "info"
//	        });
//		}
//	});
	
	
};

