package pe.edu.upeu.ppp.serviceImp;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.ppp.dao.alumnoDAO;
import pe.edu.upeu.ppp.service.AlumnoService;


@Service

public class AlmunoServiceImp  implements AlumnoService{

	@Autowired
	alumnoDAO alumnodao;
	
	@Override
	public ArrayList<Map<String, Object>> listaralumno(int id) {
		return alumnodao.listaralumno(id);
	}

}
