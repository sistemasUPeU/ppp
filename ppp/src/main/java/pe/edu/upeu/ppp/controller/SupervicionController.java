package pe.edu.upeu.ppp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/supervicion")
public class SupervicionController {
	
	@GetMapping("/supervicion")
	public String supervicion() {
		String pagina = "vistas/Supervision/supervicion";
		return pagina;
	}
	
	@GetMapping("/asignacion")
	public String Asignacion() {
		String pagina = "vistas/Supervision/asignacion";
		return pagina;
	}
	
	@GetMapping("/practicantes_Aptos")
	public String Practicantes_Aptos() {
		String pagina = "vistas/Supervision/practicantes_Aptos";
		return pagina;
	}
	
	@GetMapping("/evaluacion")
	public String evaluaciones() {
		String pagina = "vistas/Supervision/evaluacion";
		return pagina;
	}
	
	@GetMapping("/practicanteCargo")
	public String practicanteCargo() {
		String pagina = "vistas/Supervision/practicanteCargo";
		return pagina;
	}

}
