package pe.edu.upeu.ppp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Asignacion")
public class AsignacionLinks {

	@GetMapping("/AsignacionVacante")
	public ModelAndView supervicion() {
		ModelAndView model = new ModelAndView();
		String pagina = "vistas/Asignacion/Asignacion";
	    model.setViewName("vistas/Asignacion/Asignacion");
	 return model;
	}
	
}
