package pe.edu.upeu.ppp.report;

import java.io.File;
import java.io.IOException;
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
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.export.ExporterInput;
import net.sf.jasperreports.export.OutputStreamExporterOutput;
import net.sf.jasperreports.export.SimpleExporterInput;
import net.sf.jasperreports.export.SimpleOutputStreamExporterOutput;
import net.sf.jasperreports.export.SimplePdfExporterConfiguration;

public class main {

	public static void main(String[] args)  throws JRException, IOException  {
		
		 // Compile jrxml file.
	       JasperReport jasperReport = JasperCompileManager.compileReport("src/main/webapp/ReportGenerator/CTA-PP1.jrxml");
	 
	       // Parameters for report
	       Map<String, Object> parameters = new HashMap<String, Object>();
	       parameters.put("txtCiclo", "vrabndux");
	 
	       
	       //recibe parametros 
	       JRDataSource vacio = new JREmptyDataSource(1);
	       JasperPrint out  = JasperFillManager.fillReport(jasperReport, parameters, vacio);
           String name = "brandux";
	       // Make sure the output directory exists.
	       File outDir = new File("src/main/webapp/Portafolios/FolderPPP/"+name);
	       outDir.mkdirs();
	       
	       String ruta ="src/main/webapp/Portafolios/FolderPPP/"+name+"/CartP-"+name+".pdf";
	       // Export to PDF.
	       JasperExportManager.exportReportToPdfFile(out, ruta);
	        
	       System.out.println("Done!");
		
		
		//---------------------------------------------------------------------------------------
//		String reportSrcFile = "src/main/webapp/ReportGenerator/CTA-PP1.jrxml";
//        
//        // First, compile jrxml file.
//        JasperReport jasperReport =  JasperCompileManager.compileReport(reportSrcFile);
// 
//      
//        // Parameters for report
//        Map<String, Object> parameters = new HashMap<String, Object>();
//        parameters.put("txtCiclo", "vrabndux");
//        JasperPrint print = JasperFillManager.fillReport(jasperReport, parameters);
// 
//        // Make sure the output directory exists.
//        String name = "brandux";
//        File outDir = new File("src/main/webapp/ReportGenerator/"+name);
//        outDir.mkdirs();
// 
//        // PDF Exportor.
//        JRPdfExporter exporter = new JRPdfExporter();
// 
//        ExporterInput exporterInput = new SimpleExporterInput(print);
//        // ExporterInput
//        exporter.setExporterInput(exporterInput);
// 
//        // ExporterOutput
//        String ruta ="src/main/webapp/ReportGenerator/"+name+"/CartP-"+name+".pdf";
//        OutputStreamExporterOutput exporterOutput = new SimpleOutputStreamExporterOutput( ruta);
//        // Output
//        exporter.setExporterOutput(exporterOutput);
// 
//        //
//        SimplePdfExporterConfiguration configuration = new SimplePdfExporterConfiguration();
//        exporter.setConfiguration(configuration);
//        exporter.exportReport();
// 
//        System.out.print("Done!");
		
	}

}
