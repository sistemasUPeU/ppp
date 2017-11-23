package pe.edu.upeu.ppp.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class CUserDTO implements UserDetails, Serializable{
	
	//for user
	private String idUsuario ;
	private String nombre;
	private String apellido;
	private String dni;
	private String celular;
	private String correo;
	private String usu;
	private String pass;
	private String activo;
	private String genero;
	
	
	private ArrayList<Map<String, Object>> List_Permiso;
	
	boolean accountNonExpired;
	boolean AccountNonLocked;
	boolean CredentialsNonExpired;
	boolean Enabled;
	
	public CUserDTO() {
		
	}
	
	
	public CUserDTO(Map<String,Object> UserT ,  ArrayList<Map<String, Object>> listmod, 
			boolean accountNonExpired, boolean AccountNonLocked, boolean CredentialsNonExpired, boolean Enabled ) {
			this.nombre = ((String) UserT.get("NOMBRE")).trim();
			this.apellido = ((String) UserT.get("APELLIDOS")).trim();
			this.dni = ((String) UserT.get("DNI")).trim();
			this.celular = ((String) UserT.get("CELULAR")).trim();
			this.correo = ((String) UserT.get("CORREO")).trim();
			this.usu = ((String) UserT.get("USU")).trim();
			this.pass = ((String) UserT.get("PASS")).trim();
			this.activo = ((String) UserT.get("ACTIVO")).trim();
			this.genero = ((String) UserT.get("GENERO")).trim();
			
			
			//Permit session
			this.List_Permiso = listmod;
			this.accountNonExpired = accountNonExpired;
			this.AccountNonLocked = AccountNonLocked;
			this.CredentialsNonExpired = CredentialsNonExpired;
			this.Enabled = Enabled;
		
	}

	public String getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(String idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getUsu() {
		return usu;
	}

	public void setUsu(String usu) {
		this.usu = usu;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getActivo() {
		return activo;
	}

	public void setActivo(String activo) {
		this.activo = activo;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}


	public ArrayList<Map<String, Object>> getList_Permiso() {
		return List_Permiso;
	}

	public void setList_Permiso(ArrayList<Map<String, Object>> list_Permiso) {
		List_Permiso = list_Permiso;
	}
	

	// Getter and Setters the session for spring security
	
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return null;
	}

	public String getPassword() {
		// TODO Auto-generated method stub
		return pass;
	}

	public String getUsername() {
		// TODO Auto-generated method stub
		return usu;
	}

	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return accountNonExpired;
	}

	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return AccountNonLocked;
	}

	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return CredentialsNonExpired;
	}

	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return Enabled;
	}
}
