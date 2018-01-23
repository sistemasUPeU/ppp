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
	public int RegEmpresa(String P_NOMBRE, String P_APELLIDOS, String P_DNI, String P_CELULAR, String P_CORREO,
			String P_GENERO,  String P_CARGO,  String P_IDPERIODO, String P_RAZONSOCIAL, String P_RUC, String P_DIRECCION,
			String P_SEGURO, String P_ACTIVIDAD, String P_IDALUMNO, String P_IDROL, String P_CICLO , String P_AREAWK ,String P_CANTIDAD ,
			String P_HORARIO , String P_FECHA_INI , String P_FECHA_FIN , String P_H_INI , String P_H_FIN , String P_SUELDO , String P_idLinea ) {
		
		
		return empredao.RegEmpresa(P_NOMBRE, P_APELLIDOS, P_DNI, P_CELULAR,
								P_CORREO, P_GENERO, P_CARGO, P_IDPERIODO, P_RAZONSOCIAL, P_RUC,
								P_DIRECCION, P_SEGURO, P_ACTIVIDAD, P_IDALUMNO,
								P_IDROL, P_CICLO , P_AREAWK , P_CANTIDAD , P_HORARIO, P_FECHA_INI ,P_FECHA_FIN, P_H_INI ,
								P_H_FIN , P_SUELDO , P_idLinea );
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
