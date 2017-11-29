package pe.edu.upeu.ppp.security;

import java.util.Map;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pe.edu.upeu.ppp.config.SpringConnection;
import pe.edu.upeu.ppp.dao.UserDAO2;
import pe.edu.upeu.ppp.entity.CUserDTO;

@Service("userDetailsService")
@Transactional(readOnly=true)
public class UserDetailsServiceImpl implements UserDetailsService{

	private Map<String, Object> user;

	
	private UserDAO2 userDAO2 = new UserDAO2(SpringConnection.getDataSource());
	
	@Override
	public CUserDTO loadUserByUsername(String username) throws UsernameNotFoundException {
		
			Map<String, Object> userinf = userDAO2.getValidateUser(username);
			
			System.out.println(userinf );
			System.out.println( userinf.get("IDUSER").toString().trim());
			System.out.println( userinf.get("NOMBRE").toString().trim());
			System.out.println( userinf.get("APELLIDOS").toString().trim());
			System.out.println( userinf.get("DNI").toString().trim());
			System.out.println( userinf.get("CELULAR").toString().trim());
			System.out.println( userinf.get("USU").toString().trim());
			System.out.println( userinf.get("PASS").toString().trim());
			System.out.println( userinf.get("ACTIVO").toString().trim());
			System.out.println( userinf.get("GENERO").toString().trim());
			System.out.println( userinf.get("IDROL").toString().trim());
			
			CUserDTO user = new CUserDTO(userinf.get("IDUSER").toString().trim(),userinf.get("NOMBRE").toString().trim(),
					userinf.get("APELLIDOS").toString().trim(), userinf.get("DNI").toString().trim(),
					userinf.get("CELULAR").toString().trim(),userinf.get("USU").toString().trim(), userinf.get("PASS").toString().trim()
					, userinf.get("ACTIVO").toString().trim() , userinf.get("GENERO").toString().trim(),userinf.get("IDROL").toString().trim() , true,true,true,true);
			
			 System.out.println("Cargando user");
			
			 System.out.println(user.getUsername());
			 System.out.println(user.getPassword());
	    return user;
	
	}

}
