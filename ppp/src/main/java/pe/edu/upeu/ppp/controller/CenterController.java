package pe.edu.upeu.ppp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.lucene.analysis.core.TypeTokenFilterFactory;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import pe.edu.upeu.ppp.entity.CUserDTO;
import pe.edu.upeu.ppp.report.reportCreate;
import pe.edu.upeu.ppp.service.EmpresaService;
import pe.edu.upeu.ppp.service.RepreService;
import pe.edu.upeu.ppp.service.VacanteService;
@Controller
@RequestMapping("/rp")
public class CenterController {

	@Autowired
	EmpresaService empredao;
	
	@Autowired
	RepreService representanteDao;
	
	@Autowired
	VacanteService vS;

	Map<String, Object> mp = new HashMap<>();
	Map<String, Object> rpta = new HashMap<String, Object>();
	ArrayList<Map<String, Object>> listas;
	Map<String, Object> outCT = new HashMap<String, Object>();
	
	
	reportCreate rct = new reportCreate();
	
	Gson gson = new Gson();
	PrintWriter out;
	
	@PostMapping 	
	@ResponseBody
	public void centerPost( HttpServletRequest request, HttpServletResponse response , @RequestBody String data_json, Authentication authentication)throws IOException {						
		
		String opc=request.getParameter("opc");
		Type tipoHashMap=new TypeToken<Map<String,Object>>(){}.getType();
		Map<String, Object> myHasMap=null;
				
		String IDROL = ((CUserDTO) authentication.getPrincipal()).getidrol();
		int vl_idperiodo=0;
		
		int vl_estado=0;
		int resp=0;
		
		try {
			switch (opc) {
			case "asignado":
				String codigo ="";
				JSONArray jsonarray = new JSONArray(data_json);
				int vacante = Integer.parseInt(request.getParameter("vacante"));
				if(jsonarray.length() != 0) {
				    for (int i = 0; i < jsonarray.length(); i++) {
					    codigo = vS.AginacionIn(Integer.parseInt(jsonarray.get(i).toString().trim()), vacante);
					    if(codigo != "" || codigo == null) {
						   
					    }else {
						    
					    }
				      }
				}
				System.out.println("soy la vacante "+ codigo );
				System.out.println(data_json);
				
				//----- cart genartor
				
//				
//			
////				Map<String, Object> recibe = rct.getReport(Practicante, outCT);
//				
//				
//		
//			System.out.println(outCT);
//			mp.put("crtA", "listo" );
				
							
			    mp.put("resp", 1);
			    
			break;
			case "new_Representante":
//			//	vl_idperiodo = Integer.parseInt(((CUserDTO) authentication.getPrincipal()).getidperiodo());			
//				myHasMap = gson.fromJson(data_json, tipoHashMap);
//				
//				//El estado 'ACTIVO' corresponde al id 23
//				//El estado 'PENDIENTE' corresponde al id 22
//				vl_estado=23;
//				//el id_rol que corresponde a practicante es 3
//				System.out.println(IDROL);
//				if(IDROL.equals("3")){
//					vl_estado=22;
//				}
//				resp=0;
//				resp=representanteDao.regRepresentante(
//						myHasMap.get("nombre").toString(),
//						myHasMap.get("apellido").toString(),
//						myHasMap.get("dni").toString(),
//						myHasMap.get("celular").toString(),
//						myHasMap.get("correo").toString(),
//						myHasMap.get("genero").toString(),
//						vl_estado,
//						Integer.parseInt(myHasMap.get("idempresa").toString()),
//						vl_idperiodo,
//						myHasMap.get("cargo").toString()
//						);
//				
//				System.out.println(myHasMap);
//				System.out.println(IDROL+" _ "+vl_estado);
//				mp.put("resp", resp);
				break;
			case "new_Empresa":
//				// vl_idperiodo = Integer.parseInt(((CUserDTO) authentication.getPrincipal()).getidperiodo());
//						
//				myHasMap = gson.fromJson(data_json, tipoHashMap);
//							
//				//El estado 'ACTIVO' corresponde al id 23
//				//El estado 'PENDIENTE' corresponde al id 22
//				vl_estado=23;
//				//el id_rol que corresponde a practicante es 3
//				if(IDROL.equals("3")){
//					vl_estado=22;
//				}						
//				resp=0;
//				resp=empredao.RegEmpresa(
//						myHasMap.get("nombre").toString(),
//						myHasMap.get("apellido").toString(),
//						myHasMap.get("dni").toString(),
//						myHasMap.get("celular").toString(),
//						myHasMap.get("correo").toString(),
//						myHasMap.get("genero").toString(),
//						myHasMap.get("cargo").toString(),
//						vl_idperiodo,
//						myHasMap.get("rasoc").toString(),
//						myHasMap.get("ruc").toString(),
//						myHasMap.get("direccion").toString(),
//						Integer.parseInt(myHasMap.get("seguro").toString()),
//						myHasMap.get("actividad").toString(), vl_estado);			
//				
//				System.out.println(myHasMap);
//				System.out.println("Nombre-> "+myHasMap.get("nombre"));
//				mp.put("resp", resp);
				break;		
			case "CreateCart":
				break;
			}
		} catch (Exception e) {
             System.out.println("erroro en Center controlle:" +e);
		}
		
		
		respuesta( response);
	}

	
//GET
	@GetMapping
	public void metod( HttpServletRequest request, HttpServletResponse response , Authentication authentication) throws IOException {
		response.setContentType("application/json");
		//HttpSession session = request.getSession(true);
		PrintWriter out = response.getWriter();
		String opc = request.getParameter("opc");
		
		int IDUSER = Integer.parseInt(((CUserDTO) authentication.getPrincipal()).IDUSER());
		int IDROL = Integer.parseInt(((CUserDTO) authentication.getPrincipal()).getidrol());
		String CICLO = ((CUserDTO) authentication.getPrincipal()).getCiclo();
		
		try {
			switch (opc) {

			case "Vacantes":
				if(IDROL == 3) {
					listas = vS.getTeacher(IDUSER);
					mp.put("Vacantes", vS.listarVacantes(Integer.parseInt(listas.get(0).get("IDESCUELA").toString().trim())));
					mp.put("alumnos", vS.GetAlumnos(Integer.parseInt(listas.get(0).get("IDESCUELA").toString().trim())));
				}
				
				break;
			
			case "Combox":
				mp.put("as", empredao.ListSeguro());
				mp.put("li", empredao.ListLineas());
				
				mp.put("combox1", vS.CargaCombox1());
				System.out.println("pun pun"+vS.CargaCombox1());
				break;
			case "Combox1":
				int cid = Integer.parseInt(request.getParameter("idSe"));
				mp.put("combox11", vS.CargaCombox1(cid));
				System.out.println("pun pun 2"+vS.CargaCombox1(cid));
				break;
				
			
				
			}

		} catch (Exception e) {
			mp.put("rpta", false);
			System.out.println("Error CenterController COMPONENTS : " + e);
		}
		respuesta( response);
	}

	public void respuesta(HttpServletResponse response) {
		try {
			out = response.getWriter();
	        out.println(gson.toJson(mp));
	        out.flush();
	        out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			rpta.put("rpta", "-1");
            rpta.put("mensaje", e.getMessage());
            out.print(gson.toJson(mp));
            out.flush();
            out.close();
		}
	}
}
