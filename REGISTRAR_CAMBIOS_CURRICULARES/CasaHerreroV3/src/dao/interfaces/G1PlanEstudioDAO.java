package dao.interfaces;
import java.util.ArrayList;
import java.util.List;

import beans.*;

public interface G1PlanEstudioDAO {
	
	public abstract List<G1PlanEstudioBean>listar() throws Exception;
	
	public abstract ArrayList<G1CursoBean> listarCursos() throws Exception;
	public abstract ArrayList<G1AreaBean> listarAreas() throws Exception;
	public abstract ArrayList<G1CicloBean> listarCiclos() throws Exception;
	
	public abstract G1CursoBean buscarCurso(String descripcion) throws Exception;
	public abstract G1CursoBean buscarCicloxNombre(String descripcion) throws Exception;
	public abstract ArrayList<G1CursoBean> buscarCursoxCod(ArrayList<G1CursoBean> cursos) throws Exception;
	
	public abstract G1CursoBean obtenerCredito(String descripcion) throws Exception; 
	public abstract ArrayList<G1CursoBean> obtenerCiclo(String descripcion) throws Exception;
	public abstract ArrayList<G1CursoBean> obtenerRequisito(String descripcion) throws Exception;
	
	public abstract int darDeBaja(String idCurso) throws Exception;
	public abstract int modificarCredito(String idCurso, int cantCredito) throws Exception;
	public abstract int modificarHoras(String idCurso, int hteo, int hlab, int hpra) throws Exception;
	
	public abstract ArrayList<G1CursoBean> filtrarCurso(String descripcion) throws Exception;

}
