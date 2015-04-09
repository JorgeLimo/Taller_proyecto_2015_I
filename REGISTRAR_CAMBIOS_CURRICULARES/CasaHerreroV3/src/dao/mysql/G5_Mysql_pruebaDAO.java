package dao.mysql;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import beans.*;

import daofactories.MySqlDaoFactory;
import dao.interfaces.G5_PruebaDAO;

public class G5_Mysql_pruebaDAO extends MySqlDaoFactory implements G5_PruebaDAO {


	public boolean eliminar(int id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}
	
	
	public boolean agregar(G5_PruebaBean eb) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}


	public List<G5_PruebaBean> listar() throws Exception {
		
		List<G5_PruebaBean> prueba = new ArrayList<G5_PruebaBean>();
		
		try {
			
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT codigo, nombre, apellido from tabla");
			G5_PruebaBean eb = null;
			while(rs.next()){
				eb = new G5_PruebaBean();
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


	public boolean actualizar(G5_PruebaBean eb) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}



}
