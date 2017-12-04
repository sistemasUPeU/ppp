
function registrar(){

var nombre =$("#nombre").val();
var apellido =$("#apellido").val();
var dni =$("#dni").val();
var celular =$("#celular").val();
var correo =$("#correo").val();
var genero =$("#genero").val();
var idperiodo =$("#idperiodo").val();
var  razonS =$("#razonS").val();
var ruc =$("#ruc").val();
var direccion =$("#direccion").val();
var seguro =$("#seguro").val();
var actividad =$("#actividad").val();
var cargo =$("#cargo").val();
var idalumno =$("#idalumno").val();
var idrol =$("#idrol").val();
var ciclo =$("#ciclo").val();





var url="rp?opc=registrarp";
var data = "&nom="+ nombre;
data += "&ape="+ apellido;
data += "&dnii="+ dni;
data += "&cel="+celular;
data += "&cor="+correo;
data += "&gen="+genero;
data += "&idpe="+idperiodo;
data += "&raz="+razonS;
data += "&rucc="+ruc;
data += "&direc="+direccion;
data += "&seg="+seguro;
data += "&act="+actividad;
data += "&car="+cargo;
data += "&idal="+idalumn;
data += "&idro="+idrol;
data += "&cic="+ciclo;
};


