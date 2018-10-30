package pe.edu.upeu.ppp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;

import pe.edu.upeu.ppp.entity.CUserDTO;
import pe.edu.upeu.ppp.service.UserService;

@Controller
public class MainController {


	@Autowired 
	UserService userdao;
	
	Map<String, Object> mp = new HashMap<>();
	Map<String, Object> rpta = new HashMap<String, Object>();
	ArrayList<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
	// public EmpleadoDAO eO= new EmpleadoDAO(AppConfig.getDataSource());

	@RequestMapping(value = "/cc", method = RequestMethod.GET)
	public void Logueo(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException {
		response.setContentType("application/json");
		HttpSession session = request.getSession(true);
		PrintWriter out = response.getWriter();
		String opc = request.getParameter("opc");
		System.out.println(opc);
		
		int IDUSER = Integer.parseInt(((CUserDTO) authentication.getPrincipal()).IDUSER());
		System.out.println(IDUSER);
		
		String name = ((CUserDTO) authentication.getPrincipal()).getNombre();
		String genero = ((CUserDTO) authentication.getPrincipal()).getGenero();
		
		try {
			switch (opc) {
			case "perfil":
				mp.put("li", userdao.perfil(IDUSER));
				mp.put("name", name);
				mp.put("genero", genero);
				mp.put("rol", userdao.getRole(IDUSER));
				System.out.println(userdao.getRole(IDUSER));
				break;

			case "cargo":
			break;
			}

		} catch (Exception e) {
			mp.put("rpta", false);
			System.out.println("Error MainController COMPONENTS : " + e);
		}
		Gson gson = new Gson();
		out.println(gson.toJson(mp));
		out.flush();
		out.close();
	}

}
