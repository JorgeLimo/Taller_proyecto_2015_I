package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import beans.G5_CursoBean;
import beans.G5_LogrosBean;
import beans.G5_NivelBean;
import beans.G5_TablaLogrosBean;
import dao.interfaces.*;
import daofactories.MySqlDaoFactory;

public class G5_Mysql_LogrosDao extends MySqlDaoFactory implements G5_LogroDao{

	@Override
	public Vector<G5_LogrosBean> listarLogrosxcurso(String idcurso) throws Exception {
		// TODO Auto-generated method stub
		Vector<G5_LogrosBean> logroxcurso = new Vector<G5_LogrosBean>();
		try {
			
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select idCurso,idCriterioNota,b.nombre,idNivel from desxlogro a,logro b where a.idLogro=b.idLogro and a.idCurso='"+
idcurso+"'");
			G5_LogrosBean logro = null;
			
			while (rs.next()) {
				logro = new G5_LogrosBean();
				logro.setIdcurso(rs.getString("idCurso"));
				logro.setIdtipocurso(rs.getString("idCriterioNota"));
				logro.setLogro(rs.getString("nombre"));
				logro.setNivel(rs.getString("idNivel"));
				logroxcurso.add(logro);
								
			}
			con.close();

		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return logroxcurso;
	}

	@Override
	public int agregarLogro(int idDesXLogro,String idcurso, String idtipocurso,String logro,String nivel) throws Exception {
		// TODO Auto-generated method stub
		int filas = 0;
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			//ResultSet rs = stmt.executeQuery("SELECT * from T_logros where T_Cursos_id="+idcurso);
			filas= stmt.executeUpdate("UPDATE desxlogro set idLogro='"+logro+"',idNivel='"+nivel+"'  where idCurso='"+idcurso+"' and idCriterioNota='"+idtipocurso+"'");
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return filas;
	}

	@Override
	public G5_LogrosBean mayorID() throws Exception {
		G5_LogrosBean logro = null;
		
		// TODO Auto-generated method stub
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select MAX(idCurso) from desxlogro");
			
			while (rs.next()) {
				logro= new G5_LogrosBean();
				logro.setIdcurso(rs.getString("MAX(idCurso)"));
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return logro;
	}

	@Override
	public Vector<G5_TablaLogrosBean> listarTablaLogros() throws Exception {
		// TODO Auto-generated method stub
		Vector<G5_TablaLogrosBean> logroxcurso = new Vector<G5_TablaLogrosBean>();

		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM logro");
			G5_TablaLogrosBean logro = null;
			
			while (rs.next()) {
				logro = new G5_TablaLogrosBean();
				logro.setIdLogro(rs.getString("idLogro"));
				logro.setNombre(rs.getString("nombre"));
				logroxcurso.add(logro);
								
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return logroxcurso;
	}

	@Override
	public Vector<G5_NivelBean> listarNiveles() throws Exception {
		// TODO Auto-generated method stub
		Vector<G5_NivelBean> vnivel = new Vector<G5_NivelBean>();

		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM nivel");
			G5_NivelBean logro = null;
			
			while (rs.next()) {
				logro = new G5_NivelBean();
				logro.setIdNivel(rs.getString("idNivel"));
				logro.setNombre(rs.getString("nombre"));
				vnivel.add(logro);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return vnivel;
	}

}
