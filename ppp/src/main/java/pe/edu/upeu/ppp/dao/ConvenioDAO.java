package pe.edu.upeu.ppp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class ConvenioDAO {

	@Autowired
	JdbcTemplate j;
	String sql="";
	public int convenio()
    { 	
    	int x=0;
    		try {
				sql="";
				x=j.update(sql);
			} catch (Exception e) {
				// TODO: handle exception
			}
       return x;
    }
}
