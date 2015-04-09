package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.G4_AlumnosAptos;
import beans.G4_CursoSeccionBean;
import dao.interfaces.G4_CursoSeccionDAO;
import daofactories.MySqlDaoFactory;

public class G4_CursoSeccion_MysqlDAO  extends MySqlDaoFactory implements G4_CursoSeccionDAO{

	@Override
	public boolean eliminar(int id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean agregar(G4_CursoSeccionBean eb) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<G4_CursoSeccionBean> listar() throws Exception {
		// TODO Auto-generated method stub


		
		
		List<G4_CursoSeccionBean> prueba = new ArrayList<G4_CursoSeccionBean>();
		
		try {
			
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(" SELECT  cu.idCurso AS codCur,cu.descripcion AS nomCurso,ci.descripcion AS ciclo ," +
					"cc.cantCredito AS creditos ,(select     count(distinct m.idPersona) from matricula m " +
					"inner join detallematricula dm on m.idMatricula=dm.idMatricula where   (dm.idCurso = cu.idCurso) and dm.nf>10.4  " +
					"group by dm.idCurso) as cantidad from ciclo ci " +
					"inner join  curriculacursociclo ccc on ci.idCiclo=ccc.idCiclo inner join curso cu on cu.idCurso=ccc.idCurso " +
					"inner join curriculacurso cc on cu.idCurso=cc.idCurso  group by codCur order  by ciclo;");

			G4_CursoSeccionBean eb = null;
			while(rs.next()){
				
				eb = new G4_CursoSeccionBean();
				
				
				eb.setCantAluAp(rs.getInt(""));
				eb.setCiclo(rs.getString(""));
				eb.setCodCurso(rs.getString(""));
				eb.setCreditos(rs.getInt(""));
				eb.setNomCurso(rs.getString(""));
				eb.setSeccion(rs.getString(""));
				eb.setTipoCurso(rs.getString(""));
				
				
				prueba.add(eb);
			}
			con.close();
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		return prueba;
		
		
		
		
		
		
		
	}

	@Override
	public boolean actualizar(G4_CursoSeccionBean eb) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<G4_CursoSeccionBean> listar(String cod) throws Exception {
		// TODO Auto-generated method stub


		
		List<G4_CursoSeccionBean> prueba = new ArrayList<G4_CursoSeccionBean>();
		System.out.println(cod+".------------");
		try {
			
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT cu.idCurso AS codCur,cu.descripcion AS nomCurso, ci.descripcion AS ciclo ,cc.cantCredito AS creditos from ciclo ci " +
					"inner join curriculacursociclo ccc on ci.idCiclo=ccc.idCiclo " +
					"inner join curso cu on cu.idCurso=ccc.idCurso " +
					"inner join curriculacurso cc on cu.idCurso=cc.idCurso where ci.idCiclo="+"'"+cod+"'");

												
					

			G4_CursoSeccionBean eb = null;
			while(rs.next()){
				eb = new G4_CursoSeccionBean();
				
				
				eb.setCantAluAp(rs.getInt(""));
				eb.setCiclo(rs.getString(""));
				eb.setCodCurso(rs.getString(""));
				eb.setCreditos(rs.getInt(""));
				eb.setNomCurso(rs.getString(""));
				eb.setSeccion(rs.getString(""));
				eb.setTipoCurso(rs.getString(""));
				
				
				prueba.add(eb);
				System.out.println(rs.getString("codCur"));
				
			}
		 
			con.close();
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		return prueba;
		
		
	}

	
}
