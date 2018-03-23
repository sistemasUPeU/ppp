package pe.edu.upeu.ppp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import pe.edu.upeu.ppp.entity.CUserDTO;
import pe.edu.upeu.ppp.service.AlumnoService;

@Controller
@RequestMapping("/al")

public class AlmControl {

	@Autowired
	AlumnoService almSer;

//	Map<String, Object> mp = new HashMap<>();
	Map<String, Object> rpta = new HashMap<String, Object>();
	ArrayList<Map<String, Object>> listas;
//	Map<String, Object> outCT = new HashMap<String, Object>();

	ArrayList<Map<String, Object>> listAlm;

	Gson gson = new Gson();
	PrintWriter out;

	@GetMapping(value ="/get")
	@ResponseBody
	public void almPost(HttpServletRequest request, HttpServletResponse response, Authentication authentication) {

		String opc = request.getParameter("opc");

		int IDROL = Integer.parseInt(((CUserDTO) authentication.getPrincipal()).getidrol());
		int IDUSER = Integer.parseInt(((CUserDTO) authentication.getPrincipal()).IDUSER());

		
		try {
			switch (opc) {
			case "listAlm":
				if (IDROL == 5) {

					rpta.put("alumno", almSer.listaralumno(IDUSER));
					System.out.println("Hola");
				}
				
				break;

			default:
				
				break;
			}
		} catch (Exception e) {
			// TODO: handle exception
			
		}
			respuesta(response);
	}
	public void respuesta(HttpServletResponse response) {
		try {
			out = response.getWriter();
	        out.println(gson.toJson(rpta));
	        out.flush();
	        out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			rpta.put("rpta", "-1");
            rpta.put("mensaje", e.getMessage());
            out.print(gson.toJson(rpta));
            out.flush();
            out.close();
		}
	}
}
