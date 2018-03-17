package pe.edu.upeu.ppp.serviceImp;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.ppp.dao.RepresentanteDAO;
import pe.edu.upeu.ppp.service.RepreService;

@Service
public class RepreServiceImp implements RepreService {

	@Autowired
	RepresentanteDAO RepreSerImp;
	
	@Override
	public int regRepresentante(String P_NOMBRE, 
		 	  String P_APELLIDOS,
		 	  String P_DNI,
		 	  String P_CELULAR,
		 	  String P_CORREO,
		 	  String P_GENERO,int idEstado,int id_Empresa,String id_Periodo,String cargo) {
		return RepreSerImp.regRepresentante(P_NOMBRE, P_APELLIDOS, P_DNI, P_CELULAR, P_CORREO, P_GENERO, idEstado, id_Empresa, id_Periodo, cargo);
	}
	@Override
	public ArrayList<Map<String, Object>> listarRepr() {
		return RepreSerImp.listarRepr();
	}

}
