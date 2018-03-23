$(document).ready(function() {
	
	listarModulos ();
});

function listarModulos() {
	var listAlm , c= '';
	var nom,apel,dni,cel,gen,ecv,cod,cor
	$.ajax({
		 url : 'al/get',
	    data : { opc : 'listAlm' },
	    method : 'GET',
	    dataType : 'json',
	    success : function(objJson) {
	    	console.log(objJson);
	    	listAlm  = objJson.alumno;
	    	if (listAlm.length > 0) {
				for (var i = 0; i < listAlm.length; i++) {
					 nom = listAlm[i].NOMBRE;
					 apel = listAlm[i].APELLIDOS;
					 dni = listAlm[i].DNI;
					 cod = listAlm[i].CODIGO;
					 cel = listAlm[i].CELULAR;
					 gen = listAlm[i].GENERO;
					 if(gen == 1){
						 gen = 'Masculino'
					 }else{
						 gen = 'Femenino'
					 };
					 ecv = listAlm[i].ECIVIL;
					 cor = listAlm[i].CORREO;
					 c += CreateCard(nom,apel,dni,cel,gen,ecv,cod,cor);
				}
		        $("#listAlumno").empty();
		    	$("#listAlumno").append(c);
	    }else{
	    	
	    	
	    	
	    	}
	    },	
	});
	
}


 function CreateCard(nom,apel,dni,cel,gen,ecv,cod,cor){
				 var s=' <div class="form-group">\
								<div class="row">\
									<div class="col-md-6">\
										<label>Nombres</label> <input type="text"\
											value="'+nom+'" readonly="readonly"\
											class="form-control">\
									</div>\
									<div class="col-md-6">\
										<label>Apellidos</label> <input type="text"\
											value="'+apel+'" readonly="readonly"\
											class="form-control">\
									</div>\
								</div>\
							</div>\
				\
							<div class="form-group">\
								<div class="row">\
									<div class="col-md-4">\
										<label>Codigo</label> <input type="text"\
											value="'+cod+'" readonly="readonly"\
											class="form-control">\
									</div>\
									<div class="col-md-4">\
										<label>D.N.I</label> <input type="text" value="'+dni+'"\
											readonly="readonly" class="form-control">\
									</div>\
									<div class="col-md-4">\
										<label>Celular</label> <input type="text"\
											value="'+cel+'" id="cel" readonly="readonly"\
											class="form-control">\
									</div>\
								</div>\
							</div>\
				\
							<div class="form-group">\
								<div class="row">\
									<div class="col-md-4">\
										<label>Genero</label> <input type="text"\
											value="'+gen+'" readonly="readonly"\
											class="form-control">\
									</div>\
									<div class="col-md-4">\
										<label>Estado Civil</label> <input type="text"\
											value="'+ecv+'" readonly="readonly" id="Ecivil"\
											class="form-control">\
									</div>\
								</div>\
							</div>\
							<div class="form-group">\
								<div class="row">\
									<div class="col-md-6">\
										<label>Email</label> <input type="text"\
											readonly="readonly" id="email"\
											value="'+cor+'" class="form-control">\
									</div>\
								</div>\
							</div>\
							<div class="text-right">\
								<button type="submit" disabled="true" id="guardar"\
									class="btn btn-primary">\
									Guardar <i class="icon-arrow-right14 position-right"></i>\
								</button>\
							</div>\
						</div>'
 ;
 return s;
 }
