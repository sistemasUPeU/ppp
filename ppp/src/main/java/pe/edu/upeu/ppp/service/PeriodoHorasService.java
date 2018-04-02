package pe.edu.upeu.ppp.service;

import java.util.ArrayList;
import java.util.Map;

public interface PeriodoHorasService {
	ArrayList<ArrayList<Map<String,Object>>> listaPeriodoHoras();
	ArrayList<Map<String,Object>> periodoHoras();
	int savePeriodoHoras(int cicloIzquierda,int cicloDerecha,int idPlanAcademico,int horas);
}
