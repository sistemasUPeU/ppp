package pe.edu.upeu.ppp.dao;

import java.util.List;
import java.util.Map;

public interface EmpresaDAO {

	// Este meto usa el procedimiento PA_REG_EMPRESA_P1
	 int RegEmpresa(String P_NOMBRE, 
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
	 List<Map<String, Object>> ListSeguro();
	 
	 //LISTAMOS LINEAS ACADEMICAS
	 List<Map<String, Object>> ListLineas();
}
