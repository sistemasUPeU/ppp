package pe.edu.upeu.ppp.dao;

public interface EvaluacionesDAO {
	int ActualizarEvaluacion(int p_idevaluacion,
			                 int p_estado);
	int CrearDimensiones(int p_idevaluacion,
			             String nombre,
			             int p_activo);
}
