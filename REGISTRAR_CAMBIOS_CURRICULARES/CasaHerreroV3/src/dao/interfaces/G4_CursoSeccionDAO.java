package dao.interfaces;

import java.util.List;

import beans.G4_CursoSeccionBean;;

public interface G4_CursoSeccionDAO {

	
	public abstract boolean eliminar(int id) throws Exception;

	public abstract boolean agregar(G4_CursoSeccionBean eb) throws Exception;

	public abstract List<G4_CursoSeccionBean> listar() throws Exception;

	public abstract boolean actualizar(G4_CursoSeccionBean eb) throws Exception;
	
	public abstract List<G4_CursoSeccionBean> listar(String cod) throws Exception;
}
