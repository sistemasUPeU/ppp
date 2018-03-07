package pe.edu.upeu.ppp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.aop.config.AopConfigUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import pe.edu.upeu.ppp.entity.CUserDTO;
import pe.edu.upeu.ppp.service.VacanteService;

@Controller
@RequestMapping("/vacante")
public class VacanteController {
	
	@Autowired
	VacanteService vacanteService;
	
	//Variables para escribir el response
	PrintWriter out;
	Map<String, Object> rpta = new HashMap<String, Object>();			
	
	//variables para transformar de json a HashMap
	Gson gson = new Gson();
	Type tipoHashMap=new TypeToken<Map<String,Object>>(){}.getType();
	Map<String, Object> myHasMap= new HashMap<String, Object>();
	
	//Otras varianbles
	private int vg_idconvenio=0,vg_idrepresentante=0;
	private String vg_idperiodo="";
/*	
	private VacanteController() {
		// TODO Auto-generated constructor stub
	}
*/	
	@PostMapping(value="/getEscuelaLineaP")
	private void obtenerEscuela_LineaP(HttpServletRequest request,HttpServletResponse response, Authentication authentication) {
		vg_idrepresentante = Integer.parseInt(((CUserDTO) authentication.getPrincipal()).IDUSER());		
		List<Map<String,Object>> lista_escuela_lineap=vacanteService.obtenerEscuela_LineaP(vg_idrepresentante);		
		vg_idperiodo= "2018-1";
		vg_idconvenio=Integer.parseInt(lista_escuela_lineap.get(0).get("CONVENIO").toString());
				
		rpta.put("escuela_linep",lista_escuela_lineap);
		respuesta(response);
	}
	
	@PostMapping	
	private void saveVacante(HttpServletRequest request,HttpServletResponse response,@RequestBody String data_json, Authentication authentication) {		
		System.out.println("save_Controller");
		System.out.println(data_json);
		
		myHasMap=gson.fromJson(data_json, tipoHashMap);							
		ArrayList<String> lista_lineasp=new ArrayList<>();		
		
		if(myHasMap.get("lineasprofesionales") instanceof ArrayList<?>) {
			System.out.println("si");
			lista_lineasp=(ArrayList<String>) myHasMap.get("lineasprofesionales");
		}else {
			System.out.println("no");
			lista_lineasp.add(0, myHasMap.get("lineasprofesionales").toString());
		}		
		System.out.println("Linea1 "+lista_lineasp.get(0));
		System.out.println("Linea2 "+lista_lineasp.get(1));
		vacanteService.SaveVacante(lista_lineasp,vg_idperiodo,vg_idconvenio,vg_idrepresentante, myHasMap.get("areatrabajo").toString(), myHasMap.get("horario").toString(), myHasMap.get("fechainicio").toString(), myHasMap.get("fechafin").toString(), myHasMap.get("horainicio").toString(), myHasMap.get("horafin").toString(), Integer.parseInt(myHasMap.get("sueldo").toString()), Integer.parseInt(myHasMap.get("ncupos").toString()),1);
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
