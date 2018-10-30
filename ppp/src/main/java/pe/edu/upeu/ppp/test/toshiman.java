package pe.edu.upeu.ppp.test;

import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import pe.edu.upeu.ppp.dao.EvaluacionesDAO;
import pe.edu.upeu.ppp.service.EvaluacionesService;
import pe.edu.upeu.ppp.utilitarios.EmailSend;

public class toshiman {
	
	
	static EmailSend es = new EmailSend();
	
	@Autowired
	  static EvaluacionesService eO;
	
	
	
	public static void main(String[] args) throws Exception {

		
		 Scanner sc = new Scanner(System.in);
	        int numero,fibo1,fibo2,i , fibo0 , sumar  = 0;
	        do{
	            System.out.print("Introduce el valor de N , mayor que 1 : ");
	            numero = sc.nextInt();
	        }while(numero<=1);
	        System.out.println("Los " + numero + " primeros términos de la serie de Fibonacci son:"); 

	        fibo0=0;
	        fibo1=1;
	        fibo2=1; 

	        System.out.print(fibo0 + " ");
	        System.out.print(fibo1 + " ");
	        for(i=2;i<=numero - 1;i++){
	             System.out.print(fibo2 + " ");
	             fibo2 = fibo1 + fibo2;
	             fibo1 = fibo2 - fibo1;
	             sumar =  sumar + fibo1;
	             
	        }
	        System.out.println();
	        System.out.println("La suma total es  -- >" + " " +  (sumar+1));
	    
		
//		
////			creardimension();
//		
//			 String destinatario =  "branduxjuarez@upeu.edu.pe"; //A quien le quieres escribir.
//			    String asunto = "Correo de prueba enviado desde Java";
//			    String cuerpo = "<h1>Esta es una prueba de correo...</h1>"
//			    		+ "<p>correo enviado desde java controller test-toshimoster</p>";
//			    es.enviarConGMail(destinatario, asunto, cuerpo);
			 
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
