$(document).ready(function(){
	$("#div_new_vacante").hide();	
});

function mostrar_bloque(desplegarVista){
	desplegarVista="#"+desplegarVista;
	if($(desplegarVista).is(":visible")){
		$(desplegarVista).hide(500);
		$("#algo_").text('Agregar');
	}else{
		$(desplegarVista).show(500);
		$("#algo_").text('Cerrar');
	}	
}