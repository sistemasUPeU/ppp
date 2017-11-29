$(document).ready(function() {
	listarModulos();
	listarPerfil();
});
function listarModulos() {
	var url = "cc?";
	var data = "opc=perfil";
	$.getJSON(url, data, function(objJson) {
		var list = objJson.li;
		var user = objJson.name ;
		var genero = objJson.genero ;
		console.log(user + genero);
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

function listarPerfil() {
	var url = "cc?";
	var data = "opc=perfil";
	$.getJSON(url, data, function(objJson) {
		var user = objJson.name ;
		var genero = objJson.genero ;
		console.log(user + genero);
		var a = "";

			a = perfildate(user ,genero);
			console.log(a);
			$("#perfil").empty();
			$("#perfil").append(a);
		
	});
}

function perfildate(user ,genero) {
	var s = '<strong>'+user+'</strong>';
	return s;
}