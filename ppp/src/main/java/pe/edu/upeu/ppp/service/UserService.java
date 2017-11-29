package pe.edu.upeu.ppp.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public interface UserService {
	
	Map<String, Object> getValidateUser(String username);

	
	ArrayList<Map<String, Object>> getAllSupervisor(int iduser);

	
	ArrayList<Map<String, Object>> getAllRepresentante(int iduser);

	
	ArrayList<Map<String, Object>> getAllAlumno(int iduser);

	
	
	ArrayList<Map<String, Object>> getAllPermit(Object rol);


}
