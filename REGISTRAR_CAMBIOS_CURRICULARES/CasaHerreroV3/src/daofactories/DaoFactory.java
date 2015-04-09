package daofactories;

import dao.interfaces.*;

public abstract class DaoFactory {
	public static final int MYSQL 		= 1;
	public static final int SQLSERVER 	= 2;
	public static final int ORACLE 		= 3;

	//parte 4 declarar los metodos abstractos
	public abstract MallaDao getMallaDAO();
	public abstract UsuarioDAO obtenerUsuarioDAO();
	public abstract G5_PruebaDAO obtenerPruebaDAO();
	public abstract G5_CursoInterface obtenerCursoInterface();
	public abstract G5_LogroDao obtenerLogroDao();
	public abstract G5_TipoCursoDao obtenerTipoCursoDao();
	public abstract G4_AlumnosAptosDAO obtenerobtenerAlumnosAptosDAO();
	public abstract G4_CicloDAO obtenerCicloDAO();
	public abstract G4_CursoVsCursoDAO obtenerCursoDAO();
	public abstract G4_CursoMarcoDAO obtenerMarcoCursoDAO();
	public abstract G4_CursoSeccionDAO obtenerCursoSeccionDAO();
	
	public abstract G1PlanEstudioDAO obtenerPlanDAO();
	
	public static DaoFactory getDAOFactory(int factory){
		switch (factory) {
			case MYSQL:
				return new MySqlDaoFactory();
			case SQLSERVER:
				//return new SqlServerDaoFactory();
			case ORACLE:
				//return new OracleDaoFactory();
			default:
				return null;
		}
	}
}
