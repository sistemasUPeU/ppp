package pe.edu.upeu.ppp.daoImp;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.ppp.dao.UserDAO;

@Repository("userdao")
public class UserDAOImp implements UserDAO{

	@Autowired
	JdbcTemplate jt;
	
	@Override
	public ArrayList<Map<String, Object>> perfil(int id) {

		String sql="SELECT  UR.IDUSUARIO,R.NOMBRE Rol,PA.IDPERMISOS,PA.MODULO as modulo,PA.IDPERMISOS_PADRE as PAPA,PA.ICONO , PA.IDRUTA,PA.DESCRIPCION\r\n" + 
				"FROM PPP_ROL R INNER JOIN PPP_USUARIO__ROL UR ON R.IDROL=UR.IDROL INNER JOIN PPP_ROL__PERMISOS RP\r\n" + 
				"ON RP.IDROL=UR.IDROL INNER JOIN  PPP_PERMISOS PA ON (RP.IDPERMISOS=PA.IDPERMISOS or RP.IDPERMISOS=PA.IDPERMISOS_PADRE )\r\n" + 
				"WHERE UR.IDUSUARIO="+id+"";
		return (ArrayList<Map<String, Object>>) jt.queryForList(sql);
	}

	@Override
	public ArrayList<Map<String, Object>> getRole(int id) {
		String sql ="select u.NOMBRE , u.APELLIDOS, r.NOMBRE as ROL\r\n" + 
				"from ppp_usuario u , PPP_USUARIO__ROL ur , PPP_ROL r \r\n" + 
				"where u.IDUSUARIO = ur.IDUSUARIO and r.IDROL = ur.IDROL and u.IDUSUARIO="+id+"";// TODO Auto-generated method stub
		return (ArrayList<Map<String, Object>>) jt.queryForList(sql);
	}

	
	
}
