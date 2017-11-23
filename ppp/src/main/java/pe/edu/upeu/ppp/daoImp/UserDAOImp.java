package pe.edu.upeu.ppp.daoImp;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.ppp.dao.UserDAO;

@Repository
@Qualifier("UserDAO")
public class UserDAOImp implements UserDAO{

	@Autowired
	JdbcTemplate jt;

	public Map<String, Object> getUserAll(String username) {
		String sql = "SELECT * FROM PPP_USUARIO U WHERE TRIM(U.NOMBRE) = ?";
		return jt.queryForMap(sql, username);
	}

}
