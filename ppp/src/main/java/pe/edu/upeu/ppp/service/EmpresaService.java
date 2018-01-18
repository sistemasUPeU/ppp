package pe.edu.upeu.ppp.service;

import java.util.List;
import java.util.Map;

public interface EmpresaService {

	public int RegEmpresa(String P_NOMBRE, 
		 	  String P_APELLIDOS,
		 	  String P_DNI,
		 	  String P_CELULAR,
		 	  String P_CORREO,
		 	  String P_GENERO,
		 	  
		 	  String P_CARGO,
		 	  String P_IDPERIODO,
		 	  
		 	  String P_RAZONSOCIAL,
		 	  String P_RUC,
		 	  String P_DIRECCION,
		 	  String P_SEGURO,
		 	  String P_ACTIVIDAD,	  
		 	 
		 	  String P_IDALUMNO,
		 	  String P_IDROL,
		 	  String P_CICLO,
		 	  
		 	  String P_AREAWK,
		 	  String P_CANTIDAD,
		 	  String P_HORARIO,
		 	  String P_FECHA_INI,
		 	  String P_FECHA_FIN,
		 	  String P_H_INI,
		 	  String P_H_FIN,
		 	  String P_SUELDO,
		 	  String P_idLinea);
	
	 //Listar seguros de empresas
	 public List<Map<String, Object>> ListSeguro();
	 
	//LISTAMOS LINEAS ACADEMICAS
	 public List<Map<String, Object>> ListLineas();
}
