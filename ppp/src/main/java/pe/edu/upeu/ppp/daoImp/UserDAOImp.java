package pe.edu.upeu.ppp.daoImp;


import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.ppp.dao.UserDAO;

@Repository
@Qualifier("UserDAO")
public class UserDAOImp implements UserDAO{

	@Autowired
	JdbcTemplate jt;

	// metodo para comprobar que existe el usario y obtenemos el idUsuario
	public Map<String, Object> getValidateUser(String username) {
		String sql = "SELECT U.IDUSUARIO as iduser ,  U.USU   FROM PPP_USUARIO U , PPP_USUARIO__ROL ur WHERE U.IDUSUARIO = ur.IDUSUARIO and TRIM(U.USU) = ?";
		return jt.queryForMap(sql, username );
	}

	// metodo para obtener datos escenciales del supervisorEP
	public ArrayList<Map<String, Object>> getAllSupervisor(int iduser) {
		String sql ="SELECT U.IDUSUARIO, u.NOMBRE , u.APELLIDOS ,  u.DNI ,u.GENERO , u.CELULAR , u.CORREO , u.USU , u.PASS, u.ACTIVO,  re.CODIGO , rol.IDROL, rol.NOMBRE AS ROL , rol.ACTIVO AS RACTIVO\r\n" + 
				"FROM PPP_USUARIO u , PPP_TRABAJADOR re   , PPP_ROL rol , PPP_USUARIO__ROL ur \r\n" + 
				"WHERE  rol.IDROL = ur.IDROL and u.IDUSUARIO = ur.IDUSUARIO  AND  re.IDTRABAJADOR = u.IDUSUARIO  and u.IDUSUARIO = ?"; 
		return (ArrayList<Map<String, Object>>) jt.queryForList(sql, iduser);
	}

	// metodo para obtener datos escenciales del RepresentanteEmpresa
	public ArrayList<Map<String, Object>> getAllRepresentante(int iduser) {
		String sql ="SELECT u.IDUSUARIO ,  u.NOMBRE , u.APELLIDOS , u.DNI , u.CELULAR , u.CORREO , u.USU , u.PASS, u.ACTIVO, u.GENERO, rp.CARGO ,  rol.IDROL, rol.NOMBRE AS ROL , rol.ACTIVO AS RACTIVO\r\n" + 
				"FROM PPP_USUARIO u , PPP_REPRESENTANTE rp   , PPP_ROL rol , PPP_USUARIO__ROL ur \r\n" + 
				"WHERE  rol.IDROL = ur.IDROL and u.IDUSUARIO = ur.IDUSUARIO  AND  rp.IDREPRESENTANTE = u.IDUSUARIO and u.IDUSUARIO = ?";
		return (ArrayList<Map<String, Object>>) jt.queryForList(sql,iduser);
	}

	// metodo para obtener datos escenciales del Alumno
	public ArrayList<Map<String, Object>> getAllAlumno(int iduser) {
		String sql ="SELECT u.IDUSUARIO ,  u.NOMBRE , u.APELLIDOS , u.DNI , u.CELULAR , u.CORREO , u.USU , u.PASS, u.ACTIVO,  u.GENERO, al.CICLO , al.DIRECCION , al.NACINALIDAD , al.DISTRITO , al.PROVINCIA ,al.DEPARTAMENTO ,al.ECIVIL ,al.PARTIDANACIMIENTO ,  rol.IDROL, rol.NOMBRE AS ROL\r\n" + 
				"FROM PPP_USUARIO u , PPP_ALUMNO al   , PPP_ROL rol , PPP_USUARIO__ROL ur \r\n" + 
				"WHERE  rol.IDROL = ur.IDROL and u.IDUSUARIO = ur.IDUSUARIO  AND  al.IDALUMNO = u.IDUSUARIO and u.IDUSUARIO = ?";
		return (ArrayList<Map<String, Object>>) jt.queryForList(sql, iduser);
	}

	//para listar todos los permisos y modulos que existan en la base de datos
	public ArrayList<Map<String, Object>> getAllPermit(Object id) {
		String sql ="SELECT rol.IDROL , pr.IDPERMISOS , rol.NOMBRE ,rol.ACTIVO ,pr.NOMBRE as permiso , pr.DESCRIPCION as depermiso , pr.RUTA , pr.ICONO ,pr.ACTIVO as ESPERMISO\r\n" + 
				"FROM PPP_ROL__PERMISOS RP , PPP_ROL rol , PPP_PERMISOS pr,PPP_USUARIO__ROL UR,PPP_USUARIO U \r\n" + 
				"where  RP.IDPERMISOS = pr.IDPERMISOS and RP.IDROL = rol.IDROL and U.IDUSUARIO=UR.IDUSUARIO AND rol.IDROL=UR.IDROL AND U.IDUSUARIO=? ";
		return (ArrayList<Map<String, Object>>) jt.queryForList(sql, id);
	}
	
}
