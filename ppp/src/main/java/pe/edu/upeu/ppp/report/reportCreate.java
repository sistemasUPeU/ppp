package pe.edu.upeu.ppp.report;

import java.io.File;
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

	
	public Map<String, Object> getReport(String name , Map<String, Object> Inparamets, int id){
		
		Map<String, Object> OutValues = new HashMap<>();
		 String outfilePDF ="";
		 String outFoler ="";
		 
		try {
				// Compile jrxml file.
		       JasperReport jasperReport = JasperCompileManager.compileReport("src/main/webapp/ReportGenerator/CTA-PP1.jrxml");
		 
		       // llenado de datos para reporte
		       Map<String, Object> parameters = new HashMap<String, Object>();
		       parameters.put("Fecha", Inparamets.get("Fecha").toString().trim());
		       parameters.put("txtRepresentante", Inparamets.get("txtRepresentante").toString().trim());
		       parameters.put("txtCargoRp", Inparamets.get("txtCargoRp").toString().trim());
		       parameters.put("txtEmpresa", Inparamets.get("txtEmpresa").toString().trim());
		       parameters.put("txtDireccion", Inparamets.get("txtDireccion").toString().trim());
		       parameters.put("txtPracticante", Inparamets.get("txtPracticante").toString().trim());
		       parameters.put("txtGenero", Inparamets.get("txtGenero").toString().trim());
		       parameters.put("txtCodigo", Inparamets.get("txtCodigo").toString().trim());
		       parameters.put("txtCiclo", Inparamets.get("txtCiclo").toString().trim());
		       parameters.put("txtAreaTrabajo", Inparamets.get("txtAreaTrabajo").toString().trim());
		       parameters.put("txtId", Inparamets.get("txtId").toString().trim());
		       
		       
		       //recibe parametros 
		       JRDataSource vacio = new JREmptyDataSource(1);
		       JasperPrint out  = JasperFillManager.fillReport(jasperReport, parameters, vacio);
	          
		       // Make sure the output directory exists.
		       outFoler ="src/main/webapp/Portafolios/FolderPPP/"+name;
		       File outDir = new File(outFoler);
		       outDir.mkdirs();
		       
		       // Export to PDF.
		       outfilePDF ="src/main/webapp/Portafolios/FolderPPP/"+name+"/CartP-"+name+".pdf";
		       JasperExportManager.exportReportToPdfFile(out, outfilePDF);
		       System.out.println("Done!");
			
		} catch (JRException e) {	
			e.printStackTrace();
			System.out.println("Error en getReport"+e);
		}
		OutValues.put("folder", outFoler);
		OutValues.put("pdf", outfilePDF);
		OutValues.put("id", id);
		
		return OutValues;
	}
	
}
