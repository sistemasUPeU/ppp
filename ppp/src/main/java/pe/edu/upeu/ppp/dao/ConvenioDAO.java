package pe.edu.upeu.ppp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class ConvenioDAO {

	@Autowired
	JdbcTemplate j;
	String sql="";
	public int convenio(int p_idperiodo,
			            String p_razonsocial,
			            String p_ruc,
			            String p_direccion,
			            String p_seguro,
			            String p_actividad,
			            String p_cargo,
			            String p_idalumno)
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
