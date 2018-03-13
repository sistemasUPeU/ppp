package pe.edu.upeu.ppp.dao;

import java.util.ArrayList;
import java.util.Map;

public interface SupervicionDAO {
	ArrayList<Map<String,Object>> listarPracticanteByIdRepresentante(int idrepresentante);
}
