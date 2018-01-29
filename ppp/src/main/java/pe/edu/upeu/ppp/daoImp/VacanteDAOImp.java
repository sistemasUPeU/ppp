package pe.edu.upeu.ppp.daoImp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.ppp.dao.VacanteDAO;
@Repository("VacanteDAO")
public class VacanteDAOImp implements VacanteDAO {
	
	String sql;
	@Autowired
	JdbcTemplate jt;
	@Override
	public ArrayList<Map<String, Object>> listarVacantes(int id) {
		try {
			sql="SELECT V.Idvacantes , P.Periodo as Semestre , Em.Razonsocial ,Em.Ruc ,Em.Direccion, U.Apellidos ||', '|| U.Nombre as Representante ,U.Celular , U.Dni, U.Correo, V.Horario , V.Fechainicio || ' - ' || V.Fechafin AS Periodo, V.Horainicio || ' - ' || V.Horafin as Hora , V.Sueldo , V.Areatrabajo FROM PPP_VACANTES V , PPP_EMPRESA EM , PPP_PERIODO P , PPP_REPRESENTANTE RP , Ppp_Usuario u WHERE Em.Idempresa = Rp.Idempresa and V.Idperiodo =  P.Idperiodo and V.Idempresa = Em.Idempresa and Rp.Idrepresentante = U.Idusuario and  V.IDUSUARIO = ? AND V.Idestado = 22 ";
		} catch (Exception ev) {
			System.out.println("No lista Vacantes, error:_"+ev);
		}
		return (ArrayList<Map<String, Object>>) jt.queryForList(sql, id);	
	}


	@Override
	public int NewVacante(String P_IDPERIODO, String P_IDREPRESENTANTE, String P_AREATRABAJO, String P_CANTIDAD,
			String P_HORARIO, String P_FECHAINICIO, String P_FECHAFIN, String P_HORAINICIO, String P_HORAFIN,
			String P_SUELDO, String P_IDLINEASP, String P_IDFOLDERPRACTICA, String P_IDTRABAJADOR, String P_IDALUMNO,
			String P_IDROL, String P_CICLO, String P_TIPOPRACTICA, String P_OBSERVACIONES) {
		int x=0;
		try {
			sql="CALL PA_REG_EMPRESA_P3(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			x=jt.update(sql,P_IDPERIODO,P_IDREPRESENTANTE,P_AREATRABAJO,P_CANTIDAD,P_HORARIO,P_FECHAINICIO,P_FECHAFIN,P_HORAINICIO,P_SUELDO,P_IDLINEASP,P_IDFOLDERPRACTICA,P_IDTRABAJADOR,P_IDALUMNO,P_IDROL,P_CICLO,P_TIPOPRACTICA,P_OBSERVACIONES);
		} catch (Exception e) {
			System.out.println("New Vacante error : "+e);
		}
		
		return x;
	}


	@Override
	public int notifyVaca(int id) {
		int a = 0;
		sql = "";
		List<Map<String, Object>> oa= jt.queryForList(sql, id);;
		 
		if(oa.isEmpty()) {
			a =1;
		}else {
			a = 0; 
		}
		return a;
	}


	@Override
	public ArrayList<Map<String, Object>> ListarHistoria(int id) {
		try {
			sql="SELECT Fp.Idfolderpractica, V.Idvacantes, Em.Razonsocial ||' -  RUC: '|| Em.Ruc AS EMPRESA ,Em.Direccion, U.Apellidos ||', '|| U.Nombre as Representante ,V.Fechainicio || ' - ' || V.Fechafin AS PLAZO ,  PR.Periodo as Semestre , Al.Ciclo , F.Nombre ||' - '|| Ec.Nombre ESCUELA , Es.Descripcion\r\n" + 
					"FROM Ppp_Folderpractica fp , PPP_VACANTES V , Ppp_Periodo PR , Ppp_Alumno AL , Ppp_Representante RE , Ppp_Estado ES , Ppp_Escuela EC , Ppp_Usuario U , PPP_EMPRESA EM , Ppp_Facultad F WHERE Fp.Idvacantes = V.Idvacantes AND Fp.Idperiodo = Pr.Idperiodo AND Fp.Idalumno = AL.Idalumno AND Fp.Idrepresentante = Re.Idrepresentante AND Fp.Idestado = Es.Idestado AND U.Idusuario = Al.Idalumno AND \r\n" + 
					"Al.Idescuela = Ec.Idescuela AND Em.Idempresa = RE.Idempresa AND Ec.Idfacultad = F.Idfacultad AND Al.Idalumno = ?";
		} catch (Exception ev) {
			System.out.println("No  ListarHistoria, error:_"+ev);
		}
		return (ArrayList<Map<String, Object>>) jt.queryForList(sql, id);
	}

}
