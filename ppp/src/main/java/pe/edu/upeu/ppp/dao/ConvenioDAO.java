package pe.edu.upeu.ppp.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import pe.edu.upeu.ppp.config.SpringConnection;

public class ConvenioDAO {

	//conexion
	DataSource d = SpringConnection.getDataSource();
	 
	 private JdbcTemplate jt;
	 
	 public ConvenioDAO(DataSource dataSource) {
	        jt = new JdbcTemplate(dataSource);
	    }
	//end
	
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
				x=jt.update(sql);
			} catch (Exception e) {
				// TODO: handle exception
			}
       return x;
    }
}
