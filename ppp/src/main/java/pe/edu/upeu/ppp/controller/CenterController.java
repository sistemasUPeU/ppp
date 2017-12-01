package pe.edu.upeu.ppp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import pe.edu.upeu.ppp.config.SpringConnection;
//import pe.edu.upeu.ppp.dao.ConvenioDAO;



@Controller
public class CenterController {
	
	
	//ConvenioDAO cO= new ConvenioDAO(SpringConnection.getDataSource());
	
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

			case "estplanilla":

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
