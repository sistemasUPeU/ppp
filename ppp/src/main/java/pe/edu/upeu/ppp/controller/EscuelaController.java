package pe.edu.upeu.ppp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import pe.edu.upeu.ppp.entity.CUserDTO;
import pe.edu.upeu.ppp.service.PeriodoHorasService;

@Controller
@RequestMapping("/escuela")
public class EscuelaController {
	@Autowired
	PeriodoHorasService periodoService;
	
	PrintWriter out;
	Map<String, Object> rpta = new HashMap<String, Object>();			
	
	//variables para transformar de json a HashMap
	Gson gson = new Gson();
	Type tipoLista=new TypeToken<ArrayList<Map<String, Object>>>(){}.getType();
	ArrayList<Map<String, Object>> myArrayListMap= new ArrayList<Map<String, Object>>();
	
	//Otras varianbles
		private int vg_idconvenio=0,vg_idrepresentante=0,vg_idestado=3;
		private String vg_idperiodo="",vg_idrol="";
	
	@PostMapping("periodohoras")	
	private void savePeriodoHoras(HttpServletRequest request,HttpServletResponse response,@RequestBody String data_json, Authentication authentication) {		
//		System.out.println("save_Controller");
//		System.out.println(data_json);
		
		//vg_idrol=((CUserDTO) authentication.getPrincipal()).getidrol();
		//vg_idrepresentante = Integer.parseInt(((CUserDTO) authentication.getPrincipal()).IDUSER());
		
		
		
		int idplanAcademico=1;
		
		
		
		myArrayListMap=gson.fromJson(data_json, tipoLista);									
		int filas_afectas=0;
		for(Map<String, Object> periodoMap: myArrayListMap) {
			filas_afectas=periodoService.savePeriodoHoras(Integer.parseInt(periodoMap.get("ciclo_izquierda").toString()), Integer.parseInt(periodoMap.get("ciclo_derecha").toString()),idplanAcademico, Integer.parseInt(periodoMap.get("horas").toString()));
		}
		rpta.put("retorno",filas_afectas);
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