$(document).ready(function() {

	
	$("#periodo_hora").on("click",".btn_add_periodohoras",function(){
		$(this).prop("disabled","true");
		
		var div_periodo='<div class="row div_row_periodo_horas row_periodo">'+
					'<div class="col-md-2">'+
				'<div class="form-group required">'+
					'<label>Desde el Ciclo<span class="text-danger">*</span></label>'+
					'<input name="ciclo_izquierda" type="number" min="1" max="10" class="form-control required">'+
				'</div>'+
			'</div>'+
			'<div class="col-md-2">'+
				'<div class="form-group required">'+
					'<label>Hasta Ciclo<span class="text-danger">*</span></label>'+				
					'<input name="ciclo_derecha" type="number" min="1" max="10" class="form-control required">'+
				'</div>'+
			'</div>'+			
			'<div class="col-md-3">'+
				'<div class="form-group required">'+
					'<label>¿Cuántas Horas completara?<span class="text-danger">*</span></label>'+				
					'<input name="horas" type="number" min="1" max="1000" class="form-control required">'+				
				'</div>'+
			'</div>'+
			'<div class="col-md-2">'+
				'<div class="form-group">'+						
					'<button type="button" class="btn btn-primary stepy-finish btn_add_periodohoras">'+
					'<i class="glyphicon glyphicon-plus"></i>'+
					'</button>'+
				'</div>'+
			'</div>'+
			'<div class="col-md-2">'+
			'<div class="form-group">'+						
				'<button type="button" class="btn btn-danger stepy-finish btn_delete_periodohoras">'+
				'<i class="glyphicon glyphicon glyphicon-trash"></i>'+
				'</button>'+
			'</div>'+
		'</div>'+				
		'</div>';
		$("#periodo_hora").append(div_periodo);
		
	});
	
	$("#periodo_hora").on("click",".btn_delete_periodohoras",function(){		
		$(this).parents(".div_row_periodo_horas").remove();
		$(".btn_add_periodohoras").last().prop("disabled",false);		
	});
	
	$("#btn_form_periodohoras").on("click",function(){
		//$(this).prop("disabled","true");
		console.log(FormatearForm_RowPeriodoJson("#form_periodoHoras"));
		$.ajax({
			url:"escuela/periodohoras",
			data:JSON.stringify(FormatearForm_RowPeriodoJson("#form_periodoHoras")),
			method:"post",
			contentType:"application/json",
			success:function(retorno){
				respuesta=retorno.resp;
				
				
	 			if(respuesta != 0){
					swal({
						title : "Registrado correctamente!",
						//text : "Espere la confirmación del Supervisor de Practicas.!",
						confirmButtonColor : "#66BB6A",
						type : "success"
					});					
	 			}else{
					swal({
			            title: "For your information",
			            text: "This is some sort of a custom alert",
			            confirmButtonColor: "#2196F3",
			            type: "info"
			        });	
	 			}
			}
		});
	});
});





function FormatearForm_RowPeriodoJson(form_json){
	var n_json='';
	var n_row_json='';
	$.each($(form_json).find(".row_periodo"),function(){
		$.each($(this).find(":input").serializeArray(),function(index,v){
			var clave=v.name;
			var valor=v.value;
			
			n_json=n_json+'"'+clave+'":"'+valor+'",';
		});
		n_row_json=n_row_json+'{'+n_json.substring(0,n_json.length-1)+'},';
		n_json='';
	});
	n_row_json=n_row_json.substring(0,n_row_json.length-1)
	n_row_json=JSON.parse('['+n_row_json+']');
	return n_row_json;
}
