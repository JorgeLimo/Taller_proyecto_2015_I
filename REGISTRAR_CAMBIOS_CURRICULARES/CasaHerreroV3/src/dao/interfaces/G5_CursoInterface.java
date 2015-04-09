package dao.interfaces;

import java.util.List;
import java.util.Vector;

import beans.G5_CursoBean;

public interface G5_CursoInterface {

	public abstract Vector<G5_CursoBean> listar() throws Exception;
	
	public abstract String seleccionarXid(String id) throws Exception;

	
}
