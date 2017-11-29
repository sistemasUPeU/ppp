$(document).ready(function() {
	//listarempleado();
	ListPerfil();
});

function ListPerfil() {
	$.get('cc?opc=perfil', function(objJson) {
		var s = '';
		var pl = objJson.li;
		console.log(pl);

	});
}
