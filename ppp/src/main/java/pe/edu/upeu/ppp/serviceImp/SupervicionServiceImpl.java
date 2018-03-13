package pe.edu.upeu.ppp.serviceImp;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.ppp.dao.SupervicionDAO;
import pe.edu.upeu.ppp.service.SupervicionService;

@Service
public class SupervicionServiceImpl implements SupervicionService{
	
	@Autowired
	SupervicionDAO supervicionDAO;
	
	@Override
	public ArrayList<Map<String, Object>> listarPracticanteByIdRepresentante(int idrepresentante) {
		// TODO Auto-generated method stub
		return supervicionDAO.listarPracticanteByIdRepresentante(idrepresentante);
	}

}
