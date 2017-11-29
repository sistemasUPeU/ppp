package pe.edu.upeu.ppp.serviceImp;

import java.util.ArrayList;
import java.util.Map;

import pe.edu.upeu.ppp.config.SpringConnection;
import pe.edu.upeu.ppp.dao.UserDAO2;
import pe.edu.upeu.ppp.service.UserService;

public class serviceimpl implements UserService{

	
	UserDAO2 a =new UserDAO2(SpringConnection.getDataSource());
	
	@Override
	public Map<String, Object> getValidateUser(String username) {
		// TODO Auto-generated method stub
		return a.getValidateUser(username);
	}

	@Override
	public ArrayList<Map<String, Object>> getAllSupervisor(int iduser) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Map<String, Object>> getAllRepresentante(int iduser) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Map<String, Object>> getAllAlumno(int iduser) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Map<String, Object>> getAllPermit(Object rol) {
		// TODO Auto-generated method stub
		return null;
	}

}
