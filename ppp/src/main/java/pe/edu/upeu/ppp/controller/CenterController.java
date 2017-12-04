package pe.edu.upeu.ppp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import pe.edu.upeu.ppp.config.SpringConnection;
import pe.edu.upeu.ppp.dao.VacanteDAO;
//import pe.edu.upeu.ppp.dao.ConvenioDAO;
import pe.edu.upeu.ppp.service.VacanteService;



@Controller
public class CenterController {
	
	
	@Autowired
	VacanteService vS;
	List<Map<String, Object>> listas;
	
	@RequestMapping("/paginas")
	public ModelAndView paginas(ModelAndView modelo,HttpServletRequest request,HttpServletResponse response)
	{
		String opc=request.getParameter("opc");
		switch (opc) {
		case "1":
			break;

		case"2":
			break;
		}
		return modelo;
	}
	
	@RequestMapping(value="/proc",method=RequestMethod.POST)
	public void metod(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        String opc = request.getParameter("opc");
        try {
        	switch (opc) {
			case "convenio":
				int p_idperiodo=Integer.parseInt(request.getParameter(""));
				String p_razonsocial=request.getParameter("");
				String p_ruc=request.getParameter("");
				String p_direccion=request.getParameter("");
				String p_seguro=request.getParameter("");
				String p_actividad=request.getParameter("");
				String p_cargo=request.getParameter("");
				String p_idalumno=request.getParameter("");
				//cO.convenio(p_idperiodo,p_razonsocial,p_ruc,p_direccion,p_seguro,p_actividad,p_cargo,p_idalumno);
				break;

			case "Newvacante":
                String P_IDPERIODO=request.getParameter("periodo"); 
                String P_IDREPRESENTANTE=request.getParameter("representante"); 
                String P_AREATRABAJO=request.getParameter("area_trabajo"); 
                String P_CANTIDAD=request.getParameter("cantidad"); 
                String P_HORARIO=request.getParameter("horario"); 
                String P_FECHAINICIO=request.getParameter("fechainicio"); 
                String P_FECHAFIN=request.getParameter("fechafin"); 
                String P_HORAINICIO=request.getParameter("fechainicio"); 
                String P_HORAFIN=request.getParameter("horafin"); 
                String P_SUELDO=request.getParameter("sueldo"); 
                String P_IDLINEASP=request.getParameter("IDlineasAP"); 
                String P_IDFOLDERPRACTICA=request.getParameter(""); 
                String P_IDTRABAJADOR=request.getParameter("trabajador"); 
                String P_IDALUMNO=request.getParameter("alumnos"); 
                String P_IDROL=request.getParameter("idrol"); 
                String P_CICLO=request.getParameter("ciclo"); 
                String P_TIPOPRACTICA=request.getParameter("tipo_practica"); 
                String P_OBSERVACIONES=request.getParameter("observacion"); 

                vS.NewVacante(P_IDPERIODO, P_IDREPRESENTANTE, P_AREATRABAJO, P_CANTIDAD, P_HORARIO, P_FECHAINICIO, P_FECHAFIN, P_HORAINICIO, P_HORAFIN, P_SUELDO, P_IDLINEASP, P_IDFOLDERPRACTICA, P_IDTRABAJADOR, P_IDALUMNO, P_IDROL, P_CICLO, P_TIPOPRACTICA, P_OBSERVACIONES);
				break;
				
			case "Vacantes":
                listas=vS.listarVacantes();
				break;
			}
			
		} catch (Exception e) {

			System.out.println("Error:"+e);
		}
        Gson gson = new Gson();
        out.println(gson.toJson(listas));
		out.flush();
		out.close();
	}
	

}
