package dao.interfaces;

import java.util.List;

import beans.*;

public interface Gn_PruebaDAO {

	public abstract boolean eliminar(int id) throws Exception;

	public abstract boolean agregar(Gn_PruebaBean eb) throws Exception;

	public abstract List<Gn_PruebaBean> listar() throws Exception;

	public abstract boolean actualizar(Gn_PruebaBean eb) throws Exception;
	
}
