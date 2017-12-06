package pe.edu.upeu.ppp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Informe")
public class InformesLinks {

	@GetMapping("/Informes")
	public String supervicion() {
		String pagina = "vistas/Informes/Informes";
		return pagina;
	}
}
