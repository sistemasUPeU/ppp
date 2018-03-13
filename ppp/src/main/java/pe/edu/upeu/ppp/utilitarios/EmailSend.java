package pe.edu.upeu.ppp.utilitarios;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailSend {

	
	public int enviarConGMail(String destinatario, String asunto, String cuerpo) {
		int a =0;
	    // Esto es lo que va delante de @gmail.com en tu cuenta de correo. Es el remitente tambi�n.
	     String remitente = "upeuppp@gmail.com";  //Para la direcci�n nomcuenta@gmail.com

	    Properties props = System.getProperties();
	    props.put("mail.smtp.host", "smtp.gmail.com");  //El servidor SMTP de Google
	    props.put("mail.smtp.user", remitente);
	    props.put("mail.smtp.clave", "miClaveDeGMail");    //La clave de la cuenta
	    props.put("mail.smtp.auth", "true");    //Usar autenticaci�n mediante usuario y clave
	    props.put("mail.smtp.starttls.enable", "true"); //Para conectar de manera segura al servidor SMTP
	    props.put("mail.smtp.port", "587"); //El puerto SMTP seguro de Google

	    Session session = Session.getDefaultInstance(props);
	    MimeMessage message = new MimeMessage(session);

	    try {
	        message.setFrom(new InternetAddress(remitente));
	        message.addRecipients(Message.RecipientType.TO, destinatario);   //Se podr�an a�adir varios de la misma manera
	        message.setSubject(asunto);
	        message.setText(cuerpo );
	        
	        Transport transport = session.getTransport("smtp");
	        transport.connect("smtp.gmail.com", remitente, "ppp-team123");
	        transport.sendMessage(message, message.getAllRecipients());
	        transport.close();
	        a =1;
	    }
	    catch (MessagingException me) {
	        me.printStackTrace();   //Si se produce un error
	    }
	
	return a;
	}
	
}
