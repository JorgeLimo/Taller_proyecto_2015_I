package daofactories;


import java.sql.Connection;
import java.sql.DriverManager;


import dao.interfaces.Gn_PruebaDAO;
import dao.mysql.Gn_Mysql_pruebaDAO;


public class MySqlDaoFactory extends DaoFactory {

	public static Connection obtenerConexion(){
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/NombreBD";
			String user = "root";
			String password ="root";
			con = DriverManager.getConnection(url, user, password);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		
		return con;
	}
	

	@Override
	public Gn_PruebaDAO obtenerPruebaDAO() {
		// TODO Auto-generated method stub
		return new Gn_Mysql_pruebaDAO();
	}
	
	
}