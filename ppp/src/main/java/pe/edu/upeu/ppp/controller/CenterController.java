package pe.edu.upeu.ppp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.lucene.analysis.core.TypeTokenFilterFactory;
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
	List<Map<String, Object>> listas;
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
		
		switch (opc) {
		case "1":
			break;
		case "new_Representante":
			vl_idperiodo = Integer.parseInt(((CUserDTO) authentication.getPrincipal()).getidperiodo());			
			myHasMap = gson.fromJson(data_json, tipoHashMap);
			
			//El estado 'ACTIVO' corresponde al id 23
			//El estado 'PENDIENTE' corresponde al id 22
			vl_estado=23;
			//el id_rol que corresponde a practicante es 3
			System.out.println(IDROL);
			if(IDROL.equals("3")){
				vl_estado=22;
			}
			resp=0;
			resp=representanteDao.regRepresentante(
					myHasMap.get("nombre").toString(),
					myHasMap.get("apellido").toString(),
					myHasMap.get("dni").toString(),
					myHasMap.get("celular").toString(),
					myHasMap.get("correo").toString(),
					myHasMap.get("genero").toString(),
					vl_estado,
					Integer.parseInt(myHasMap.get("idempresa").toString()),
					vl_idperiodo,
					myHasMap.get("cargo").toString()
					);
			
			System.out.println(myHasMap);
			System.out.println(IDROL+" _ "+vl_estado);
			mp.put("resp", resp);
			break;
		case "new_Empresa":
			 vl_idperiodo = Integer.parseInt(((CUserDTO) authentication.getPrincipal()).getidperiodo());
					
			myHasMap = gson.fromJson(data_json, tipoHashMap);
						
			//El estado 'ACTIVO' corresponde al id 23
			//El estado 'PENDIENTE' corresponde al id 22
			vl_estado=23;
			//el id_rol que corresponde a practicante es 3
			if(IDROL.equals("3")){
				vl_estado=22;
			}						
			resp=0;
			resp=empredao.RegEmpresa(
					myHasMap.get("nombre").toString(),
					myHasMap.get("apellido").toString(),
					myHasMap.get("dni").toString(),
					myHasMap.get("celular").toString(),
					myHasMap.get("correo").toString(),
					myHasMap.get("genero").toString(),
					myHasMap.get("cargo").toString(),
					vl_idperiodo,
					myHasMap.get("rasoc").toString(),
					myHasMap.get("ruc").toString(),
					myHasMap.get("direccion").toString(),
					Integer.parseInt(myHasMap.get("seguro").toString()),
					myHasMap.get("actividad").toString(), vl_estado);			
			
			System.out.println(myHasMap);
			System.out.println("Nombre-> "+myHasMap.get("nombre"));
			mp.put("resp", resp);
			break;		
		case "CreateCart":
			
		
				
				Date ahora = new Date();
			    SimpleDateFormat formateador = new SimpleDateFormat("dd-MM-yyyy");
			    String fecha = formateador.format(ahora);
				
				String Practicante = ((CUserDTO) authentication.getPrincipal()).getApellido() +" "+ ((CUserDTO) authentication.getPrincipal()).getNombre();
				int idUser = Integer.parseInt(((CUserDTO) authentication.getPrincipal()).IDUSER());
				String ciclo = ((CUserDTO) authentication.getPrincipal()).getCiclo();
				String genero ="";
				
				int IDgenero = Integer.parseInt(((CUserDTO) authentication.getPrincipal()).getGenero());
				    if(IDgenero == 1) {
					    genero ="el joven";
				    }else if(IDgenero ==2){
					genero ="a la se�orita";
				    }
				   
				outCT.put("Fecha", fecha);
				outCT.put("txtRepresentante", request.getParameter("REPRESENTANTE").toString());
				outCT.put("txtCargoRp",request.getParameter("CARGO").toString());
				outCT.put("txtEmpresa", request.getParameter("RAZONSOCIAL").toString());
				outCT.put("txtDireccion", request.getParameter("DIRECCION").toString());
				outCT.put("txtPracticante",Practicante);
				outCT.put("txtGenero",genero);
				outCT.put("txtCiclo",ciclo);
				outCT.put("txtAreaTrabajo", request.getParameter("AREATRABAJO").toString());
				outCT.put("txtId", idUser);
			
//				Map<String, Object> recibe = rct.getReport(Practicante, outCT);
				
				
		
			System.out.println(outCT);
			mp.put("crtA", "listo" );
			break;
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
		
		String IDPERIODO = ((CUserDTO) authentication.getPrincipal()).getidperiodo();
		String IDALUMNO = ((CUserDTO) authentication.getPrincipal()).IDUSER();
		String IDROL = ((CUserDTO) authentication.getPrincipal()).getidrol();
		String CICLO = ((CUserDTO) authentication.getPrincipal()).getCiclo();
		
		try {
			switch (opc) {

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
				
			case "Vacantes":
				int id = Integer.parseInt(IDALUMNO);
				mp.put("Vacantes", vS.listarVacantes(id));
					
				mp.put("history", vS.ListarHistoria(id));
				System.out.println("hola pues" +vS.listarVacantes(id));
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
