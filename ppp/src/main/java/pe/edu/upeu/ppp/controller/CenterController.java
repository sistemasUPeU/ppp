package pe.edu.upeu.ppp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import pe.edu.upeu.ppp.entity.CUserDTO;
import pe.edu.upeu.ppp.service.EmpresaService;
import pe.edu.upeu.ppp.service.VacanteService;
@Controller
public class CenterController {

	@Autowired
	EmpresaService empredao;
	
	@Autowired
	VacanteService vS;

	Map<String, Object> mp = new HashMap<>();
	Map<String, Object> rpta = new HashMap<String, Object>();
	List<Map<String, Object>> listas;

	@RequestMapping(value = "/rp", method = RequestMethod.POST)
	public ModelAndView paginas(ModelAndView modelo, HttpServletRequest request, HttpServletResponse response, Authentication authentication) {
		String opc = request.getParameter("opc");
		switch (opc) {
		case "1":
			break;

		case "2":
			break;
		case "new_Empresa":
			
		break;
		}
		return modelo;
	}

	

	@RequestMapping(value = "/rp", method = RequestMethod.GET)
	public void metod(HttpServletRequest request, HttpServletResponse response , Authentication authentication) throws IOException {
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
				
			case "Registro":

				// REPRESENTANTE
				String nom = request.getParameter("nom");
				String ape = request.getParameter("ape");
				String dnii = request.getParameter("dnii");
				String cel = request.getParameter("cel");
				String cor = request.getParameter("cor");
				String genero = request.getParameter("gen");
				
				//EMPRESAS
				String raz = request.getParameter("raz");
				String rucc = request.getParameter("rucc");
				String direc = request.getParameter("direc");
				String seg = request.getParameter("seg");
				String act = request.getParameter("act");
				String car = request.getParameter("car");
				
				//Registro vacante
				String arTrabajo = request.getParameter("arTrabajo");
				String cantidad = request.getParameter("cantidad");
				String horario = request.getParameter("horario");
				String f_ini = request.getParameter("f_ini");
				String f_fin = request.getParameter("f_fin");
				String h_ini = request.getParameter("h_ini");
				String h_fin = request.getParameter("h_fin");
				String sueldo = request.getParameter("sueldo");
				//String linia = request.getParameter("linia");
				
				int a =	empredao.RegEmpresa(IDROL,nom, ape, dnii, cel,
						cor, genero, car, IDPERIODO, raz,
						rucc, direc, seg, act);
				
				if(a!=0) {
					rpta.put("abl", 1);
				}else {
					rpta.put("abl", 0);
				}
				
				System.out.println("hola : "+ rpta);
				
				break;

			case "Newvacante":
				String P_IDPERIODO = request.getParameter("periodo");
				String P_IDREPRESENTANTE = request.getParameter("representante");
				String P_AREATRABAJO = request.getParameter("area_trabajo");
				String P_CANTIDAD = request.getParameter("cantidad");
				String P_HORARIO = request.getParameter("horario");
				String P_FECHAINICIO = request.getParameter("fechainicio");
				String P_FECHAFIN = request.getParameter("fechafin");
				String P_HORAINICIO = request.getParameter("fechainicio");
				String P_HORAFIN = request.getParameter("horafin");
				String P_SUELDO = request.getParameter("sueldo");
				String P_IDLINEASP = request.getParameter("IDlineasAP");
				String P_IDFOLDERPRACTICA = request.getParameter("");
				String P_IDTRABAJADOR = request.getParameter("trabajador");
				String P_IDALUMNO = request.getParameter("alumnos");
				String P_IDROL = request.getParameter("idrol");
				String P_CICLO = request.getParameter("ciclo");
				String P_TIPOPRACTICA = request.getParameter("tipo_practica");
				String P_OBSERVACIONES = request.getParameter("observacion");

				vS.NewVacante(P_IDPERIODO, P_IDREPRESENTANTE, P_AREATRABAJO, P_CANTIDAD, P_HORARIO, P_FECHAINICIO,
						P_FECHAFIN, P_HORAINICIO, P_HORAFIN, P_SUELDO, P_IDLINEASP, P_IDFOLDERPRACTICA, P_IDTRABAJADOR,
						P_IDALUMNO, P_IDROL, P_CICLO, P_TIPOPRACTICA, P_OBSERVACIONES);
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
		Gson gson = new Gson();
		out.println(gson.toJson(mp));
		out.flush();
		out.close();
	}

}
