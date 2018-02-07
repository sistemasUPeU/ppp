package pe.edu.upeu.ppp.dao;

import java.util.ArrayList;
import java.util.Map;

public interface RepresentanteDAO  {
	
	int regRepresentante(String P_NOMBRE, 
		 	  String P_APELLIDOS,
		 	  String P_DNI,
		 	  String P_CELULAR,
		 	  String P_CORREO,
		 	  String P_GENERO,int idEstado,int id_Empresa,int id_Periodo,String cargo);
	
	ArrayList<Map<String,Object>> listarRepr ();
	
}
