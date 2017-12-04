package pe.edu.upeu.ppp.serviceImp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.ppp.dao.contratoDAO;
import pe.edu.upeu.ppp.service.ContratoService;

@Service
public class ContratoServiceImpl implements ContratoService {

	@Autowired
	contratoDAO contratodao;
	
	@Override
	public List<Map<String, Object>> listarRepr() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int convenio(String P_idalumno, String P_IDROL, String P_CICLO, String p_idempresa, String p_idescuela,
			String P_IDPERIODO, String P_RUTA, String p_FECHAINICIO, String P_FECHAFIN, String P_IDVACANTES) {
		// TODO Auto-generated method stub
		return contratodao.convenio(P_idalumno, P_IDROL, P_CICLO, p_idempresa, p_idescuela,
									P_IDPERIODO, P_RUTA, p_FECHAINICIO, P_FECHAFIN, P_IDVACANTES);
	}

}
