package pe.edu.upeu.ppp.serviceImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.ppp.dao.EmpresaDAO;
import pe.edu.upeu.ppp.dao.VacanteDAO;
import pe.edu.upeu.ppp.service.VacanteService;
@Service
public class VacanteServiceImpl implements VacanteService {
	@Autowired
	VacanteDAO vacanteDAO;

	@Override
	public List<Map<String, Object>> listarVacantes() {
		// TODO Auto-generated method stub
		return vacanteDAO.listarVacantes();
	}

	@Override
	public int NewVacante(String P_IDPERIODO, String P_IDREPRESENTANTE, String P_AREATRABAJO, String P_CANTIDAD,
			String P_HORARIO, String P_FECHAINICIO, String P_FECHAFIN, String P_HORAINICIO, String P_HORAFIN,
			String P_SUELDO, String P_IDESTADO) {
		// TODO Auto-generated method stub
		return vacanteDAO.NewVacante(P_IDPERIODO, P_IDREPRESENTANTE, P_AREATRABAJO, P_CANTIDAD, P_HORARIO, P_FECHAINICIO, P_FECHAFIN, P_HORAINICIO, P_HORAFIN, P_SUELDO, P_IDESTADO);
	}

}
