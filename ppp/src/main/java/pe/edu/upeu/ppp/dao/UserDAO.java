package pe.edu.upeu.ppp.dao;

import java.util.ArrayList;
import java.util.Map;

public interface UserDAO {

	
	Map<String, Object> getValidateUser(String username, String pass);

	
	ArrayList<Map<String, Object>> getAllSupervisor(int iduser);

	
	ArrayList<Map<String, Object>> getAllRepresentante(int iduser);

	
	ArrayList<Map<String, Object>> getAllAlumno(int iduser);

	
	
	ArrayList<Map<String, Object>> getAllPermit(int rol);

}
