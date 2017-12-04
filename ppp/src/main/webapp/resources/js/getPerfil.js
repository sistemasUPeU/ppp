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
		var a ='"buscar"';
		console.log(user + genero);
		var s = "";
		if (list.length > 0) {
			for (var i = 0; i < list.length; i++) {
				console.log(i);
				var idPER = list[i].IDPERMISOS;
				var rol = list[i].ROL;
				var ico = list[i].ICONO;
				var permiso = list[i].PERMISO;
				var nombre = list[i].DESCRIPCION;
				var id = list[i].IDRUTA;
				s += createModulo(idPER, rol,nombre, ico, permiso ,id);
				
			}
			console.log(s);
			$("#cagarmenu").empty();
			$("#cagarmenu").append(s);
		}
	});
}

function createModulo(idPER, rol,nombre, ico, permiso , id) {
	var s ='<a id="'+id+'" onclick="getrutas(this.id);" class="nav-link" href="#"><i class="'+ico+'"></i> '+nombre+' </a>';
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
		var nombre ="";
		var apellido ="";
		console.log(user + genero);
		var a = "";
		
		for(var i=0;i<role.length;i++){
			 rol = role[i].ROL;
			 nombre = role[i].NOMBRE;
			 apellido = role[i].APELLIDOS
		}
			
			a = perfildate(nombre ,apellido , rol);
			console.log(a);
			$("#perfil").empty();
			$("#perfil").append(a);
		if (genero == 1){
		
			//asas$("#icon").attr("src", '<c:url value='"resources/plugin/img/avatars/8.jpg"''/>');
			//var a ='\"buscar.value=' ';\"';
		}else{
			
		}
		
	});
}

function perfildate(nombre ,apellido , rol) {
	var s = '<strong>'+nombre+'  '+apellido+'</strong><br>';
	s+='<small><strong>'+rol+'</strong></small>';
	return s;
}

function getrutas(id){
		$("#contenedor").load(id);	
		console.log('"'+id+'"');
}