package pe.edu.upeu.ppp.report;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

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
		
		Map<String, Object> OutValues = new HashMap<>();
		 String outfilePDF ="";
		 String outFoler ="";
		 String FileLocalReport ="src/main/webapp/ReportGenerator/CTA-PP1.jrxml";
		 
		try {

			//creamos la fecha actual
			   Date ahora = new Date();
               SimpleDateFormat formateador = new SimpleDateFormat("dd-MM-yyyy");
  		       String fecha = formateador.format(ahora);
			   
  		       //llenamos variables
			   Map<String,Object> Inparamets = new HashMap<String,Object>();
			   Inparamets.put("txtIdAlumno", idalumno);
			   Inparamets.put("txtIdVacante", idvacante);
			   
				// Compile jrxml file.
		       JasperReport jasperReport = JasperCompileManager.compileReport(FileLocalReport);
		       
		       //recibe parametros 
		       JRDataSource vacio = new JREmptyDataSource(1);
		       JasperPrint out  = JasperFillManager.fillReport(jasperReport, Inparamets, vacio);
	          
		       // Make sure the output directory exists.
		       outFoler ="src/main/webapp/Portafolios/FolderPPP/"+codigo;
		       File outDir = new File(outFoler);
		       outDir.mkdirs();
		       
		       // Export to PDF.
		       outfilePDF ="src/main/webapp/Portafolios/FolderPPP/"+codigo+"/CartP-"+codigo+".pdf";
		       JasperExportManager.exportReportToPdfFile(out, outfilePDF);
		       System.out.println("Done!");
			
		} catch (JRException e) {	
			e.printStackTrace();
			System.out.println("Error en getReport"+e);
		}
		OutValues.put("localPdf", FileLocalReport);
		OutValues.put("folder", outFoler);
		OutValues.put("pdf", outfilePDF);
		return OutValues;
	}
	
}
