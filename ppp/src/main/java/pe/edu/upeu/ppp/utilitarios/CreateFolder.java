package pe.edu.upeu.ppp.utilitarios;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class CreateFolder {

public Map<String, Object> getReport(String name){
		
		Map<String, Object> OutValues = new HashMap<>();
		String outFoler ="";
 
		outFoler ="src/main/webapp/Portafolios/FolderPPP/"+name;
		File outDir = new File(outFoler);
		outDir.mkdirs();
		   
		OutValues.put("folder", outFoler);
		return OutValues;
	}
	
}
