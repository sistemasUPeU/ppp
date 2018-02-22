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
				var modulos = list[i].MODULO;
				var id_pader = list[i].PAPA;
				var id = list[i].IDRUTA;
				console.log(modulos);
				s += createModulo(idPER, rol,nombre,modulos,id_pader,  ico, permiso ,id);
				
			}
			console.log(s);
			$("#cagarmenu").empty();
			$("#cagarmenu").append(s);
		}
	});
}

function createModulo(idPER, rol,nombre,modulos,id_pader,  ico, permiso ,id) {
	var s ='';
	//if (id_pader == null){
		//s += '<a href="#"><i class="icon-stack2"></i> <span> '+modulos+' </span></a>';
		//s += '<ul>';
		s +='<a id="'+id+'" onclick="getrutas(this.id);" href="#"><i class="'+ico+'"></i> <span>'+nombre+' </span></a>';
		//s +='</ul>';
	//}else{
		//s +='<a id="'+id+'" onclick="getrutas(this.id);" href="#"><i class="'+ico+'"></i> <span>'+nombre+'</span></a></li>';
	//}
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
		
		for(var i=0; i< role.length ;i++){
			 rol = role[i].ROL;
			 nombre = role[i].NOMBRE;
			 apellido = role[i].APELLIDOS
		}
			
			a = perfildate(nombre ,apellido , rol ,genero);
			console.log(a);
			$("#perfil").empty();
			$("#perfil").append(a); 
			
			
			b= namePerfil(nombre,apellido ,genero);
			//$("#listarI").empty();
			$("#listarI").append(b); 
		if (genero == 1){
		
			//asas$("#icon").attr("src", '<c:url value='"resources/plugin/img/avatars/8.jpg"''/>');
			//var a ='\"buscar.value=' ';\"';
		}else{
			
		}
		
	});
}

function perfildate(nombre ,apellido , rol ,genero) {
	var s ='<a href="#" class="media-left"><img src="resources/imagenes/'+ genero+'.png" class="img-circle img-sm" alt=""></a>';
	s+= '<div class="media-body" >';
	s+= '<span class="media-heading text-semibold">'+nombre+'  '+apellido+'</span>';
	s+='<div class="text-size-mini text-muted">';
	s+='<i class="icon-pin text-size-small"></i> &nbsp; '+rol+'';
	s+='</div>';
	s+='</div>';
	return s;
}

function getrutas(id){
	  
		$("#contenedor").load(id);	
		console.log('"'+id+'"');
}


function namePerfil(nombre ,apellido, genero ) {
	var s = '<a class="dropdown-toggle" data-toggle="dropdown">';
	s+='<img src="resources/imagenes/'+genero+'.png" alt="">';
	s+='<span>'+nombre+'  '+apellido+'</span>';
	s+='<i class="caret"></i>';
	s+='</a>';
	return s;
}