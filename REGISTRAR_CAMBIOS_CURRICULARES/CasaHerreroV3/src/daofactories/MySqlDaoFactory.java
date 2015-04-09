package daofactories;


import java.sql.Connection;
import java.sql.DriverManager;










import dao.interfaces.G1PlanEstudioDAO;
import dao.interfaces.G4_AlumnosAptosDAO;
import dao.interfaces.G4_CicloDAO;
import dao.interfaces.G4_CursoMarcoDAO;
import dao.interfaces.G4_CursoSeccionDAO;
import dao.interfaces.G4_CursoVsCursoDAO;
import dao.interfaces.G5_CursoInterface;
import dao.interfaces.G5_PruebaDAO;
import dao.interfaces.G5_LogroDao;
import dao.interfaces.G5_TipoCursoDao;
import dao.interfaces.MallaDao;
import dao.interfaces.UsuarioDAO;
import dao.mysql.G1Mysql_planEstudioDAO;
import dao.mysql.G4_AlumnosAptos_MysqlDAO;
import dao.mysql.G4_Ciclo_MysqlDAO;
import dao.mysql.G4_CursoSeccion_MysqlDAO;
import dao.mysql.G4_CursoVsCurso_MysqlDAO;
import dao.mysql.G4_MarcoCurso_MysqlDAO;
import dao.mysql.G5_Mysql_pruebaDAO;
import dao.mysql.G5_Myslq_CursoDAO;
import dao.mysql.G5_Mysql_LogrosDao;
import dao.mysql.G5_Mysql_TipoCursoDao;
import dao.mysql.MysqlMallaDao;
import dao.mysql.Mysql_UsuarioDAO;


public class MySqlDaoFactory extends DaoFactory {

	public static Connection obtenerConexion(){
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/bd_casaherrero";
			String user = "root";
			String password ="";
			
			/*
			String url = "jdbc:mysql://mysql45798-taller-2015-i.jelasticlw.com.br/bd_casaherrero";
			String user = "taller";
			String password ="taller";
			*/
			/*
			String url = "jdbc:mysql://mysql46401-taller-2015-1.jelasticlw.com.br/bd_casaherrero";
			String user = "root";
			String password ="W9zEyYajIR";*/
			
			con = DriverManager.getConnection(url, user, password);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		
		return con;
	}
	
	@Override
	public MallaDao getMallaDAO() {
		// TODO Auto-generated method stub
		return new MysqlMallaDao();
	}
	@Override
	public UsuarioDAO obtenerUsuarioDAO() {
		// TODO Auto-generated method stub
		return new Mysql_UsuarioDAO();
	}
	@Override
	public G5_PruebaDAO obtenerPruebaDAO() {
		// TODO Auto-generated method stub
		return new G5_Mysql_pruebaDAO();
	}
	@Override
	public G5_CursoInterface obtenerCursoInterface() {
		// TODO Auto-generated method stub
		return new G5_Myslq_CursoDAO();
	}


	@Override
	public G5_LogroDao obtenerLogroDao() {
		// TODO Auto-generated method stub
		return new G5_Mysql_LogrosDao();
	}
	@Override
	public G5_TipoCursoDao obtenerTipoCursoDao() {
		// TODO Auto-generated method stub
		return new G5_Mysql_TipoCursoDao();
	}
	
	@Override
	public G4_AlumnosAptosDAO obtenerobtenerAlumnosAptosDAO() {
		// TODO Auto-generated method stub
		return new G4_AlumnosAptos_MysqlDAO();
	}
	@Override
	public G4_CicloDAO obtenerCicloDAO() {
		// TODO Auto-generated method stub
		return new G4_Ciclo_MysqlDAO();
	}
	@Override
	public G4_CursoVsCursoDAO obtenerCursoDAO() {
		// TODO Auto-generated method stub
		return new G4_CursoVsCurso_MysqlDAO();
	}
	@Override
	public G4_CursoMarcoDAO obtenerMarcoCursoDAO() {
		// TODO Auto-generated method stub
		return new G4_MarcoCurso_MysqlDAO();
	}
	@Override
	public G4_CursoSeccionDAO obtenerCursoSeccionDAO() {
		// TODO Auto-generated method stub
		return new G4_CursoSeccion_MysqlDAO();
	}
	
	@Override
	public G1PlanEstudioDAO obtenerPlanDAO() {
		// TODO Auto-generated method stub
		return new G1Mysql_planEstudioDAO();
	}
}