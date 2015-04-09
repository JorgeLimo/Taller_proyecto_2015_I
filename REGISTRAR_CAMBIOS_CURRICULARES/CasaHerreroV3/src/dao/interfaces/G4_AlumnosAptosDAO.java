package dao.interfaces;

import java.util.List;

import beans.G4_AlumnosAptos;

public interface G4_AlumnosAptosDAO {
	public abstract boolean eliminar(int id) throws Exception;

	public abstract boolean agregar(G4_AlumnosAptos eb) throws Exception;

	public abstract List<G4_AlumnosAptos> listar() throws Exception;

	public abstract boolean actualizar(G4_AlumnosAptos eb) throws Exception;
	
	public abstract List<G4_AlumnosAptos> listar(String cod) throws Exception;
}
