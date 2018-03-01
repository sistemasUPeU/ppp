package pe.edu.upeu.ppp.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface VacanteDAO {

	//metodos para listar 
	
	ArrayList<Map<String, Object>> listarVacantes (int id);
	ArrayList<Map<String, Object>> getTeacher (int id);
	ArrayList<Map<String, Object>> GetAlumnos (int id);
	
	// METODOS PARA INSERT
	String AginacionIn (int idalumno , int idvacante);
	
	//por borrar
	ArrayList<Map<String, Object>> ListarHistoria(int id);
	
	
	
	ArrayList<Map<String, Object>> CargaCombox1();
	ArrayList<Map<String, Object>> CargaCombox1(int id);
	
	
	 
	 
	 int notifyVaca (int id);
	 
	 
}
