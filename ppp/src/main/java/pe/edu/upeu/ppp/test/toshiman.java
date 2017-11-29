package pe.edu.upeu.ppp.test;

import org.springframework.beans.factory.annotation.Autowired;

import pe.edu.upeu.ppp.config.SpringConnection;
import pe.edu.upeu.ppp.dao.UserDAO2;
import pe.edu.upeu.ppp.service.UserService;
import pe.edu.upeu.ppp.serviceImp.serviceimpl;

public class toshiman {

	@Autowired
	private static UserService daa;
	
	//private static UserDAO2 daa=  new UserDAO2(SpringConnection.getDataSource());
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		get();
	}

	public static void get() {
		
		System.out.println(daa.getValidateUser("brandux"));
		
	}
	
}
