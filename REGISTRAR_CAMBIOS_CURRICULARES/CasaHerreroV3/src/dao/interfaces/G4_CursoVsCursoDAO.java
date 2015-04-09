package dao.interfaces;

import java.util.List;
import java.util.Vector;


import beans.G4_CursoVsCursoBean;

public interface G4_CursoVsCursoDAO {
	public abstract boolean eliminar(int id) throws Exception;

	public abstract boolean agregar(G4_CursoVsCursoBean eb) throws Exception;

	public abstract List<G4_CursoVsCursoBean> listar() throws Exception;
	public abstract Vector<G4_CursoVsCursoBean> listarCurso() throws Exception;

	public abstract boolean actualizar(G4_CursoVsCursoBean eb) throws Exception;
	
	public abstract Vector<G4_CursoVsCursoBean> all()throws Exception;
}
