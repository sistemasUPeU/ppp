package pe.edu.upeu.ppp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/registro")
public class RegistroController {

	@GetMapping("/empresa")
	public String empresa() {
		String pagina = "vistas/registro/index";
		return pagina;
	}
	
	@GetMapping("/vacante")
	public String as() {
		String pagina = "vistas/registro/Empresa";
		return pagina;
	}
	
	@GetMapping("/evaluacion")
	public String ds() {
		String pagina = "vistas/registro/example";
		return pagina;
	}
	
	

	
}
