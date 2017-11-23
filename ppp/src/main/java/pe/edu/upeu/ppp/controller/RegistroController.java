package pe.edu.upeu.ppp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/registro")
public class RegistroController {

	@GetMapping("/empresa")
	public String empresa() {
		String pagina = "vista/registro/index";
		return pagina;
	}
	
	
}
