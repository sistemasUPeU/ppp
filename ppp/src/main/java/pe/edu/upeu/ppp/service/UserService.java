package pe.edu.upeu.ppp.service;

import java.util.ArrayList;
import java.util.Map;

public interface UserService {

	//Metho for get data of perfil
	public ArrayList<Map<String, Object>> perfil (int id);
	
	
	//Mettho role 
	public	ArrayList<Map<String , Object>> getRole (int id);
}
