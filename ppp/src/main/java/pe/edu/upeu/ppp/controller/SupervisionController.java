package pe.edu.upeu.ppp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import pe.edu.upeu.ppp.entity.CUserDTO;
import pe.edu.upeu.ppp.service.SupervicionService;

@Controller
@RequestMapping("/supervision")
public class SupervisionController {
	
	@Autowired
	SupervicionService supervicionService;

	//Variables para escribir el response
	private PrintWriter out;
	private Map<String, Object> rpta = new HashMap<String, Object>();			
	
	//variables para transformar de json a HashMap
	private Gson gson = new Gson();
	private Type tipoHashMap=new TypeToken<Map<String,Object>>(){}.getType();
	private Map<String, Object> myHasMap= new HashMap<String, Object>();
	
	//Otras varianbles
	private int vg_idrepresentante=0,vg_idestado=3;
	private String vg_idrol="";
	
	@PostMapping(value="/get")
	@ResponseBody
	private void getSupervicion(HttpServletRequest request,HttpServletResponse response,Authentication authentication) {
		vg_idrepresentante = Integer.parseInt(((CUserDTO) authentication.getPrincipal()).IDUSER());
		List<Map<String,Object>> lista_practicantes=supervicionService.listarPracticanteByIdRepresentante(vg_idrepresentante);						
				
		rpta.put("lista_practicantes",lista_practicantes);
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
