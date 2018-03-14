package pe.edu.upeu.ppp.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pe.edu.upeu.ppp.entity.CUserDTO;

@Controller
@RequestMapping("/SupervisionView")
public class SupervicionLinks {
	
	@GetMapping("/")
	public String supervicion(Authentication authentication) {
		String vg_idrol=((CUserDTO) authentication.getPrincipal()).getidrol();
		String pagina="";
		System.out.println("idrol -> "+vg_idrol);
		if(vg_idrol.equals("4")) {
			pagina = "vistas/Supervision/supervicionRepre";
		}else if(vg_idrol.equals("3")) {
			pagina = "vistas/Supervision/supervicionSupervi";
		}		
		return pagina;
	}
	
	// LINKS QUE REPRESENTAN A SUPERVISOR EP
	@GetMapping("/practicantes_Aptos")
	public String Practicantes_Aptos() {
		String pagina = "vistas/Supervision/practicantesAptos";
		return pagina;
	}
	@GetMapping("/Seguimiento")
	public String Seguimiento() {
		String pagina = "vistas/Supervision/Seguimiento";
		return pagina;
	}
	@GetMapping("/Cierre")
	public String Cierre() {
		String pagina = "vistas/Supervision/Cierre";
		return pagina;
	}
	@GetMapping("/Asignacion")
	public String Asignacion() {
		String pagina = "vistas/Supervision/Asignacion";
		return pagina;
	}
	
	//---------------------------------------------------------
	@GetMapping("/Monitoreo")
	public String Monitoreo() {
		String pagina = "vistas/Supervision/Monitoreo";
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
