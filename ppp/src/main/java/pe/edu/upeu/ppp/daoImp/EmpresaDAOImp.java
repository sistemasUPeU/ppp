package pe.edu.upeu.ppp.daoImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.ppp.dao.EmpresaDAO;

@Repository("condao")
public class EmpresaDAOImp implements EmpresaDAO {

	@Autowired
	JdbcTemplate jt;
	
	@Override
	public int convenio(int p_idperiodo, String p_razonsocial, String p_ruc, String p_direccion, String p_seguro,
			String p_actividad, String p_cargo, String p_idalumno) {
		String sql ="";
		int x = 0;
		try {
			sql = "";
			x = jt.update(sql);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return x;
	}

}
