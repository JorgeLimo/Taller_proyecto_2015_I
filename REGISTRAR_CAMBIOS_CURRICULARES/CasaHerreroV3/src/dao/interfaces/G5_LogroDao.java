package dao.interfaces;
import java.util.Vector;

import beans.*;



public interface G5_LogroDao {

	public abstract Vector<G5_LogrosBean> listarLogrosxcurso(String idcurso) throws Exception;
	
	public abstract int agregarLogro(int idDesXLogro, String idcurso,String idtipocurso, String logro, String nivel) throws Exception;
	
	public abstract G5_LogrosBean mayorID() throws Exception;
	
	public abstract Vector<G5_TablaLogrosBean> listarTablaLogros() throws Exception;
	
	public abstract Vector<G5_NivelBean> listarNiveles() throws Exception;
	
}
