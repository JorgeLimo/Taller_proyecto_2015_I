package dao.interfaces;

import java.util.List;

import beans.G4_AlumnosAptos;
import beans.G4_CicloBean;

public interface G4_CicloDAO {
	public abstract boolean eliminar(int id) throws Exception;

	public abstract boolean agregar(G4_CicloBean eb) throws Exception;

	public abstract List<G4_CicloBean> listar() throws Exception;

	public abstract boolean actualizar(G4_CicloBean eb) throws Exception;
}
