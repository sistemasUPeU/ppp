<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../../../../jspf/Emp/headEmpl.jspf"%>

</head>
<body>
	<div class="content">
		<div class="row">
				<div class="col-md-6">
									<div class="panel panel-flat">
									
										<div class="panel-heading">
											<h5 class="panel-title">Lineas evaluación</h5>
											
											<div class="heading-elements">
												<ul class="icons-list">
							                		<li><a data-action="collapse"></a></li>
							                		<li><a data-action="reload"></a></li>
							                		<li><a data-action="close"></a></li>
							                	</ul>
						                	</div>
										</div>
		
										<div class="panel-body">
		                                   <!---Boton para agregar nuevo Item--->
		                                   <div class="col col-2">
		                                   <button id="addQuestion" type="button" class="btn btn-info btn-float btn-loading" data-loading-text="<i class='icon-spinner4 spinner'></i>"><i class="icon-spinner4"></i></button>
		                                    <button id="quitQuestion" type="button" class="btn btn-danger btn-float btn-loading" data-loading-text="<i class='icon-spinner4 spinner'></i>"><i class="icon-air"></i></button>
		                                    </div>
		                                    
											<!-- Fin Boton para agregar nuevo Item--- -->
											
											<div class="questions">
		                                   <input type='text' class='form-control dynamic' placeholder='Ingrese pregunta' class='question'><br>
		                                    </div>
		                                <div class="form-group">
		                                    <button type="submit" id="createexamen"class="btn btn-danger">Crear Examen</button>
		                                </div>
											    <!---Empieza formulario preguntas-->
									</div>
		
								</div>
					</div>
		</div>
		</div>
</body>
<script type="text/javascript">
            var nr=1;
        $(document).ready(function() {
	$("#addQuestion").click(function(){
        var add="";
        if(nr<5){
            nr=nr+1;
            add+="<input type='text' class='form-control dynamic' placeholder='Ingrese pregunta' class='question' id='ques'><br>";
            $(".questions").append(add);
        }
        else{
                    
                }
    })
            $("#quitQuestion").click(function(){
                if(nr>1){
                    alert("Eliminar");
                    $("#ques").remove();
                    nr=nr-1;
                }
            })
            
            $("#createexamen").click(function(e){
                var x={};
                x.append();
                $.ajax({
                    url:'examenes',
                    type:'POST',
                    data:JSON.stringify({p_nombre:$('.question').val()}),
                    processsData:false,
                    contentType:"application/json"
                   
                })
                e.preventDefault();
                
            })
});
        </script>
</html>