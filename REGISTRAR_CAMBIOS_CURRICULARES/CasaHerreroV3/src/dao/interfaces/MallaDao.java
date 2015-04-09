package dao.interfaces;

import java.util.Vector;

import beans.CursoBean;

public interface MallaDao {
	public abstract Vector<CursoBean> listarCursosMalla(String mencion); 
	public abstract Vector<CursoBean> listarCursosAlumno(String codAlumno); 

}
