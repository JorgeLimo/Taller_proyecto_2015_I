package beans;

public class EmpleadoBean {
	
	private String idPersona;
	private int idRol;
	
	public String getIdPersona() {
		return idPersona;
	}
	public void setIdPersona(String idPersona) {
		this.idPersona = idPersona;
	}
	public int getIdRol() {
		return idRol;
	}
	public void setIdRol(int idRol) {
		this.idRol = idRol;
	}
	public EmpleadoBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EmpleadoBean(String idPersona, int idRol) {
		super();
		this.idPersona = idPersona;
		this.idRol = idRol;
	}
	
	
	

}
