package pe.edu.upeu.ppp.dao;

import java.util.ArrayList;
import java.util.*;


public interface contratoDAO {
	
	List<Map<String,Object>> listarRepr ();
		
	 int convenio(String P_idalumno,
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