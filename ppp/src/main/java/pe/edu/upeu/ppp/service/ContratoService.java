package pe.edu.upeu.ppp.service;

import java.util.List;
import java.util.Map;

public interface ContratoService {
	
	 public List<Map<String,Object>> listarRepr ();
	
	
	 public int convenio(String P_idalumno,
		            String P_IDROL,
		            String P_CICLO,
		            String p_idempresa,
		            String p_idescuela,
		            String P_IDPERIODO,
		            String P_RUTA,
		            String p_FECHAINICIO,
		            String P_FECHAFIN,
		            String P_IDVACANTES);

}
