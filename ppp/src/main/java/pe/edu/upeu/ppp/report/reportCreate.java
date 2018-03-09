package pe.edu.upeu.ppp.report;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;

public class reportCreate {
	
	 static Connection conn = null;

	
	public Map<String, Object> getReport(String codigo , int idalumno , int idvacante ) throws SQLException{
		
		String jasperFile ="C:\\Users\\Cesar\\Documents\\ALPHA PROJECTS\\PPP\\new - ppp\\ppp\\ppp\\src\\main\\webapp\\ReportGenerator\\CTA-PP1.jrxml";
		Map<String, Object> OutValues = new HashMap<>();
		 String outfilePDF ="";
		 String outFoler ="";
		 
	    try {
	    	// Cargamos el driver JDBC
	    	 Class.forName("oracle.jdbc.OracleDriver");
		     conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.21.14:1521:XE","U_BRAYER", "brayer123");
		     conn.setAutoCommit(false);
		      
	    	//llenamos variables creamos la fecha actual
            Date ahora = new Date();
            SimpleDateFormat formateador = new SimpleDateFormat("dd-MM-yyyy");
		    String fecha = formateador.format(ahora);
	    	
	    	Map<String,Object> Inparamets = new HashMap<String,Object>();
			Inparamets.put("Fecha", fecha);
			Inparamets.put("txtIdAlumno", idalumno);
			Inparamets.put("txtIdVacante", idvacante);
			System.out.println(Inparamets);
	      
			JasperReport report = JasperCompileManager.compileReport(jasperFile);
			JasperPrint print = JasperFillManager.fillReport(report, Inparamets, conn);
			   
			//generar Carpeta 
			
			   outFoler ="C:\\Users\\Cesar\\Documents\\ALPHA PROJECTS\\PPP\\new - ppp\\ppp\\ppp\\src\\main\\webapp\\Portafolios\\FolderPPP\\"+codigo;
		       File outDir = new File(outFoler);
		       System.out.println("existe o no "+outDir.exists());
		       if (outDir.exists() == false) { 
	    	       outDir.mkdirs();
	    	       outfilePDF ="C:\\Users\\Cesar\\Documents\\ALPHA PROJECTS\\PPP\\new - ppp\\ppp\\ppp\\src\\main\\webapp\\Portafolios\\FolderPPP\\"+codigo+"\\CartP-"+codigo+".pdf";
		    	}else {
		    		outfilePDF ="C:\\Users\\Cesar\\Documents\\ALPHA PROJECTS\\PPP\\new - ppp\\ppp\\ppp\\src\\main\\webapp\\Portafolios\\FolderPPP\\"+codigo+"\\CartP-"+codigo+"*.pdf";
		    	}
		       System.out.println("existe ?¡:"+outDir.exists());
		       
			 // Exporta el informe a PDF
			 JasperExportManager.exportReportToPdfFile(print,outfilePDF);
	     
	    }
	    catch (Exception e) {
	      e.printStackTrace();
	    }
	    finally {
	      try {
	        if (conn != null) {
	          conn.rollback();
	          System.out.println("ROLLBACK EJECUTADO");
	          conn.close();
	        }
	      }
	      catch (Exception e) {
	        e.printStackTrace();
	      }
	    }
	    
	    OutValues.put("folder", outFoler);
		OutValues.put("pdf", outfilePDF);
		return OutValues;
	}
	
}
