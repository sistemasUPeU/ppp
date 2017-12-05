$(document).ready(function() {
	
	$("#BotonSub").on('click',function(){
		var fieldset=$(".stepy-active fieldset").attr("title");
		if(fieldset==1){
			$("#BotonSub").removeClass("R-EmpresaPaso2 R-EmpresaPaso3");
			$("#BotonSub").addClass("R-EmpresaPaso1");			
		}else if(fieldset==2){
			$("#BotonSub").removeClass("R-EmpresaPaso1 R-EmpresaPaso3");
			$("#BotonSub").addClass("R-EmpresaPaso2");	
		}else if(fieldset==3){
			$("#BotonSub").removeClass("R-EmpresaPaso2 R-EmpresaPaso1");
			$("#BotonSub").addClass("R-EmpresaPaso3");	
		}
	});
	
	
});




	