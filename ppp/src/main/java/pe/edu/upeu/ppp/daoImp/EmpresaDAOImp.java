package pe.edu.upeu.ppp.daoImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.ppp.dao.EmpresaDAO;

@Repository("empredao")
public class EmpresaDAOImp implements EmpresaDAO {

	@Autowired
	JdbcTemplate jt;
	
	@Override
	public int RegEmpresa(String P_NOMBRE, 
					 	  String P_APELLIDOS,
					 	  String P_DNI,
					 	  String P_CELULAR,
					 	  String P_CORREO,
					 	  String P_GENERO,
					 	  String P_CARGO,
					 	  
					 	  String P_IDPERIODO,
					 	  int p_idalumno,
					 	  
					 	  String P_RAZONSOCIAL,
					 	  String P_RUC,
					 	  String P_DIRECCION,
					 	  String P_ACTIVIDAD,
					 	  int p_IdEstado) {
		
		String sql ="";
		int x = 0;
		try {
			sql = "{CALL PA_REGISTRAR_EMPRESA(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
			x = jt.update(sql,P_NOMBRE , P_APELLIDOS , P_DNI , P_CELULAR , P_CORREO , P_GENERO,
					 P_CARGO, P_IDPERIODO ,p_idalumno, P_RAZONSOCIAL, P_RUC , P_DIRECCION , P_ACTIVIDAD,p_IdEstado);
		} catch (Exception e) {
			System.out.println("error en RegEmpresa dao implement:" + e);
		}
		return x;
	}

	@Override
	public List<Map<String, Object>> ListSeguro() {
		String sql ="SELECT U.IDSEGUROS, U.NOMBRE AS SEGURO FROM PPP_SEGUROS U";
		return jt.queryForList(sql);
	}

	@Override
	public List<Map<String, Object>> ListLineas() {
		String sql ="SELECT L.Idlineasp , L.Nombre as LINEA FROM PPP_LINEASP L";
		return jt.queryForList(sql);
	}

}
