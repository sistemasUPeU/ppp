
package pe.edu.upeu.ppp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/registro")
public class RegistroLinks {

	@GetMapping("/ORDN")
	public String empresa() {
		String pagina = "vistas/registro/RegisAlumno";
		return pagina;
	}
	
	@GetMapping("/vacante")
	public String as() {
		String pagina = "vistas/registro/vacante";
		return pagina;
	}
	@GetMapping("/evaluacion")
	public String ds() {
		String pagina = "vistas/registro/Evaluacion";
		return pagina;
	}
	
	@GetMapping("/ListaVacantes")
	public String dols() {
		String pagina = "vistas/registro/ListaVacantes";
		return pagina;
	}
	
	@GetMapping("/Convenio")
	public String conve() {
		String pagina = "vistas/registro/Convenio";
		return pagina;
	}
	@GetMapping("/Periodo_Horas")
	public String periodoHoras() {
		return "vistas/registro/PeriodoHoras";
	}
}

