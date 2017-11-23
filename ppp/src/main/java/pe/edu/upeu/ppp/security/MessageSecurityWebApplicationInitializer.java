package pe.edu.upeu.ppp.security;

import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

public class MessageSecurityWebApplicationInitializer extends AbstractSecurityWebApplicationInitializer {

	public MessageSecurityWebApplicationInitializer() {
		super(SecurityConfig.class);
	}
	
}
