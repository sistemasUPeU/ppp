package pe.edu.upeu.ppp.service;

public interface EvaluacionesService {
	public int ActualizarEvaluacion(int p_idevaluacion, int p_estado);
	public int CrearDimensiones(int p_idevaluacion,
            String[] nombre,
            String[] p_activo);
}
