package pe.edu.upeu.ppp.serviceImp;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.upeu.ppp.dao.RepresentanteDAO;
import pe.edu.upeu.ppp.service.RepreService;

@Service
public class RepreServiceImp implements RepreService {

	@Autowired
	RepresentanteDAO RepreSerImp;
	
	@Override
	public ArrayList<Map<String, Object>> listarRepr() {
		return RepreSerImp.listarRepr();
	}

}
