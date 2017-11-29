$(document).ready(function() {
	listarModulos();
});
function listarModulos() {
	var url = "cc?";
	var data = "opc=perfil";
	$.getJSON(url, data, function(objJson) {
		var list = objJson.li;
		var s = "";
		if (list.length > 0) {
			for (var i = 0; i < list.length; i++) {
				console.log(i);
				var idPER = list[i].IDPERMISOS;
				var rol = list[i].ROL;
				var ico = list[i].ICONO;
				var permiso = list[i].PERMISO;
				var ruta = list[i].RUTA;
				var nombre = list[i].DESCRIPCION;
				s += createModulo(idPER, rol,nombre, ico, permiso, ruta);
			}
			console.log(s);
			$("#cagarmenu").empty();
			$("#cagarmenu").append(s);
		}
	});
}

function createModulo(idPER, rol,nombre, ico, permiso, ruta) {
	var s ='<a id="pagehome" class="nav-link" href="'+ruta+'"><i class="'+ico+'"></i> '+nombre+' </a>';
	return s;
}