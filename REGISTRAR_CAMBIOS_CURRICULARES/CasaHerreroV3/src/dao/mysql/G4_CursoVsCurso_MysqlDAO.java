package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

 
import beans.G4_CicloBean;
import beans.G4_CursoVsCursoBean;
import dao.interfaces.G4_CursoVsCursoDAO;
import daofactories.MySqlDaoFactory;

public class G4_CursoVsCurso_MysqlDAO extends MySqlDaoFactory implements G4_CursoVsCursoDAO{

	@Override
	public boolean eliminar(int id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean agregar(G4_CursoVsCursoBean eb) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<G4_CursoVsCursoBean> listar() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean actualizar(G4_CursoVsCursoBean eb) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Vector<G4_CursoVsCursoBean> all() throws Exception {
		// TODO Auto-generated method stub
		
		Vector<G4_CursoVsCursoBean> cursos = null;
		cursos = new Vector<G4_CursoVsCursoBean>();
		
		try {
			
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select m.idPersona  ,dm.idCurso from matricula m " +
					"inner join detallematricula dm on dm.idMatricula=m.idMatricula " +
					"order by m.idPersona");



			G4_CursoVsCursoBean eb = null;
			while(rs.next()){
				eb = new G4_CursoVsCursoBean();
				eb.setAlumno(rs.getString("m.idPersona"));
				eb.setCurso(rs.getString("dm.idCurso"));
				 
				cursos.add(eb);
			}
			con.close();
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		return cursos;
	}

	@Override
	public Vector<G4_CursoVsCursoBean> listarCurso() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	 

}
