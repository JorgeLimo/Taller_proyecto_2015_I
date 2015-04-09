package beans;

public class G1PlanEstudioBean {

	private String idCurso;
	private String descripcion;
	private String descrip;
	private int cantCredito;
	private int cantHoraTeo;
	private int cantHoraLab;
	private int cantHoraPrac;
	private int idCursoPre;
	
	
	public G1PlanEstudioBean(String idCurso, String descripcion,
			String descrip, int cantCredito, int cantHoraTeo, int cantHoraLab,
			int cantHoraPrac, int idCursoPre) {
		super();
		this.idCurso = idCurso;
		this.descripcion = descripcion;
		this.descrip = descrip;
		this.cantCredito = cantCredito;
		this.cantHoraTeo = cantHoraTeo;
		this.cantHoraLab = cantHoraLab;
		this.cantHoraPrac = cantHoraPrac;
		this.idCursoPre = idCursoPre;
	}

	public G1PlanEstudioBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getIdCurso() {
		return idCurso;
	}
	public void setIdCurso(String idCurso) {
		this.idCurso = idCurso;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getDescrip() {
		return descrip;
	}
	public void setDescrip(String descrip) {
		this.descrip = descrip;
	}
	public int getCantCredito() {
		return cantCredito;
	}
	public void setCantCredito(int cantCredito) {
		this.cantCredito = cantCredito;
	}
	public int getCantHoraTeo() {
		return cantHoraTeo;
	}
	public void setCantHoraTeo(int cantHoraTeo) {
		this.cantHoraTeo = cantHoraTeo;
	}
	public int getCantHoraLab() {
		return cantHoraLab;
	}
	public void setCantHoraLab(int cantHoraLab) {
		this.cantHoraLab = cantHoraLab;
	}
	public int getCantHoraPrac() {
		return cantHoraPrac;
	}
	public void setCantHoraPrac(int cantHoraPrac) {
		this.cantHoraPrac = cantHoraPrac;
	}
	public int getIdCursoPre() {
		return idCursoPre;
	}
	public void setIdCursoPre(int idCursoPre) {
		this.idCursoPre = idCursoPre;
	}
	
	
	
	
	
}
