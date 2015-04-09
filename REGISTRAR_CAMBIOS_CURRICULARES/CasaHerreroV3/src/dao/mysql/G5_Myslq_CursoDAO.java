package dao.mysql;

import java.util.Vector;

import beans.G5_CursoBean;
import dao.interfaces.G5_CursoInterface;
import daofactories.MySqlDaoFactory;

import java.sql.*;

public class G5_Myslq_CursoDAO extends MySqlDaoFactory implements G5_CursoInterface{

	@Override
	public Vector<G5_CursoBean> listar() throws Exception {
		// TODO Auto-generated method stub
		
		Vector<G5_CursoBean> listacursos = new Vector<G5_CursoBean>();
		
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * from curso");
			G5_CursoBean curso = null;
			
			while(rs.next()){
				curso = new G5_CursoBean();
				curso.setId(rs.getString("idCurso"));
				//curso.setNombre(rs.getString("descripcion"));
				//curso.setCiclo(rs.getString("ciclo"));
				//curso.setCreditos(rs.getInt("creditos"));
				//curso.setPk_tiponota(rs.getString("pk_tiponota"));
				curso.setDescripcion(rs.getString("descripcion"));
				listacursos.add(curso);
			}
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return listacursos;
	}

	@Override
	public String seleccionarXid(String id) throws Exception {
		// TODO Auto-generated method stub
		String nombredecurso = "";
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT descripcion from curso where idCurso='"+id+"'");
			
			while (rs.next()) {
				nombredecurso = rs.getString("descripcion");
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return nombredecurso;
	}

}
