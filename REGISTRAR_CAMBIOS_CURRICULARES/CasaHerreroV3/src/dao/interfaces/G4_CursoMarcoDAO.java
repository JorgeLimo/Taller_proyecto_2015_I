package dao.interfaces;

import java.util.List;
import java.util.Vector;

 
import beans.G4_MarcoCursoBean;

public interface G4_CursoMarcoDAO {
	public abstract boolean eliminar(int id) throws Exception;

	public abstract boolean agregar(G4_MarcoCursoBean eb) throws Exception;

	public abstract List<G4_MarcoCursoBean> listar() throws Exception;
	public abstract Vector<G4_MarcoCursoBean> listarCurso() throws Exception;

	public abstract boolean actualizar(G4_MarcoCursoBean eb) throws Exception;
	
	public abstract Vector<G4_MarcoCursoBean> all()throws Exception;
}
