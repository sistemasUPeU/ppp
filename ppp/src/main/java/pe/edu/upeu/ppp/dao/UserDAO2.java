package pe.edu.upeu.ppp.dao;

import java.util.ArrayList;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.ppp.config.SpringConnection;

@Repository
public class UserDAO2 {

	 DataSource d = SpringConnection.getDataSource();
	 
	 private JdbcTemplate jt;
	 
	 public UserDAO2(DataSource dataSource) {
	        jt = new JdbcTemplate(dataSource);
	    }
	
	// metodo para comprobar que existe el usario y obtenemos el idUsuario
		public Map<String, Object> getValidateUser(String username) {
			String sql = "SELECT U.IDUSUARIO as iduser , U.NOMBRE , U.APELLIDOS , U.DNI , U.CELULAR, U.USU ,U.PASS , U.ACTIVO, U.GENERO   ,rol.IDROL\r\n" + 
					"FROM PPP_USUARIO U , PPP_USUARIO__ROL ur , PPP_ROL rol WHERE U.IDUSUARIO = ur.IDUSUARIO and rol.IDROL=UR.IDROL and TRIM(U.USU) = ?";
			return jt.queryForMap(sql, username );
		}

	
		//para listar todos los permisos y modulos que existan en la base de datos
		public Map<String, Object> getAllPermit(String id) {
			String sql ="SELECT  UR.IDUSUARIO,R.NOMBRE Rol,PA.IDPERMISOS,PA.NOMBRE Permiso,PA.IDPERMISOS_PADRE,PA.RUTA,PA.ICONO\r\n" + 
					"FROM PPP_ROL R INNER JOIN PPP_USUARIO__ROL UR ON R.IDROL=UR.IDROL INNER JOIN PPP_ROL__PERMISOS RP\r\n" + 
					"ON RP.IDROL=UR.IDROL INNER JOIN  PPP_PERMISOS PA ON (RP.IDPERMISOS=PA.IDPERMISOS or RP.IDPERMISOS=PA.IDPERMISOS_PADRE )\r\n" + 
					"WHERE UR.IDUSUARIO=?";
			return (Map<String, Object>) jt.queryForList(sql,id);
		}
		
  
	
}
