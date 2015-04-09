package beans;

import java.util.Vector;

public class CursoBean {

	private String id;
	private String nombre;
	private String area;
	private String ciclo;
	private int creditos;
	private Vector<String> prerequisitos;
	private int otrosrequisitos;
	private int x;
	private int y;
	
	public CursoBean(){
		prerequisitos=new Vector<String>();
	}
	public int getX() {
		return x;
	}

	public void setX(int x) {
		this.x = x;
	}

	public int getY() {
		return y;
	}

	public void setY(int y) {
		this.y = y;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getCiclo() {
		return ciclo;
	}

	public void setCiclo(String ciclo) {
		this.ciclo = ciclo;
	}

	public int getCreditos() {
		return creditos;
	}

	public void setCreditos(int creditos) {
		this.creditos = creditos;
	}

	public Vector<String> getPrerequisitos() {
		return prerequisitos;
	}

	public void addPrerequisitos(String prerequisitos) {
		this.prerequisitos.add(prerequisitos);
	}

	public int getOtrosrequisitos() {
		return otrosrequisitos;
	}

	public void setOtrosrequisitos(int otrosrequisitos) {
		this.otrosrequisitos = otrosrequisitos;
	}

}
