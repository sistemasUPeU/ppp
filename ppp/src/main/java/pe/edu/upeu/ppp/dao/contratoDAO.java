package pe.edu.upeu.ppp.dao;

import java.util.ArrayList;
import java.util.*;


public interface contratoDAO {
	List<Map<String,Object>> listarRepr ();
	public int convenio(int p_idperiodo,
            String p_razonsocial,
            String p_ruc,
            String p_direccion,
            String p_seguro,
            String p_actividad,
            String p_cargo,
            String p_idalumno);
}
