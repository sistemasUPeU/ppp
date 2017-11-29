$(document).ready(function() {
	//listarempleado();
	console.log("asa");
});

function ListPerfil() {
	$.post('cc?opc=planillas', function(objJson) {
		var s = '';
		var pl = objJson.pl;
		var Remuneracion = [];
		var ImpRenta = [];
		console.log(pl);

	});
}
