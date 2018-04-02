package pe.edu.upeu.ppp.daoImp;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.ppp.dao.PeriodoHorasDAO;

@Repository("PeriodoHorasDAO")
public class PeriodoHorasDAOImp implements PeriodoHorasDAO{
	
	String sql;
	int filasAfectadas=0;
	@Autowired
	JdbcTemplate jt;
	
	@Override
	public ArrayList<ArrayList<Map<String, Object>>> listaPeriodoHoras() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Map<String, Object>> periodoHoras() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int savePeriodoHoras(int cicloIzquierda, int cicloDerecha,int idPlanAcademico, int horas) {
		try {
			sql="INSERT INTO PPP_PLAN_PERIODOHORAS VALUES(?,?,?,?,1)";
			filasAfectadas=jt.update(sql,cicloIzquierda,cicloDerecha,idPlanAcademico,horas);
		}catch (Exception e) {
			System.out.println("error en el metodo-> savePeriodoHoras()");
		}		
		return filasAfectadas;
	}

}