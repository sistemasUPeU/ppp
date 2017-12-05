package pe.edu.upeu.ppp.security;

import java.util.List;
import java.util.Map;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pe.edu.upeu.ppp.config.SpringConnection;
import pe.edu.upeu.ppp.entity.CUserDTO;

@Service("userDetailsService")
@Transactional(readOnly=true)
public class UserDetailsServiceImpl implements UserDetailsService{

	//private Map<String, Object> user;

	
	private UserDAO2 userDAO2 = new UserDAO2(SpringConnection.getDataSource());
	
	@Override
	public CUserDTO loadUserByUsername(String username) throws UsernameNotFoundException {
		
		List <Map<String, Object>>  userinf = userDAO2.getValidateUser(username);
			
			System.out.println(userinf );
			System.out.println( userinf.get(0).get("IDUSER").toString().trim());
			System.out.println( userinf.get(0).get("NOMBRE").toString().trim());
			System.out.println( userinf.get(0).get("APELLIDOS").toString().trim());
			System.out.println( userinf.get(0).get("DNI").toString().trim());
			System.out.println( userinf.get(0).get("CELULAR").toString().trim());
			System.out.println( userinf.get(0).get("USU").toString().trim());
			System.out.println( userinf.get(0).get("PASS").toString().trim());
			System.out.println( userinf.get(0).get("ACTIVO").toString().trim());
			System.out.println( userinf.get(0).get("GENERO").toString().trim());
			System.out.println( userinf.get(0).get("IDROL").toString().trim());
			System.out.println( userinf.get(0).get("IDPERIODO").toString().trim());
			
			CUserDTO user = new CUserDTO(userinf.get(0).get("IDUSER").toString().trim(),userinf.get(0).get("NOMBRE").toString().trim(),
					userinf.get(0).get("APELLIDOS").toString().trim(), userinf.get(0).get("DNI").toString().trim(),
					userinf.get(0).get("CELULAR").toString().trim(),userinf.get(0).get("USU").toString().trim(), userinf.get(0).get("PASS").toString().trim()
					, userinf.get(0).get("ACTIVO").toString().trim() , userinf.get(0).get("GENERO").toString().trim(),userinf.get(0).get("IDROL").toString().trim(), userinf.get(0).get("IDPERIODO").toString().trim() , true,true,true,true);
			
			 System.out.println("Cargando user");
			
			 System.out.println(user.getUsername());
			 System.out.println(user.getPassword());
	    return user;
	
	}

}
