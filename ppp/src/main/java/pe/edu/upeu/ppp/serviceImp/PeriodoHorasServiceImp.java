package pe.edu.upeu.ppp.serviceImp;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.ppp.dao.PeriodoHorasDAO;
import pe.edu.upeu.ppp.service.PeriodoHorasService;

@Service
public class PeriodoHorasServiceImp implements PeriodoHorasService{

	@Autowired
	PeriodoHorasDAO periodoDAO;
	
	@Override
	public ArrayList<ArrayList<Map<String, Object>>> listaPeriodoHoras() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Map<String, Object>> periodoHoras() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int savePeriodoHoras(int cicloIzquierda, int cicloDerecha,int idPlanAcademico, int horas) {
		// TODO Auto-generated method stub
		return periodoDAO.savePeriodoHoras(cicloIzquierda, cicloDerecha,idPlanAcademico, horas);
	}

	
}
