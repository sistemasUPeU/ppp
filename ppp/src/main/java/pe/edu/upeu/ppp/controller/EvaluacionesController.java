package pe.edu.upeu.ppp.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

@Controller
public class EvaluacionesController {
	//BY KEVIN MOGOLLON--
	List<Map<String, Object>> listas;

		@RequestMapping(value="/ec",  method = RequestMethod.POST)
		private void controlar(@RequestParam("opc") String opc,HttpServletResponse response,@RequestParam("p_nombre") String p_nombre) throws IOException {
			PrintWriter out = response.getWriter();
			try {
				

				switch (opc) {
				case "createitem":
					String array[]= {p_nombre};
					break;

				case "updateevaluacion":
					break;
				}
			} catch (Exception ee) {
				System.out.println("Error en Evaluaciones Controller : "+ee);
			}
			Gson gson = new Gson();
			out.println(gson.toJson(listas));
			out.flush();
			out.close();
		
		}
}
