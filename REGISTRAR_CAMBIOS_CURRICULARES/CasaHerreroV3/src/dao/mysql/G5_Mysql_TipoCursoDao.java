package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import beans.G5_LogrosBean;
import beans.G5_TipoCursoBean;
import dao.interfaces.G5_LogroDao;
import dao.interfaces.G5_TipoCursoDao;
import daofactories.MySqlDaoFactory;

public class G5_Mysql_TipoCursoDao extends MySqlDaoFactory implements G5_TipoCursoDao{

	@Override
	public Vector<G5_TipoCursoBean> listarTipoCurso() throws Exception {
		// TODO Auto-generated method stub
		Vector<G5_TipoCursoBean> vectortipocurso = new Vector<G5_TipoCursoBean>();
		try {
			
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * from criterionota");
			G5_TipoCursoBean tipocurso = null;
			
			while (rs.next()) {
				tipocurso = new G5_TipoCursoBean();
				tipocurso.setId(rs.getString("idCriterioNota"));
				tipocurso.setDescripcion(rs.getString("criterio"));
				vectortipocurso.add(tipocurso);
			}
			con.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(" "+e.getMessage());
		}
		
		
		return vectortipocurso;
	}

}
