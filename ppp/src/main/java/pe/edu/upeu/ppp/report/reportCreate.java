package pe.edu.upeu.ppp.report;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;

public class reportCreate {

	
	public Map<String, Object> getReport(String codigo , int idalumno , int idvacante ){
		
//		ServletContext sc = this.get;
		System.out.println("codigo" +codigo +"idalumno"+idalumno+"idvacante"+idvacante);
		System.out.println("entro al jasper");
		Map<String, Object> OutValues = new HashMap<>();
		 String outfilePDF ="";
		 String outFoler ="";
		try {

			//creamos la fecha actual
			   Date ahora = new Date();
               SimpleDateFormat formateador = new SimpleDateFormat("dd-MM-yyyy");
  		       String fecha = formateador.format(ahora);
			   
  		       //llenamos variables
			   Map<String,Object> Inparamets = new HashMap<String,Object>();
			   Inparamets.put("Fecha", fecha);
			   Inparamets.put("txtIdAlumno", idalumno);
			   Inparamets.put("txtIdVacante", idvacante);
			   System.out.println(Inparamets);
				// Compile jrxml file. ->
		       JasperReport jasperReport = JasperCompileManager.compileReport("C:\\Users\\Cesar\\Documents\\ALPHA PROJECTS\\PPP\\new - ppp\\ppp\\ppp\\src\\main\\webapp\\ReportGenerator\\CTA-PP1.jrxml");
		       
		       //recibe parametros C:\Users\Cesar\Documents\ALPHA PROJECTS\PPP\ppp\ppp\src\main\webapp\ReportGenerator
		       JRDataSource vacio = new JREmptyDataSource(1);
		       JasperPrint out  = JasperFillManager.fillReport(jasperReport, Inparamets, vacio);
	          
		       // Make sure the output directory exists. src/main/webapp/Portafolios/FolderPPP/
		       outFoler ="C:\\Users\\Cesar\\Documents\\ALPHA PROJECTS\\PPP\\new - ppp\\ppp\\ppp\\src\\main\\webapp\\Portafolios\\FolderPPP\\"+codigo;
		       File outDir = new File(outFoler);
		       System.out.println("existe o no "+outDir.exists());
//		       if (outDir.exists() == false) { 
		    	    outDir.mkdirs();
//		    	}
		       
		       // Export to PDF. ->
		       outfilePDF ="C:\\Users\\Cesar\\Documents\\ALPHA PROJECTS\\PPP\\new - ppp\\ppp\\ppp\\src\\main\\webapp\\Portafolios\\FolderPPP\\"+codigo+"\\CartP-"+codigo+".pdf";
		       JasperExportManager.exportReportToPdfFile(out, outfilePDF);
		       System.out.println("Done!");
			
		} catch (JRException e) {	
			e.printStackTrace();
			System.out.println("Error en getReport :  "+e);
		}
		OutValues.put("folder", outFoler);
		OutValues.put("pdf", outfilePDF);
		return OutValues;

		
		
	}
	
}
