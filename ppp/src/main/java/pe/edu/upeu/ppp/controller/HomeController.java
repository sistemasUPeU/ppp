package pe.edu.upeu.ppp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {

	@GetMapping("/")
	public String home() {
		String pagina = "index";
		return pagina;
	}
	
	@GetMapping("/tu")
	public String tu() {
		String pagina = "/vistas/prueba";
		return pagina;
	}
}
