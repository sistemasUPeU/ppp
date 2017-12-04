package pe.edu.upeu.ppp.daoImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import pe.edu.upeu.ppp.dao.VacanteDAO;

public class VacanteDAOImp implements VacanteDAO {
	String sql;
	@Autowired
	JdbcTemplate jt;
	@Override
	public List<Map<String, Object>> listarVacantes() {
		try {
			sql="select p.FECHAINICIO inicio,p.FECHAFIN fin,p.tipo tipo,r.cargo cargo,e.nombre estado,v.AREATRABAJO area,v.cantidad cantidad,v.horario horario,v.horainicio horainicio,v.horafin horafin,v.sueldo sueldo FROM PPP_VACANTES v,PPP_PERIODO p,PPP_REPRESENTANTE r,PPP_ESTADO e";
		} catch (Exception ev) {
			System.out.println("No lista Vacantes, error:_"+ev);
		}
		return jt.queryForList(sql);
	}

	

	@Override
	public int NewVacante(String P_IDPERIODO, String P_IDREPRESENTANTE, String P_AREATRABAJO, String P_CANTIDAD,
			String P_HORARIO, String P_FECHAINICIO, String P_FECHAFIN, String P_HORAINICIO, String P_HORAFIN,
			String P_SUELDO, String P_IDESTADO) {
		
		int x=0;
		try {
			sql="INSERT INTO PPP_VACANTES(IDPERIODO,IDREPRESENTANTE,AREATRABAJO,CANTIDAD,HORARIO,FECHAINICIO,FECHAFIN,HORAINICIO,HORAFIN,SUELDO,IDESTADO)";
			x=jt.update(sql,P_IDPERIODO,P_IDREPRESENTANTE,P_AREATRABAJO,P_CANTIDAD,P_HORARIO,P_FECHAINICIO,P_FECHAFIN,P_HORAINICIO,P_SUELDO,P_IDESTADO);
		} catch (Exception e) {
			System.out.println("New Vacante error : "+e);
		}
		
		return x;
		
	}

}
