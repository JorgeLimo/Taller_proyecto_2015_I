package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.util.Vector;

import beans.G4_CursoVsCursoBean;
import beans.G4_MarcoCursoBean;
import dao.interfaces.G4_CursoMarcoDAO;
import daofactories.MySqlDaoFactory;

public class G4_MarcoCurso_MysqlDAO extends MySqlDaoFactory implements G4_CursoMarcoDAO{

	@Override
	public boolean eliminar(int id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean agregar(G4_MarcoCursoBean eb) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<G4_MarcoCursoBean> listar() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Vector<G4_MarcoCursoBean> listarCurso() throws Exception {
		Vector<G4_MarcoCursoBean> cursos = null;
		cursos = new Vector<G4_MarcoCursoBean>();
		
		try {
			
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			//ResultSet rs = stmt.executeQuery("SELECT idcurso FROM curso c");
			//** ResultSet rs = stmt.executeQuery("select distinct dm.idCurso from matricula m i" +
				//	"nner join detallematricula dm on dm.idMatricula=m.idMatricula " +
					//"order by m.idPersona");
			
			ResultSet rs = stmt.executeQuery("select distinct dm.idCurso,c.descripcion from matricula m " +
					"inner join detallematricula dm on dm.idMatricula=m.idMatricula  " +
					"inner join curso c on c.idcurso=dm.idcurso order by m.idPersona");		
			
			
			
			 

			G4_MarcoCursoBean eb = null;
			while(rs.next()){
				
			
				
					
					 
					 
					eb = new G4_MarcoCursoBean();
					if(rs.getString("idcurso")==null){
						
						eb.setIdCursoMArco(rs.getString("00")); 
					}else{
						eb.setIdCursoMArco(rs.getString("idcurso")); 
						eb.setNombreCurso(rs.getString("descripcion")); 
						 System.out.println(cursos.size());
					}
					 
					cursos.add(eb);
				
			
				
				
			}
			con.close();
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		return cursos;
	}

	@Override
	public boolean actualizar(G4_MarcoCursoBean eb) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Vector<G4_MarcoCursoBean> all() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
