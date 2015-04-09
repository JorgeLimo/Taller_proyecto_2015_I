package dao.interfaces;

import java.util.List;

import beans.*;

public interface UsuarioDAO {

	public abstract boolean eliminar(int id) throws Exception;

	public abstract boolean agregar(UsuarioBean user) throws Exception;

	public abstract List<UsuarioBean> listar() throws Exception;

	public abstract boolean actualizar(UsuarioBean user) throws Exception;

	public abstract UsuarioBean verificar(String us, String pass) throws Exception;
	
	public abstract EmpleadoBean verificarDocente(String id) throws Exception;
	
	public abstract String obtenerNombre(String id) throws Exception;
}
