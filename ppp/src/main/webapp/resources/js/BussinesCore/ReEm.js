$(document).ready(function() {
	$("#ocultar").hide();
	listarSeguro();
	dataVacante();
});

function ocultar(){
	$("#ocultar").show(500);
	$("#Aparecer").hide();
}

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



// cargar vacantes existentes 
function dataVacante (){
	
	var s ;
	var c ;
	$.getJSON('rp?opc=Vacantes', function(objJson){
		var vacantes = objJson.Vacantes;
		console.log(vacantes);
		if (vacantes.length > 0) {
			for (var i = 0; i < vacantes.length; i++) {
				s += '<tr>';
					s += '<td>'+vacantes[i].RAZONSOCIAL+'</td>';
					s += '<td>'+vacantes[i].RUC+'</td>';
					s += '<td>'+vacantes[i].HORARIO+'</td>';
					s += '<td><strong>S/. </strong>'+vacantes[i].SUELDO+'</td>';
					s += '<td><span class="label label-info">Pendiente</span></td></td>';
					s += '<td class="text-center">\
								<button   data-toggle="modal" data-target="#modal_theme_warning" type="button" class="btn btn-primary btn-icon btn-rounded"><i class="icon-search4"></i></button>\
						  </td>';
				s += '</tr>';
			}
			
			
			$("#contTable").empty();
			c = create (s);
			$("#contTable").append(c);
			$('#tabla').DataTable();
		
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

