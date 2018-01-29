package pe.edu.upeu.ppp.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface VacanteDAO {

	ArrayList<Map<String, Object>> ListarHistoria(int id);
	
	ArrayList<Map<String, Object>> listarVacantes (int id);
		
	 int NewVacante(String P_IDPERIODO,
			 		String P_IDREPRESENTANTE,
			 		String P_AREATRABAJO,
			 		String P_CANTIDAD,
			 		String P_HORARIO,
			 		String P_FECHAINICIO,
			 		String P_FECHAFIN,
			 		String P_HORAINICIO,
			 		String P_HORAFIN,
			 		String P_SUELDO,
			 		String P_IDLINEASP,
			 		String P_IDFOLDERPRACTICA,
			 		String P_IDTRABAJADOR,
			 		String P_IDALUMNO,
			 		String P_IDROL,
			 		String P_CICLO,
			 		String P_TIPOPRACTICA,
			 		String P_OBSERVACIONES
			 		
			 );
	 
	 
	 int notifyVaca (int id);
	 
	 
}
