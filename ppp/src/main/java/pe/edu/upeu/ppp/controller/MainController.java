package pe.edu.upeu.ppp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;

@Controller
public class MainController {

	// private ContratoDAO c = new ContratoDAO(AppConfig.getDataSource());

	Map<String, Object> mp = new HashMap<>();
	Map<String, Object> rpta = new HashMap<String, Object>();
	ArrayList<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
	// public EmpleadoDAO eO= new EmpleadoDAO(AppConfig.getDataSource());

	@RequestMapping(value = "/cc", method = RequestMethod.POST)
	public void Logueo(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException {
		response.setContentType("application/json");
		HttpSession session = request.getSession(true);
		PrintWriter out = response.getWriter();

		String opc = request.getParameter("opc");
		System.out.println(opc);
		try {
			switch (opc) {
			case "perfil":

				break;

			case "cargo":

				break;
			case "seguro":

				break;
			case "planillas":

				break;

			}

		} catch (Exception e) {
			mp.put("rpta", false);
			System.out.println("Error CenterController COMPONENTS : " + e);
		}
		Gson gson = new Gson();
		out.println(gson.toJson(mp));
		out.flush();
		out.close();
	}

}
