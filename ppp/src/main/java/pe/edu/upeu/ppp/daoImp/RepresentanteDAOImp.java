package pe.edu.upeu.ppp.daoImp;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.ppp.dao.RepresentanteDAO;

@Repository("RepresentanteDAO")
public class RepresentanteDAOImp implements RepresentanteDAO {

	@Autowired
	JdbcTemplate jt;

	
	@Override
	public ArrayList<Map<String, Object>> listarRepr() {
		// TODO Auto-generated method stub
		return (ArrayList<Map<String, Object>>) jt.queryForList("SELECT * FROM PPP_REPRESENTANTE");
	}
	
	

}
