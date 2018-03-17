package pe.edu.upeu.ppp.daoImp;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import pe.edu.upeu.ppp.dao.RepresentanteDAO;

@Repository("RepreSerImp")
public class RepresentanteDAOImp implements RepresentanteDAO {

	@Autowired
	JdbcTemplate jt;

	@Override 
	public int regRepresentante(String P_NOMBRE, 
		 	  String P_APELLIDOS,
		 	  String P_DNI,
		 	  String P_CELULAR,
		 	  String P_CORREO,
		 	  String P_GENERO,int idEstado,int id_Empresa,String id_Periodo,String cargo){
		String sql ="";
		int x = 0;
		try {
			sql = "{CALL PA_NUEVO_REPRESEN(?,?,?,?,?,?,?,?,?,?)}";
			x = jt.update(sql , id_Empresa,id_Periodo,cargo,P_NOMBRE,P_APELLIDOS,P_DNI,P_CELULAR,P_CORREO,P_GENERO
					 ,idEstado);
		} catch (Exception e) {
			System.out.println("error en RegRepresentante dao implement:" + e);
		}
		return x;
		
	}
	
	@Override
	public ArrayList<Map<String, Object>> listarRepr() {
		// TODO Auto-generated method stub
		return (ArrayList<Map<String, Object>>) jt.queryForList("SELECT * FROM PPP_REPRESENTANTE");
	}
	
	

}
