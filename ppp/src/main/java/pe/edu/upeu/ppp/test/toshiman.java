package pe.edu.upeu.ppp.test;

import org.springframework.beans.factory.annotation.Autowired;
import pe.edu.upeu.ppp.dao.EvaluacionesDAO;
import pe.edu.upeu.ppp.service.EvaluacionesService;

public class toshiman {
	@Autowired
	  static EvaluacionesService eO;
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		
			creardimension();
		
		
	}

	
	public static void creardimension()
	{
		System.out.println("hola mundo");
		String v_nombre[] = {"primero","segundo"+eO};
		String v_activo[]= {"1","1"};
		System.out.println(v_nombre + "  "+v_activo);
		try {
			int x=0;
					x=eO.CrearDimensiones(1, v_nombre, v_activo);
			if (x==1) {
				System.out.println("si");
			}else
			{
				System.out.println("no");
			}
		} catch (Exception exception) {
System.out.println("fallo en :" +exception);		}
		
	}
	
}
