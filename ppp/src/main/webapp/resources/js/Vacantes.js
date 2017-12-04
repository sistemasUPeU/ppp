$(document).ready(function(){
	
		});
function createTable() {
    var s = '<table id="data" class="table datatable-show-all" cellspacing="0" width="100%">';
    s += '<thead>';
    s += '<tr>';
    s += '<th>ID</th>';
    s += '<th>Nombres y Apellidos</th>';
    s += '<th>Categoria</th>';
    s += '<th>Cargo</th>';
    s += '<th>Area</th>';
    s += '<th>Departamento</th>';
    s += '<th>Empresa </th>';
    s += '<th>Opciones </th>';
    s += '<th>Seleccionar</th>';
    s += ' </tr>';
    s += '</thead>';
    s += '<tbody id="data"></tbody>';
    s += '</table>';
    return s;
    
};