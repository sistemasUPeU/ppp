package pe.edu.upeu.ppp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Asignacion")
public class AsignacionLinks {

	@GetMapping("/AsignacionVacante")
	public String supervicion() {
		String pagina = "vistas/Asignacion/Asignacion";
		return pagina;
	}
	
}
