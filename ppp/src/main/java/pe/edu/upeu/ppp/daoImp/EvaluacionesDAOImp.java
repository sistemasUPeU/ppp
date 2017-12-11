package pe.edu.upeu.ppp.daoImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
//By Kevin Mogollon//
import pe.edu.upeu.ppp.dao.EvaluacionesDAO;
@Repository("EvaluacionesDAO")
public class EvaluacionesDAOImp implements EvaluacionesDAO {
	@Autowired
	JdbcTemplate jt;
	int x=0;
	String sql="";
	@Override
	public int ActualizarEvaluacion(int p_idevaluacion, int p_estado) {
		// TODO Auto-generated method stub
		try {
			sql="UPDATE PPP_EVALUACION SET ACTIVO=? WHERE IDEVALUACION=?";
			x=jt.update(sql,p_estado,p_idevaluacion);
		} catch (Exception ee) {
			System.out.println("Error al actualizar evaluacion: "+ee);
			ee.getStackTrace();
		}
		return x;
	}

}
