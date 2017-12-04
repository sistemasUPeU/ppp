package pe.edu.upeu.ppp.service;

import java.util.List;
import java.util.Map;

public interface VacanteService {
	public List<Map<String,Object>> listarVacantes ();
	public int NewVacante(String P_IDPERIODO,
	 		String P_IDREPRESENTANTE,
	 		String P_AREATRABAJO,
	 		String P_CANTIDAD,
	 		String P_HORARIO,
	 		String P_FECHAINICIO,
	 		String P_FECHAFIN,
	 		String P_HORAINICIO,
	 		String P_HORAFIN,
	 		String P_SUELDO,
	 		String P_IDESTADO
	 );

}
