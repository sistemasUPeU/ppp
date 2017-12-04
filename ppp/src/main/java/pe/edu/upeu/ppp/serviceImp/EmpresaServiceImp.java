package pe.edu.upeu.ppp.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.ppp.dao.EmpresaDAO;
import pe.edu.upeu.ppp.service.ConvenioService;

@Service
public class EmpresaServiceImp implements ConvenioService{

	@Autowired
	EmpresaDAO condao;
	
	@Override
	public int convenio(int p_idperiodo, String p_razonsocial, String p_ruc, String p_direccion, String p_seguro,
			String p_actividad, String p_cargo, String p_idalumno) {
		
		return condao.convenio(p_idperiodo, p_razonsocial, p_ruc, p_direccion, p_seguro, p_actividad, p_cargo, p_idalumno);
	}

}
