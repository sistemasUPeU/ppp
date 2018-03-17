package pe.edu.upeu.ppp.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.apache.catalina.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class CUserDTO implements UserDetails, Serializable{
	
	//for user
	private String IDUSER ;
	private String nombre;
	private String apellido;
	private String dni;
	private String celular;
	private String correo;
	private String usu;
	private String pass;
	private String idestado;
	private String genero;
	
	private String idrol;
	private String Rol_name;
	
	// periodo
			public String getRol_name() {
				return Rol_name;
			}

			public void setRol_name(String Rol_name) {
				this.Rol_name = Rol_name;
			}
	
	private String ciclo;
	
	// periodo
		public String getCiclo() {
			return ciclo;
		}

		public void setCiclo(String ciclo) {
			this.ciclo = ciclo;
		}
	
	private String Periodo;
		
	// periodo
	public String getPeriodo() {
		return Periodo;
	}

	public void setPeriodo(String Periodo) {
		this.Periodo = Periodo;
	}
		
	//rol
	public String getidrol() {
		return idrol;
	}

	public void setidrol(String idrol) {
		this.idrol = idrol;
	}
	
	private List<Map<String, Object>> List_Permiso;
	
	private Map<String, Object> user;
	
	
	boolean accountNonExpired;
	boolean AccountNonLocked;
	boolean CredentialsNonExpired;
	boolean Enabled;

	public String IDUSER() {
		return IDUSER;
	}


	public CUserDTO(ArrayList<Map<String, Object>> userinfo ,  String ciclo, String Periodo , boolean accountNonExpired,
			boolean accountNonLocked, boolean credentialsNonExpired, boolean enabled) {
			IDUSER = userinfo.get(0).get("IDUSER").toString().trim();
			this.nombre = userinfo.get(0).get("NOMBRE").toString().trim();
			this.apellido = userinfo.get(0).get("APELLIDOS").toString().trim();
			this.dni =  userinfo.get(0).get("DNI").toString().trim();
			this.celular = userinfo.get(0).get("CELULAR").toString().trim();
			this.usu = userinfo.get(0).get("USU").toString().trim();
			this.pass = userinfo.get(0).get("PASS").toString().trim();
			this.idestado = userinfo.get(0).get("ESTADO").toString().trim();
			this.genero = userinfo.get(0).get("GENERO").toString().trim();
			this.idrol = userinfo.get(0).get("IDROL").toString().trim();
			this.Rol_name = userinfo.get(0).get("ROL").toString().trim();
			
			this.ciclo =ciclo;
			this.Periodo =Periodo;
			
			this.accountNonExpired = accountNonExpired;
			AccountNonLocked = accountNonLocked;
			CredentialsNonExpired = credentialsNonExpired;
			Enabled = enabled;
	}

	

	public void setIDUSER(String IDUSER) {
		this.IDUSER = IDUSER;
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

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}


	public List<Map<String, Object>> getList_Permiso() {
		return List_Permiso;
	}

	public void setList_Permiso(List<Map<String, Object>> list_Permiso) {
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

	public String getIdestado() {
		return idestado;
	}

	public void setIdestado(String idestado) {
		this.idestado = idestado;
	}
}
