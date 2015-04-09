package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.G4_AlumnosAptos;
import beans.G4_CicloBean;
import dao.interfaces.G4_CicloDAO;
import daofactories.MySqlDaoFactory;

public class G4_Ciclo_MysqlDAO extends MySqlDaoFactory  implements G4_CicloDAO {

	@Override
	public boolean eliminar(int id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean agregar(G4_CicloBean eb) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<G4_CicloBean> listar() throws Exception {
		// TODO Auto-generated method stub
		List<G4_CicloBean> prueba = new ArrayList<G4_CicloBean>();
		
		try {
			
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT idCiclo,descripcion FROM ciclo");



			G4_CicloBean eb = null;
			while(rs.next()){
				eb = new G4_CicloBean();
				eb.setId(rs.getString("idCiclo"));
				eb.setDescripcion(rs.getString("descripcion"));
				 
				prueba.add(eb);
			}
			con.close();
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		return prueba;
	}

	@Override
	public boolean actualizar(G4_CicloBean eb) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

}
