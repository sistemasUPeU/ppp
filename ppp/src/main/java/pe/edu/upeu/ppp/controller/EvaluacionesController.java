package pe.edu.upeu.ppp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EvaluacionesController {
	//BY KEVIN MOGOLLON--
		@RequestMapping(value="/ec",  method = RequestMethod.POST)
		private void controlar(@RequestParam("opc") String opc) {
			try {
				switch (opc) {
				case "createitem":
					
					break;

				case "updateevaluacion":
					break;
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		
		}
}
