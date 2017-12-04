package pe.edu.upeu.ppp.serviceImp;

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
			String P_GENERO, String P_IDPERIODO, String P_RAZONSOCIAL, String P_RUC, String P_DIRECCION,
			String P_SEGURO, String P_ACTIVIDAD, String P_CARGO, String P_IDALUMNO, String P_IDROL, String P_CICLO) {
		
		
		return empredao.RegEmpresa(P_NOMBRE, P_APELLIDOS, P_DNI, P_CELULAR,
								P_CORREO, P_GENERO, P_IDPERIODO, P_RAZONSOCIAL, P_RUC,
								P_DIRECCION, P_SEGURO, P_ACTIVIDAD, P_CARGO, P_IDALUMNO,
								P_IDROL, P_CICLO);
	}
}
