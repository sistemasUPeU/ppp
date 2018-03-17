package pe.edu.upeu.ppp.service;

import java.util.ArrayList;
import java.util.Map;


public interface RepreService {
	
	public int regRepresentante(String P_NOMBRE, 
		 	  String P_APELLIDOS,
		 	  String P_DNI,
		 	  String P_CELULAR,
		 	  String P_CORREO,
		 	  String P_GENERO,int idEstado,int id_Empresa,String id_Periodo,String cargo);
	
	public ArrayList<Map<String,Object>> listarRepr ();
	
}
