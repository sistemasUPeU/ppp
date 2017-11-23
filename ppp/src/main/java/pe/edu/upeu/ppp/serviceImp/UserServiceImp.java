package pe.edu.upeu.ppp.serviceImp;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import pe.edu.upeu.ppp.dao.UserDAO;
import pe.edu.upeu.ppp.service.UserService;

public class UserServiceImp implements UserService{

	@Autowired
	UserDAO udao ;

	public Map<String, Object> getValidateUser(String username, String pass) {
		return udao.getValidateUser(username);
	}

	public ArrayList<Map<String, Object>> getAllSupervisor(int iduser) {
		return udao.getAllSupervisor(iduser);
	}

	public ArrayList<Map<String, Object>> getAllRepresentante(int iduser) {
		return udao.getAllRepresentante(iduser);
	}

	public ArrayList<Map<String, Object>> getAllAlumno(int iduser) {
		return udao.getAllAlumno(iduser);
	}

	public ArrayList<Map<String, Object>> getAllPermit(Object rol) {
		return udao.getAllPermit(rol);
	}


	
	
}
