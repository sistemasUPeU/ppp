package pe.edu.upeu.ppp.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.ppp.dao.EvaluacionesDAO;
import pe.edu.upeu.ppp.service.EvaluacionesService;
@Service
public class EvaluacionesServiceImp implements EvaluacionesService {

	 @Autowired
	 EvaluacionesDAO evadao;
	@Override
	public int ActualizarEvaluacion(int p_idevaluacion, int p_estado) {
		// TODO Auto-generated method stub
		return evadao.ActualizarEvaluacion(p_idevaluacion, p_estado);
	}
	@Override
	public int CrearDimensiones(int p_idevaluacion, String[] nombre, String[] p_activo) {
		// TODO Auto-generated method stub
		return evadao.CrearDimensiones(p_idevaluacion, nombre, p_activo);
	}


}
