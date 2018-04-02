package pe.edu.upeu.ppp.dao;

import java.util.ArrayList;
import java.util.Map;

public interface PeriodoHorasDAO {
	ArrayList<ArrayList<Map<String,Object>>> listaPeriodoHoras();
	ArrayList<Map<String,Object>> periodoHoras();
	int savePeriodoHoras(int cicloIzquierda,int cicloDerecha,int idPlanAcademico,int horas);
}
