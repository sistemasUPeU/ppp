package pe.edu.upeu.ppp.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface VacanteDAO {

	//metodos para listar 
	List<Map<String, Object>> obtenerEscuela_LineaP(int idrepresentante);
	
	ArrayList<Map<String, Object>> listarVacantes (int id);
	ArrayList<Map<String, Object>> getTeacher (int id);
	ArrayList<Map<String, Object>> GetAlumnos (int id);
	ArrayList<Map<String, Object>> NotifyVacante(int id);
	
	
	// METODOS PARA INSERT
	String AginacionIn (int idalumno , int idvacante);
	int SaveVacante(ArrayList<String> lineasp,String idPeriodo,int idConvenio,int idRepresentante,String areaTrabajo,String horario,String fechaInicio,String fechaFin,String horaInicio,String horaFin,int sueldo,int nCupos,int idEstado);
	String createFolder(String rutapdf , String rutafolder, String titulo, String observacion , int idalumno , int idrol );

	
	//por borrar
	ArrayList<Map<String, Object>> ListarHistoria(int id);
	
	
	
	ArrayList<Map<String, Object>> CargaCombox1();
	ArrayList<Map<String, Object>> CargaCombox1(int id);
	
	
	 
	 
	 int notifyVaca (int id);
	 
	 
}
