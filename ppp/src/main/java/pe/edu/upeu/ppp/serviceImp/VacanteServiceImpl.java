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
		return vacanteDAO.listarVacantes(id);
	}

	@Override
	public ArrayList<Map<String, Object>> getTeacher(int id) {
		return vacanteDAO.getTeacher(id);
	}
	
	@Override
	public String AginacionIn(int idalumno, int idvacante) {
		return vacanteDAO.AginacionIn(idalumno, idvacante);
	}
	
	
	@Override
	public int notifyVaca(int id) {
		return vacanteDAO.notifyVaca(id);
	}

	@Override
	public ArrayList<Map<String, Object>> ListarHistoria(int id) {
		return vacanteDAO.ListarHistoria(id);
	}

	@Override
	public ArrayList<Map<String, Object>> CargaCombox1() {
		return vacanteDAO.CargaCombox1();
	}

	@Override
	public ArrayList<Map<String, Object>> CargaCombox1(int id) {
		return vacanteDAO.CargaCombox1(id);
	}

	@Override
	public ArrayList<Map<String, Object>> GetAlumnos(int id) {
		return vacanteDAO.GetAlumnos(id);
	}

	

	

}
