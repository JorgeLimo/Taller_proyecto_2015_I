package dao.interfaces;

import java.util.List;

import beans.*;

public interface G5_PruebaDAO {

	public abstract boolean eliminar(int id) throws Exception;

	public abstract boolean agregar(G5_PruebaBean eb) throws Exception;

	public abstract List<G5_PruebaBean> listar() throws Exception;
	
	public abstract boolean actualizar(G5_PruebaBean eb) throws Exception;
	
	
	
}
