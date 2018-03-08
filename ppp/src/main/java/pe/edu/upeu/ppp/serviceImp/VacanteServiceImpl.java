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

	@Override
	public int SaveVacante(ArrayList<String> lineasp,String idPeriodo, int idConvenio, int idRepresentante, String areaTrabajo, String horario,
			String fechaInicio, String fechaFin, String horaInicio, String horaFin, int sueldo, int nCupos,
			int idEstado) {
		// TODO Auto-generated method stub		
		return vacanteDAO.SaveVacante(lineasp,idPeriodo, idConvenio, idRepresentante, areaTrabajo, horario, fechaInicio, fechaFin, horaInicio, horaFin, sueldo, nCupos, idEstado);
	}

	@Override
	public List<Map<String, Object>> obtenerEscuela_LineaP(int idrepresentante) {
		// TODO Auto-generated method stub
		return vacanteDAO.obtenerEscuela_LineaP(idrepresentante);
	}

	@Override
	public int createFolder(String rutapdf, String rutafolder, String titulo, String observacion, int idalumno,
			int idrol) {
		
		return vacanteDAO.createFolder(rutapdf, rutafolder, titulo, observacion, idalumno, idrol);
	}

}
