package pe.edu.upeu.ppp.serviceImp;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.ppp.dao.UserDAO;
import pe.edu.upeu.ppp.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDAO userdao;
	
	@Override
	public ArrayList<Map<String, Object>> perfil(int id) {
		return userdao.perfil(id);
	}

}
