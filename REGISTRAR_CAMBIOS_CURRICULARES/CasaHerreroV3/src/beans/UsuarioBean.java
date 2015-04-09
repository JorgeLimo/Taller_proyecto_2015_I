package beans;

public class UsuarioBean {
	
	private String idPersona;
	private String nombre;
	private String apPaterno;
	private String apMaterno;
	private String dirDomicilio;
	private String correo;
	private String usuario;
	private String clave;
	private String idUbigeo;
	private String telefono;
		
	
	
	public UsuarioBean(String idPersona, String nombre, String apPaterno,
			String apMaterno, String dirDomicilio, String correo,
			String usuario, String clave, String idUbigeo, String telefono) {
		super();
		this.idPersona = idPersona;
		this.nombre = nombre;
		this.apPaterno = apPaterno;
		this.apMaterno = apMaterno;
		this.dirDomicilio = dirDomicilio;
		this.correo = correo;
		this.usuario = usuario;
		this.clave = clave;
		this.idUbigeo = idUbigeo;
		this.telefono = telefono;
	}
	public UsuarioBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getIdUbigeo() {
		return idUbigeo;
	}
	public void setIdUbigeo(String idUbigeo) {
		this.idUbigeo = idUbigeo;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getIdPersona() {
		return idPersona;
	}
	public void setIdPersona(String idPersona) {
		this.idPersona = idPersona;
	}
	public String getApPaterno() {
		return apPaterno;
	}
	public void setApPaterno(String apPaterno) {
		this.apPaterno = apPaterno;
	}
	public String getApMaterno() {
		return apMaterno;
	}
	public void setApMaterno(String apMaterno) {
		this.apMaterno = apMaterno;
	}
	public String getDirDomicilio() {
		return dirDomicilio;
	}
	public void setDirDomicilio(String dirDomicilio) {
		this.dirDomicilio = dirDomicilio;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}

}
