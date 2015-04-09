package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import beans.CursoBean;
import dao.interfaces.MallaDao;
import daofactories.MySqlDaoFactory;

public class MysqlMallaDao extends MySqlDaoFactory implements MallaDao {

	public Vector<CursoBean> listarCursosMalla(String mencion) {
		Vector<CursoBean> cursos = new Vector<CursoBean>();
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String sql = "select * from v_malla where ESCUELA='E01' and CICLO in ('01','02','03','04','05','06','07','08','09','10','"
					+ mencion + "')";
			ResultSet rs = stmt.executeQuery(sql);
			String ultimo = "";
			CursoBean c = null;

			while (rs.next()) {
				if (ultimo.equals(rs.getString("IDCURSO"))) {
					c.addPrerequisitos(rs.getString("REQUISITO"));

				} else {
					if (!rs.isFirst()) {
						cursos.add(c);
						System.out.println("2");
					}
					c = new CursoBean();
					c.setId(rs.getString("IDCURSO"));
					c.setNombre(rs.getString("CURSO"));
					c.setArea(rs.getString("AREA"));
					c.setCiclo(rs.getString("CICLO"));
					c.setCreditos(rs.getInt("CREDITOS"));
					c.addPrerequisitos(rs.getString("REQUISITO"));
					c.setOtrosrequisitos(rs.getInt("CRED. REQ"));
					c.setX(rs.getInt("X"));
					c.setY(rs.getInt("Y"));
					ultimo = rs.getString("IDCURSO");

				}

			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return cursos;
	}

	public Vector<CursoBean> listarCursosAlumno(String codAlumno) {
		Vector<CursoBean> cursos = new Vector<CursoBean>();
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String sql = "SELECT c.idCurso AS ID, c.descripcion AS CURSO FROM detallematricula AS dm JOIN matricula AS m ON dm.idMatricula=m.idMatricula JOIN curso AS c ON dm.idCurso=c.idCurso WHERE nf>10  AND idPersona='"
					+ codAlumno + "'";
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				CursoBean c = new CursoBean();
				c.setId(rs.getString("ID"));
				c.setNombre(rs.getString("CURSO"));
				cursos.add(c);
			}

		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return cursos;
	}

}
