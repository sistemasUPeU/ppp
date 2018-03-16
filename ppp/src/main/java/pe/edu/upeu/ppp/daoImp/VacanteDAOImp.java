package pe.edu.upeu.ppp.daoImp;

import java.util.ArrayList;
import java.util.logging.Logger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.ppp.dao.VacanteDAO;
@Repository("VacanteDAO")
public class VacanteDAOImp implements VacanteDAO {
	
	private static Logger LOGGER = Logger.getLogger("VacanteDAOImp");
	
	String sql;
	int filasAfectadas;
	@Autowired
	JdbcTemplate jt;
	@Override
	public ArrayList<Map<String, Object>> listarVacantes(int id) {
		try {
			sql="SELECT VC.IDVACANTES, VC.IDPERIODO , EM.RAZONSOCIAL , EM.DIRECCION , RP.IDREPRESENTANTE , US.NOMBRE ||' '|| US.APELLIDOS as REPRESENTANTE , US.CELULAR , US.CORREO,\r\n" + 
					"VC.AREATRABAJO , VC.FECHAINICIO ||' - '|| VC.FECHAFIN AS PERIODO, VC.HORAINICIO ||' A '|| VC.HORAFIN AS HORARIO , VC.SUELDO , VC.NCUPOS , VC.IDESTADO\r\n" + 
					"FROM PPP_VACANTES VC , PPP_PERIODO PR ,  PPP_REPRESENTANTE RP , PPP_ESTADO ES , PPP_USUARIO US , PPP_CONVENIO CN , PPP_EMPRESA EM\r\n" + 
					"WHERE EM.IDEMPRESA = RP.IDEMPRESA AND CN.IDCONVENIO = VC.IDCONVENIO and  PR.IDPERIODO = VC.IDPERIODO  AND RP.IDREPRESENTANTE = VC.IDREPRESENTANTE AND VC.IDESTADO = ES.IDESTADO and  VC.NCUPOS > 0  \r\n" + 
					"AND US.IDUSUARIO = RP.IDREPRESENTANTE and CN.IDESCUELA = ?";
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
	
	
	@Override
	public ArrayList<Map<String, Object>> GetAlumnos(int id) {
		try {
			sql="select AL.IDALUMNO , AL.CODIGO , AL.CICLO ,US.DNI , US.GENERO, US.NOMBRE ||' '|| US.APELLIDOS AS NOMBRE , US.CELULAR, US.CORREO , AL.GITHUB, AL.FACEBOOK , CP.NOMBRE AS CURSO\r\n" + 
					"from PPP_ALUMNOS_MATRICULADO AM , PPP_ALUMNO AL , PPP_USUARIO US , PPP_CURSO_ASIGNADO CA , PPP_CURSO_PRACTICA CP\r\n" + 
					"WHERE  AM.IDCURSOASIGNADO = CA.IDCURSOASIGNADO AND CA.IDCURSOPRACTICA = CP.IDCURSOPRACTICA\r\n" + 
					"AND AM.IDALUMNO = AL.IDALUMNO AND AL.IDALUMNO = US.IDUSUARIO AND \r\n" + 
					"AL.IDALUMNO IN (SELECT ALU.IDALUMNO FROM PPP_ESCUELA ES , PPP_ALUMNO ALU, PPP_PLAN_ACADEMICO PA WHERE ALU.IDPLANACADEMICO = PA.IDPLANACADEMICO\r\n" + 
					"AND PA.IDESCUELA = ES.IDESCUELA AND ES.IDESCUELA = "+id+") and AM.IDVACANTES is null  ";
		} catch (Exception ev) {
			System.out.println("No GetAlumnos, error:_"+ev);
		}
		return (ArrayList<Map<String, Object>>) jt.queryForList(sql);	
	}
	

	@Override
	public List<Map<String, Object>> obtenerEscuela_LineaP(int idrepresentante) {
		// TODO Auto-generated method stub
		sql="SELECT R.IDEMPRESA,C.IDCONVENIO CONVENIO,C.FECHAINICIO,C.FECHAFIN,E.NOMBRE ESCUELA,l.IDLINEASP,L.NOMBRE LINEAP,L.DESCRIPCION INFO FROM PPP_ESCUELA E JOIN PPP_CONVENIO C ON E.IDESCUELA=C.IDESCUELA\r\n" + 
				" JOIN PPP_REPRESENTANTE R ON C.IDREPRESENTANTE=R.IDREPRESENTANTE JOIN PPP_LINEASP L ON L.IDESCUELA=E.IDESCUELA\r\n" + 
				" WHERE C.IDESTADO=1 AND R.IDEMPRESA=(select R2.IDEMPRESA FROM PPP_REPRESENTANTE R2 WHERE R2.IDREPRESENTANTE=?)";
		return jt.queryForList(sql,idrepresentante);
	}
	

	@Override
	public ArrayList<Map<String, Object>> NotifyVacante(int id) {
		try {
			sql="SELECT EM.RAZONSOCIAL , EM.RUC , EM.DIRECCION , \n" + 
					"USU.NOMBRE ||' '|| USU.APELLIDOS AS REPRESENTANTE ,USU.CELULAR, USU.DNI, USU.CORREO, RP.CARGO ,\n" + 
					"V.FECHAINICIO ||' -  '|| V.FECHAFIN AS PERIODO , V.HORAINICIO||' a '|| V.HORAFIN AS HORA , V.HORARIO , V.SUELDO , V.AREATRABAJO, S.NOMBRE as ESTADO\n" + 
					"FROM PPP_ALUMNOS_MATRICULADO AM  \n" + 
					"JOIN PPP_VACANTES V ON AM.IDVACANTES = V.IDVACANTES \n" + 
					"JOIN PPP_REPRESENTANTE RP ON RP.IDREPRESENTANTE = V.IDREPRESENTANTE\n" + 
					"JOIN PPP_EMPRESA EM ON EM.IDEMPRESA = RP.IDEMPRESA\n" + 
					"JOIN PPP_USUARIO USU ON RP.IDREPRESENTANTE = USU.IDUSUARIO\n" + 
					"JOIN PPP_ESTADO S ON V.IDESTADO = S.IDESTADO\n" + 
					"where AM.IDALUMNO = ?";
		} catch (Exception ev) {
			System.out.println("No GetAlumnos, error:_"+ev);
		}
		return (ArrayList<Map<String, Object>>) jt.queryForList(sql, id);
	}

	
	
	
	
	//--- insert method
	@Override
	public String AginacionIn(int idalumno, int idvacante) {
		String resul ="";
		try {
			System.out.println("method AginacionIn:"+idalumno+" , "+ idvacante);
			 SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jt).withProcedureName("pa_AsignarAlumno");
			 SqlParameterSource in = new MapSqlParameterSource().addValue("ID_ALUMNO", idalumno).addValue("ID_VACANTE", idvacante);
			 resul = simpleJdbcCall.executeObject(String.class, in);
		} catch (Exception ev) {
			System.out.println("No  AginacionIn, error:_"+ev);
			 LOGGER.info("No  AginacionIn, error:_" + ev);
		}
		System.out.println("result , AginacionIn" + resul);
		return resul;

	}

	@Override	
	public int SaveVacante(ArrayList<String> lineasp,String idPeriodo, int idConvenio, int idRepresentante, String areaTrabajo, String horario,
			String fechaInicio, String fechaFin, String horaInicio, String horaFin, int sueldo, int nCupos,
			int idEstado) {
		// TODO Auto-generated method stub
		int p_out_idvacante=0;
		try {			
//			sql="{CALL PA_NUEVA_VACANTE(?,?,?,?,?,?,?,?,?,?,?,?)}";								
			
			SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jt)
		            .withProcedureName("PA_NUEVA_VACANTE");         
				SqlParameterSource in =new MapSqlParameterSource()
						.addValue("periodo",idPeriodo)
						.addValue("convenio", idConvenio)
						.addValue("representante", idRepresentante)
						.addValue("areatrabajo", areaTrabajo)
						.addValue("horario", horario)
						.addValue("fechainicio", fechaInicio+" 00:00:00")
						.addValue("fechafin", fechaFin+" 00:00:00")
						.addValue("horainicio",horaInicio)
						.addValue("horafin", horaFin)
						.addValue("sueldo", sueldo)
						.addValue("ncupos", nCupos)
						.addValue("idestado",idEstado);

				int respuesta_procedure=Integer.parseInt(simpleJdbcCall.executeObject(String.class ,in));
			
			p_out_idvacante=respuesta_procedure;
			System.out.println("la respuesta es-> "+respuesta_procedure);
			
//			filasAfectadas=jt.update(sql,idPeriodo,idConvenio,idRepresentante,areaTrabajo,horario,
				//fechaInicio,fechaFin,horaInicio,horaFin,sueldo,nCupos,idEstado);
			
			sql="INSERT INTO ppp_vacantes__lineasp VALUES(?,?)";			
			if(lineasp.size()>0) {				
				for(String lineap : lineasp) {
					System.out.println("En el FOR");
					jt.update(sql,Integer.valueOf(lineap),p_out_idvacante);
				}								
			}
		}catch(Exception e) {
			System.out.println(e+" Error yer_method -> SaveVacante");
		}		
		return p_out_idvacante;
	}
		
	
	@Override
	public String createFolder(String rutapdf, String rutafolder, String titulo, String observacion, int idalumno,
			int idrol) {
		
		String outCf ="";
		try {
			 SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(jt).withProcedureName("pa_createFolder");
			 SqlParameterSource in = new MapSqlParameterSource().addValue("V_rutaPDF", rutapdf)
					                                            .addValue("v_rutaFolder", rutafolder)
					                                            .addValue("V_TITULO", titulo)
					                                            .addValue("V_OBSERVACIONES", observacion)
					                                            .addValue("v_idAlumno", idalumno)
					                                            .addValue("ID_rol", idrol);
			 outCf = simpleJdbcCall.executeObject(String.class, in);
		} catch (Exception ev) {
			System.out.println("No  AginacionIn, error:_"+ev);
			 LOGGER.info("No  AginacionIn, error:_" + ev);
		}
		System.out.println(outCf);
		return outCf;
		
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
