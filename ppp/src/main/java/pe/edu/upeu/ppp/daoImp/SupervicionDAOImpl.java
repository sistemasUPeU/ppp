package pe.edu.upeu.ppp.daoImp;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.ppp.dao.SupervicionDAO;

@Repository("SupervicionDAO")
public class SupervicionDAOImpl implements SupervicionDAO{
	@Autowired
	JdbcTemplate jdbcTemplate;
	String sql="";
	
	@Override
	public ArrayList<Map<String,Object>> listarPracticanteByIdRepresentante(int idrepresentante) {
		// TODO Auto-generated method stub
		try {
			sql="SELECT U.NOMBRE||' '||U.APELLIDOS alumno,A.CICLO,U.DNI,U.CELULAR,V.AREATRABAJO,V.HORARIO,V.FECHAINICIO||' - '||V.FECHAFIN FECHA,\r\n" + 
					"V.HORAINICIO||' - '||V.HORAFIN HORA,V.SUELDO,V.IDESTADO\r\n" + 
					"FROM PPP_ALUMNOS_MATRICULADO AM JOIN PPP_USUARIO U ON AM.IDALUMNO=U.IDUSUARIO \r\n" + 
					"JOIN PPP_VACANTES V ON AM.IDVACANTES=V.IDVACANTES JOIN PPP_ALUMNO A ON A.IDALUMNO=U.IDUSUARIO\r\n" + 
					"WHERE V.IDREPRESENTANTE=?";
		}catch(Exception e) {
			System.out.println("error en el metodo -> listarPracticanteByIdRepresentante()");
		}			
		
		return (ArrayList<Map<String,Object>>)jdbcTemplate.queryForList(sql,idrepresentante);
	}	
}
