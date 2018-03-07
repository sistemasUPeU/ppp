package pe.edu.upeu.ppp.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface VacanteService {
	
	public List<Map<String, Object>> obtenerEscuela_LineaP(int idrepresentante);	
	public int SaveVacante(ArrayList<String> lineasp,String idPeriodo,int idConvenio,int idRepresentante,String areaTrabajo,String horario,String fechaInicio,String fechaFin,String horaInicio,String horaFin,int sueldo,int nCupos,int idEstado);
	public ArrayList<Map<String, Object>> listarVacantes (int id);
	public ArrayList<Map<String, Object>> getTeacher (int id);
	public ArrayList<Map<String, Object>> GetAlumnos (int id);
	
	public String AginacionIn (int idalumno , int idvacante);
	
	
	public ArrayList<Map<String, Object>> ListarHistoria(int id);
	
	public ArrayList<Map<String, Object>> CargaCombox1();
	public ArrayList<Map<String, Object>> CargaCombox1(int id);
	
	

	public int notifyVaca (int id);
	
}
