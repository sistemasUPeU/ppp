$(document).ready(function() {
	listarSeguro();
});

function listarSeguro() {
	$.get('rp?opc=Seguro', function(objJson) {
		var v = '';
		var list = objJson.as;
		console.log(list);
		for (var i = 0; i < list.length; i++) {
			v +='<option value="' + list[i].IDSEGUROS + '">'+ list[i].SEGURO +'</option>';
		}
		$("#seguro").empty();
		
		v = '<option></option>\
			<optgroup label="Seguros de Empresa">'
			+ v	+ 
			'</optgroup>';
		
		$("#seguro").append(v);
	});
}

function registrar() {
	
	var url = "rp?opc=registrarp";
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
	
	alert(data);
};

