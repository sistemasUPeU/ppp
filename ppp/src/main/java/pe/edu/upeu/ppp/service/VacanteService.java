package pe.edu.upeu.ppp.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface VacanteService {
	
	public ArrayList<Map<String, Object>> listarVacantes (int id);
	public ArrayList<Map<String, Object>> getTeacher (int id);
	
	
	public ArrayList<Map<String, Object>> ListarHistoria(int id);
	
	public ArrayList<Map<String, Object>> CargaCombox1();
	public ArrayList<Map<String, Object>> CargaCombox1(int id);
	
	

	public int notifyVaca (int id);
	
}
