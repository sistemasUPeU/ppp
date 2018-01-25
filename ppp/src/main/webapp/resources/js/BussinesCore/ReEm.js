$(document).ready(function() {
	$("#ocultar").hide();
	listarSeguro();
	
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

