$(document).ready(function(){	
	$("#div_auxiliar").hide();
	listarEscuelaLineasP();
	
	$("#escuelas").on("change",function(){
		console.log($(this).val());
		select_anidado_escuela($(this).val());
	});
	
	$("#btn_form_vacante").on("click",function(){
		//$("#btn_form_vacante").prop("disabled",true);
		new_vacante();	
	});
	
});



/*
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
*/

function listarEscuelaLineasP(){
	$.ajax({
		url:"vacante/getEscuelaLineaP",
		method:"post",
		success:function(retorno){
			retorno=JSON.parse(retorno);
			console.log(retorno);
			
			array_escuelas=[];
			form_vacante=$("#form_vacante");
			
			form_vacante.find("#escuelas").html("<option  value='0'>None Select</option>");
			form_vacante.find("#lineasprofesionales").html("");
			
			$.each(retorno.escuela_linep,function(key,value){
				console.log("entro.....");
				
				if(jQuery.inArray(value.ESCUELA,array_escuelas)<0){
					console.log(value.ESCUELA);
					array_escuelas.push(value.ESCUELA);
					form_vacante.find("#escuelas").append("<option value='"+value.ESCUELA+"'>"+value.ESCUELA+"</option>");					
				}
//				form_vacante.find("#lineasprofesionales").append("<option data-escuela='"+value.ESCUELA+"' value='"+value.LINEAP+"'>"+value.LINEAP+"</option>");
				$("#div_auxiliar").append("<option title='"+value.INFO+"' data-escuela='"+value.ESCUELA+"' value='"+value.IDLINEASP+"'>"+value.LINEAP+"</option>");
			});			
			console.log("joven");
//			$("#div_auxiliar").html(form_vacante.find("#lineasprofesionales").html());			
			form_vacante.find("#lineasprofesionales").multiselect();
		}
	});
}

function new_vacante(){	
	datos_form=FormatearFormJson("#form_vacante");
	console.log(datos_form);	
	
	$.ajax({
		url:"vacante",
		data:JSON.stringify(datos_form),
		method:"post",
//		dataType:"json",
		contentType:"application/json",
		success:function(retorno){
			console.log(retorno);
		}
	});
	
}

function FormatearFormJson(form_json){
	//no colocar dos select o checkbox juntos
	var n_json='';
	
	var n_json_2='';
	var elementos_repetidos=[];
	var nombre_elem_repetido='';
	var indice=0;
	
	$.each($(form_json).serializeArray(),function(index,v){
		var clave=v.name;
		var valor=v.value;
		
		if(jQuery.inArray(clave, elementos_repetidos)>0){
			indice=indice+1;
			n_json_2=n_json_2+'"'+valor+'",';
			nombre_elem_repetido='"'+clave+'"';
		}else{			
			if(indice>0){
				n_json_2=n_json_2.substring(0,n_json_2.length-1);
				n_json_2=nombre_elem_repetido+':['+n_json_2+'],';
				
				indice=0;
				n_json=n_json+n_json_2;
				n_json_2='';
				n_json_2=n_json_2+'"'+valor+'",';
			}else{
				n_json_2='';
				n_json_2=n_json_2+'"'+valor+'",';
			}			
			elementos_repetidos.push(clave);
			n_json=n_json+'"'+clave+'":"'+valor+'",';
		}						
	});	
	n_json=n_json.substring(0,n_json.length-1);
	n_json=JSON.parse('{'+n_json+'}');
	
	return n_json;
}

function select_anidado_escuela(seleccionado){    
	var rex = new RegExp(seleccionado, 'i');
    $("#lineasprofesionales").find("option").remove();
    
    $("#lineasprofesionales").html(
    $("#div_auxiliar").find("option").filter(function () {
        return rex.test($(this).attr("data-escuela"));
    }).clone()
    );
    $("#lineasprofesionales").multiselect("rebuild");
}

