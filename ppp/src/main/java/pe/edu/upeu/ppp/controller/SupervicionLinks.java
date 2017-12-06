package pe.edu.upeu.ppp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Supervision")
public class SupervicionLinks {
	
	@GetMapping("/supervicion")
	public String supervicion() {
		String pagina = "vistas/Supervision/supervicion";
		return pagina;
	}
	
	@GetMapping("/asignar")
	public String Asignacion() {
		String pagina = "vistas/Supervision/asignacion";
		return pagina;
	}
	
	@GetMapping("/practicantes_Aptos")
	public String Practicantes_Aptos() {
		String pagina = "vistas/Supervision/practicantesAptos";
		return pagina;
	}
	
	@GetMapping("/evaluar")
	public String evaluaciones() {
		String pagina = "vistas/Supervision/evaluaciones";
		return pagina;
	}
	
	@GetMapping("/practicanteACargo")
	public String practicanteCargo() {
		String pagina = "vistas/Supervision/practicanteCargo";
		return pagina;
	}
	
	@GetMapping("/perfil")
	public String perfil() {
		String pagina = "vistas/Supervision/perfil";
		return pagina;
	}

}
