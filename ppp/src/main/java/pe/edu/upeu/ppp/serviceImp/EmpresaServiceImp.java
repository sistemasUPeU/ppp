package pe.edu.upeu.ppp.serviceImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.ppp.dao.EmpresaDAO;
import pe.edu.upeu.ppp.service.EmpresaService;

@Service
public class EmpresaServiceImp implements EmpresaService{

	@Autowired
	EmpresaDAO empredao;

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
		
		
		return empredao.RegEmpresa(P_NOMBRE,P_APELLIDOS,P_DNI,
			 	   P_CELULAR,P_CORREO,P_GENERO,P_CARGO,P_IDPERIODO,	 p_idalumno,		 	  
			 	  P_RAZONSOCIAL,P_RUC,P_DIRECCION,P_ACTIVIDAD,p_IdEstado);
	}

	@Override
	public List<Map<String, Object>> ListSeguro() {
		return empredao.ListSeguro();
	}

	@Override
	public List<Map<String, Object>> ListLineas() {
		return empredao.ListLineas();
	}
}
