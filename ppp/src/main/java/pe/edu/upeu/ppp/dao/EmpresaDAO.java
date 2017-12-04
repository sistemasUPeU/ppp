package pe.edu.upeu.ppp.dao;

public interface EmpresaDAO {

	// this metho add in convenio
	 int convenio(int p_idperiodo, String p_razonsocial, String p_ruc,String p_direccion,String p_seguro,String p_actividad,String p_cargo,String p_idalumno);
	
}
