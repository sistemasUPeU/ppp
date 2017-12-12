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
	int estado=0;
	String sql="";
	@Override
	public int ActualizarEvaluacion(int p_idevaluacion, int p_estado) {
		// TODO Auto-generated method stub
		try {
			sql="UPDATE PPP_EVALUACION SET ACTIVO=? WHERE IDEVALUACION=?";
			estado=jt.update(sql,p_estado,p_idevaluacion);
		} catch (Exception ee) {
			System.out.println("Error al actualizar evaluacion: "+ee);
			ee.printStackTrace();
		}
		return estado;
	}
	@Override
	public int CrearDimensiones(int p_idevaluacion, String[] nombre, String[] p_activo) {
		try {
			sql="{EXE PA_CREAR_DIMENSION(?,?,?)}";
			estado=jt.update(sql,p_idevaluacion,nombre,p_activo);
		} catch (Exception ecd) {
			System.out.println("Erroe al crear dimension en :" +ecd);
			ecd.printStackTrace();
		} 
		return estado;
	}

}
