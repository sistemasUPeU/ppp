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
		 	  String P_IDPERIODO,
		 	  String P_RAZONSOCIAL,
		 	  String P_RUC,
		 	  String P_DIRECCION,
		 	  String P_SEGURO,
		 	  String P_ACTIVIDAD,	  
		 	  String P_CARGO,
		 	  String P_IDALUMNO,
		 	  String P_IDROL,
		 	  String P_CICLO);
	
	 //Listar seguros de empresas
	 public List<Map<String, Object>> ListSeguro();
	 
	//LISTAMOS LINEAS ACADEMICAS
	 public List<Map<String, Object>> ListLineas();
}
