package pe.edu.upeu.ppp.security;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pe.edu.upeu.ppp.dao.UserDAO;
import pe.edu.upeu.ppp.entity.CUserDTO;

@Service("userDetailsService")
@Transactional(readOnly=true)
public class UserDetailsServiceImpl implements UserDetailsService{

	@Autowired
	UserDAO udao;
	
	
	
	public CUserDTO loadUserByUsername(String username) throws UsernameNotFoundException {
		 Map<String, Object> userinf = udao.getValidateUser(username);
		 CUserDTO user = new CUserDTO(userinf, udao.getAllPermit(userinf.get("IDUSUARIO")), true, true, true,true);
		 System.out.println("loadByUsername is running");
	    return user;
	}

}
