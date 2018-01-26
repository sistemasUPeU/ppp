package pe.edu.upeu.ppp.serviceImp;

import java.util.ArrayList;
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
	public ArrayList<Map<String, Object>> listarVacantes(int id) {
		// TODO Auto-generated method stub
		return vacanteDAO.listarVacantes(id);
	}

	@Override
	public int NewVacante(String P_IDPERIODO, String P_IDREPRESENTANTE, String P_AREATRABAJO, String P_CANTIDAD,
			String P_HORARIO, String P_FECHAINICIO, String P_FECHAFIN, String P_HORAINICIO, String P_HORAFIN,
			String P_SUELDO, String P_IDLINEASP, String P_IDFOLDERPRACTICA, String P_IDTRABAJADOR, String P_IDALUMNO,
			String P_IDROL, String P_CICLO, String P_TIPOPRACTICA, String P_OBSERVACIONES) {
		
		return vacanteDAO.NewVacante(P_IDPERIODO, P_IDREPRESENTANTE, P_AREATRABAJO, P_CANTIDAD, P_HORARIO, P_FECHAINICIO, P_FECHAFIN, P_HORAINICIO, P_HORAFIN, P_SUELDO, P_IDLINEASP, P_IDFOLDERPRACTICA, P_IDTRABAJADOR, P_IDALUMNO, P_IDROL, P_CICLO, P_TIPOPRACTICA, P_OBSERVACIONES);
	}

	@Override
	public int notifyVaca(int id) {
		return vacanteDAO.notifyVaca(id);
	}

}
