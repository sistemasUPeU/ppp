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
			sql="SELECT VC.IDVACANTES, VC.IDPERIODO , EM.RAZONSOCIAL , EM.DIRECCION , RP.IDREPRESENTANTE , US.NOMBRE ||' '|| US.APELLIDOS as REPRESENTANTE , US.CELULAR , US.CORREO, \r\n" + 
					"VC.AREATRABAJO , VC.FECHAINICIO ||' - '|| VC.FECHAFIN AS PERIODO, VC.HORAINICIO ||' A '|| VC.HORAFIN AS HORARIO , VC.SUELDO , VC.NCUPOS , VC.IDESTADO\r\n" + 
					"FROM PPP_VACANTES VC , PPP_PERIODO PR , PPP_EMPRESA EM , PPP_REPRESENTANTE RP , PPP_ESTADO ES , PPP_USUARIO US , PPP_ESCUELA sc\r\n" + 
					"WHERE EM.IDEMPRESA = VC.IDEMPRESA AND sc.IDESCUELA = VC.IDESCUELA and  PR.IDPERIODO = VC.IDPERIODO  AND RP.IDREPRESENTANTE = VC.IDREPRESENTANTE AND VC.IDESTADO = ES.IDESTADO\r\n" + 
					"AND US.IDUSUARIO = RP.IDREPRESENTANTE and sc.IDESCUELA = ?";
		} catch (Exception ev) {
			System.out.println("No lista Vacantes, error:_"+ev);
		}
		return (ArrayList<Map<String, Object>>) jt.queryForList(sql, id);	
	}

	@Override
	public ArrayList<Map<String, Object>> getTeacher(int id) {
		try {
			sql="select pr.IDESCUELA , pr.CODIGO , pr.GRADO from PPP_PROFESOR pr where pr.IDPROFESOR = ?";
		} catch (Exception ev) {
			System.out.println("No getTeacher, error:_"+ev);
		}
		return (ArrayList<Map<String, Object>>) jt.queryForList(sql, id);	
	}
	
	//por cambiar


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


	@Override
	public ArrayList<Map<String, Object>> CargaCombox1() {
		try {
			sql="select Idempresa , Razonsocial from ppp_empresa ";
		} catch (Exception ev) {
			System.out.println("No  CargaCombox1, error:_"+ev);
		}
		return (ArrayList<Map<String, Object>>) jt.queryForList(sql);
	}


	@Override
	public ArrayList<Map<String, Object>> CargaCombox1(int id) {
		try {
			sql="select Rp.Idrepresentante , U.Nombre ||' , '|| U.Apellidos as Repre from ppp_representante rp , Ppp_Usuario u , ppp_empresa em where Rp.Idempresa = Em.Idempresa and Rp.Idrepresentante = U.Idusuario and Em.Idempresa = ?";
		} catch (Exception ev) {
			System.out.println("No  CargaCombox1 id, error:_"+ev);
		}
		return (ArrayList<Map<String, Object>>) jt.queryForList(sql, id);
	}


	

}
