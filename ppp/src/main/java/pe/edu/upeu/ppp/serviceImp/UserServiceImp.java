package pe.edu.upeu.ppp.serviceImp;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import pe.edu.upeu.ppp.dao.UserDAO;
import pe.edu.upeu.ppp.service.UserService;

public class UserServiceImp implements UserService{

	@Autowired
	UserDAO udao ;

	public Map<String, Object> getUserAll(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
}
