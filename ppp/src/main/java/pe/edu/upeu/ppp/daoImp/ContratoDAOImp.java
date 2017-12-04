package pe.edu.upeu.ppp.daoImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.ppp.dao.contratoDAO;

@Repository("contratodao")
public class ContratoDAOImp implements contratoDAO{

	@Autowired
	JdbcTemplate jt;
	
	@Override
	public List<Map<String, Object>> listarRepr() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int convenio(String P_idalumno, String P_IDROL, 
						String P_CICLO, String p_idempresa, String p_idescuela,
						String P_IDPERIODO, String P_RUTA, String p_FECHAINICIO, 
						String P_FECHAFIN, String P_IDVACANTES) {
		String sql ="";
		int x = 0;
		try {
			sql = "{EXE PA_REG_EMPRESA_P2(?,?,?,?,?,?,?,?,?,?)}";
			x = jt.update(sql, P_idalumno, P_IDROL , P_CICLO , p_idempresa ,p_idescuela , P_IDPERIODO , P_RUTA, 
					p_FECHAINICIO,P_FECHAFIN , P_IDVACANTES );
		} catch (Exception e) {
			System.out.println("error en comvenio dao implement:" + e);
		}
		return x;
	}

}
