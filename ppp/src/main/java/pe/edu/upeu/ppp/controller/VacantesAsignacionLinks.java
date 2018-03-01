package pe.edu.upeu.ppp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Vacante_Asignacion")
public class VacantesAsignacionLinks {
	@GetMapping("Vacantes")
	public String vacantes() {
		return "vistas/Vacante/vacantes";
	}
}
