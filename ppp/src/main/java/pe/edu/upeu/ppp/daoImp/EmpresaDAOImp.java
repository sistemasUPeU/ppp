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
		 	  
		 	  String P_RAZONSOCIAL,
		 	  String P_RUC,
		 	  String P_DIRECCION,
		 	  String P_SEGURO,
		 	  String P_ACTIVIDAD,	  
		 	 
		 	  String P_IDALUMNO,
		 	  String P_IDROL,
		 	  String P_CICLO,
		 	  
		 	  String P_AREAWK,
		 	  String P_CANTIDAD,
		 	  String P_HORARIO,
		 	  String P_FECHA_INI,
		 	  String P_FECHA_FIN,
		 	  String P_H_INI,
		 	  String P_H_FIN,
		 	  String P_SUELDO,
		 	  String P_idLinea) {
		
		String sql ="";
		int x = 0;
		try {
			sql = "{EXE PA_REGS_EMPRESA_P1_AND_P2(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
			x = jt.update(sql , P_NOMBRE , P_APELLIDOS , P_DNI , P_CELULAR , P_CORREO , P_GENERO,
					 P_CARGO, P_IDPERIODO , P_RAZONSOCIAL, P_RUC , P_DIRECCION , P_SEGURO, P_ACTIVIDAD,
					P_IDALUMNO  , P_IDROL, P_CICLO , P_AREAWK, P_CANTIDAD ,P_HORARIO , P_FECHA_INI , P_FECHA_FIN , P_H_INI , P_H_FIN,
					P_SUELDO , P_idLinea );
		} catch (Exception e) {
			System.out.println("error en comvenio dao implement:" + e);
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
