package pe.edu.upeu.ppp.daoImp;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.ppp.dao.alumnoDAO;

@Repository("alumnodao")
public class AlumnoDAOImp implements alumnoDAO {
 
	String sql;
	
	@Autowired
	JdbcTemplate jt;


	@Override
	public ArrayList<Map<String, Object>> listaralumno(int id) {
		// TODO Auto-generated method stub
		try {
			 sql="select us.nombre,us.apellidos ,us.DNI,al.CODIGO, us.CELULAR, us.GENERO,al.ECIVIL,us.CORREO\r\n" + 
					"from ppp_alumno al , ppp_usuario us \r\n" + 
					"where us.IDUSUARIO=al.idalumno\r\n" + 
					"and al.IDALUMNO =?" ;
		} catch (Exception ad) {
			// TODO: handle exception
			System.out.println("No lista alumnos, error:_"+ad);
		}

		return (ArrayList<Map<String,Object>>) jt.queryForList(sql, id);
}

}