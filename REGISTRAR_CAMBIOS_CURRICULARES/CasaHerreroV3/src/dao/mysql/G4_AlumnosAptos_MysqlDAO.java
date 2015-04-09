package dao.mysql;

import dao.interfaces.G4_AlumnosAptosDAO;
 
import daofactories.MySqlDaoFactory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import beans.G4_AlumnosAptos;

 
public class G4_AlumnosAptos_MysqlDAO extends MySqlDaoFactory implements G4_AlumnosAptosDAO {

	@Override
	public boolean eliminar(int id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean agregar(G4_AlumnosAptos eb) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<G4_AlumnosAptos> listar() throws Exception {
		// TODO Auto-generated method stub
	
		List<G4_AlumnosAptos> prueba = new ArrayList<G4_AlumnosAptos>();
		
		try {
			
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(" SELECT  cu.idCurso AS codCur,cu.descripcion AS nomCurso,ci.descripcion AS ciclo ," +
					"cc.cantCredito AS creditos ,(select     count(distinct m.idPersona) from matricula m " +
					"inner join detallematricula dm on m.idMatricula=dm.idMatricula where   (dm.idCurso = cu.idCurso) and dm.nf>10.4  " +
					"group by dm.idCurso) as cantidad from ciclo ci " +
					"inner join  curriculacursociclo ccc on ci.idCiclo=ccc.idCiclo inner join curso cu on cu.idCurso=ccc.idCurso " +
					"inner join curriculacurso cc on cu.idCurso=cc.idCurso  group by codCur order  by creditos desc;");

			G4_AlumnosAptos eb = null;
			while(rs.next()){
				eb = new G4_AlumnosAptos();
				eb.setIdCurso(rs.getString("codCur"));
				eb.setNombreCurso(rs.getString("nomCurso"));
				eb.setCiclo(rs.getString("ciclo"));
				eb.setCantCreditos(Integer.parseInt(rs.getString("creditos")));
				eb.setCantAlumnosAptos(rs.getInt("cantidad"));
				prueba.add(eb);
			}
			con.close();
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		return prueba;
	}

	@Override
	public boolean actualizar(G4_AlumnosAptos eb) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<G4_AlumnosAptos> listar(String cod) throws Exception {
		// TODO Auto-generated method stub
		
		List<G4_AlumnosAptos> prueba = new ArrayList<G4_AlumnosAptos>();
		System.out.println(cod+".------------");
		try {
			
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT cu.idCurso AS codCur,cu.descripcion AS nomCurso, ci.descripcion AS ciclo ,cc.cantCredito AS creditos from ciclo ci " +
					"inner join curriculacursociclo ccc on ci.idCiclo=ccc.idCiclo " +
					"inner join curso cu on cu.idCurso=ccc.idCurso " +
					"inner join curriculacurso cc on cu.idCurso=cc.idCurso where ci.idCiclo="+"'"+cod+"' order  by creditos desc");

												
					

			G4_AlumnosAptos eb = null;
			while(rs.next()){
				eb = new G4_AlumnosAptos();
				eb.setIdCurso(rs.getString("codCur"));
				eb.setNombreCurso(rs.getString("nomCurso"));
				eb.setCiclo(rs.getString("ciclo"));
				eb.setCantCreditos(Integer.parseInt(rs.getString("creditos")));
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
