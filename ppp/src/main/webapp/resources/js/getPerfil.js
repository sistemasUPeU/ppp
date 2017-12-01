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
		var role = objJson.rol ;	
		var rol;
		console.log(user + genero);
		var a = "";
		
		for(var i=0;i<role.length;i++){
			 rol = role[i].ROL;
		}
			
			a = perfildate(user ,genero , rol);
			console.log(a);
			$("#perfil").empty();
			$("#perfil").append(a);
		if (genero == 1){
			//$("#icon").attr("src","<c:url value="resources/plugin/img/avatars/8.jpg"/>");
		}else{
			
		}
		
	});
}

function perfildate(user ,genero , role) {
	var s = '<strong>'+user+'</strong><br>';
	s+='<small><strong>'+role+'</strong></small>';
	return s;
}