package dao.mysql;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import beans.*;

import daofactories.MySqlDaoFactory;
import dao.interfaces.Gn_PruebaDAO;

public class Gn_Mysql_pruebaDAO extends MySqlDaoFactory implements Gn_PruebaDAO {


	public boolean eliminar(int id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}


	public boolean agregar(Gn_PruebaBean eb) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}


	public List<Gn_PruebaBean> listar() throws Exception {
		
		List<Gn_PruebaBean> prueba = new ArrayList<Gn_PruebaBean>();
		
		try {
			
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT codigo, nombre, apellido from tabla");
			Gn_PruebaBean eb = null;
			while(rs.next()){
				eb = new Gn_PruebaBean();
				eb.setCodigo(rs.getInt("codigo"));
				eb.setNombre(rs.getString("nombre"));
				eb.setApellido(rs.getString("apellido"));
				prueba.add(eb);
			}
			con.close();
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		return prueba;
	}


	public boolean actualizar(Gn_PruebaBean eb) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}



}
