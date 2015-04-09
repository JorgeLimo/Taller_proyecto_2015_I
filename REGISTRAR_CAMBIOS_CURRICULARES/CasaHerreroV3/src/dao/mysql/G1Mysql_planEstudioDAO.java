package dao.mysql;

import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import beans.*;
import daofactories.MySqlDaoFactory;
import dao.interfaces.G1PlanEstudioDAO;

;

public class G1Mysql_planEstudioDAO extends MySqlDaoFactory implements
		G1PlanEstudioDAO {

	@Override
	public List<G1PlanEstudioBean> listar() throws Exception {

		List<G1PlanEstudioBean> planes = new ArrayList<G1PlanEstudioBean>();

		try {

			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt
					.executeQuery("SELECT cucuci.idCurso ,cu.descripcion , ci.descripcion , curri.cantCredito , curri.cantHoraTeo ,curri.cantHoraLab ,curri.cantHoraPrac , requi.idCursoPre FROM CurriculaCursoCiclo cucuci LEFT JOIN Ciclo ci ON cucuci.idCiclo = ci.idCiclo LEFT JOIN Curso cu ON cu.idCurso=cucuci.idCurso LEFT JOIN CurriculaCurso curri ON curri.idCurso=cu.idCurso LEFT JOIN RequisitoCurso requi ON requi.idCurso=requi.idCurso");
			G1PlanEstudioBean plan = null;
			while (rs.next()) {
				plan = new G1PlanEstudioBean();
				plan.setIdCurso(rs.getString("idCurso"));
				plan.setDescripcion(rs.getString("descripcion"));
				plan.setDescrip(rs.getString("descripcion"));
				plan.setCantCredito(rs.getInt("cantCredito"));
				plan.setCantHoraTeo(rs.getInt("cantHoraTeo"));
				plan.setCantHoraLab(rs.getInt("cantHoraLab"));
				plan.setCantHoraPrac(rs.getInt("cantHoraPrac"));
				plan.setIdCursoPre(rs.getInt("idCursoPre"));
				planes.add(plan);
			}
			con.close();

		} catch (Exception e) {
			System.out.print(e.getMessage());
		}

		return planes;
	}

	@Override
	public ArrayList<G1CursoBean> listarCursos() throws Exception {
		// TODO Auto-generated method stub
		String sql = "";
		ArrayList<G1CursoBean> cursos = new ArrayList<G1CursoBean>();

		G1CursoBean cursoBean = null;

		try {

			Connection con = G1Mysql_planEstudioDAO.obtenerConexion();
			Statement stmt = con.createStatement();
			sql = "SELECT idCurso, descripcion, estado, idArea FROM Curso";
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				cursoBean = new G1CursoBean();
				cursoBean.setIdCurso(rs.getString("idCurso"));
				cursoBean.setDescripcion(rs.getString("descripcion"));
				cursoBean.setEstado(rs.getInt("estado"));
				cursoBean.setIdArea(rs.getString("idArea"));

				cursos.add(cursoBean);
			}

			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}

		return cursos;
	}

	@Override
	public G1CursoBean buscarCurso(String descripcion) throws Exception {
		// TODO Auto-generated method stub
		String sql = "";

		G1CursoBean cursoBean = new G1CursoBean();

		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			sql = "Select idCurso, descripcion, estado, idArea From Curso where descripcion='"
					+ descripcion + "'";
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				cursoBean.setIdCurso(rs.getString("idCurso"));
				cursoBean.setDescripcion(rs.getString("descripcion"));
				cursoBean.setEstado(rs.getInt("estado"));
				cursoBean.setIdArea(rs.getString("idArea"));
			}

			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}

		return cursoBean;
	}

	@Override
	public ArrayList<G1CursoBean> filtrarCurso(String descripcion)
			throws Exception {
		// TODO Auto-generated method stub
		String sql = "";
		ArrayList<G1CursoBean> cursos = new ArrayList<G1CursoBean>();

		G1CursoBean cursoBean = null;

		try {

			Connection con = G1Mysql_planEstudioDAO.obtenerConexion();
			Statement stmt = con.createStatement();
			sql = "SELECT idCurso, descripcion, estado, idArea FROM Curso where descripcion like '%"+descripcion+"%'";
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				cursoBean = new G1CursoBean();
				cursoBean.setIdCurso(rs.getString("idCurso"));
				cursoBean.setDescripcion(rs.getString("descripcion"));
				cursoBean.setEstado(rs.getInt("estado"));
				cursoBean.setIdArea(rs.getString("idArea"));

				cursos.add(cursoBean);
			}

			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}

		return cursos;
	}

	@Override
	public ArrayList<G1AreaBean> listarAreas() throws Exception {
		// TODO Auto-generated method stub
		String sql = "";
		ArrayList<G1AreaBean> areas = new ArrayList<G1AreaBean>();

		G1AreaBean areaBean = null;

		try {

			Connection con = G1Mysql_planEstudioDAO.obtenerConexion();
			Statement stmt = con.createStatement();
			sql = "SELECT idArea, descripcion FROM Area ";
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				areaBean = new G1AreaBean();
				areaBean.setIdArea(rs.getString("idArea"));
				areaBean.setDescripcion(rs.getString("descripcion"));

				areas.add(areaBean);
			}

			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}

		return areas;
	}

	@Override
	public ArrayList<G1CicloBean> listarCiclos() throws Exception {
		// TODO Auto-generated method stub
		String sql = "";
		ArrayList<G1CicloBean> ciclos = new ArrayList<G1CicloBean>();

		G1CicloBean cicloBean = null;

		try {

			Connection con = G1Mysql_planEstudioDAO.obtenerConexion();
			Statement stmt = con.createStatement();
			sql = "SELECT idCiclo, descripcion FROM Ciclo ";
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				cicloBean = new G1CicloBean();
				cicloBean.setIdCiclo(rs.getString("idCiclo"));
				cicloBean.setDescripcion(rs.getString("descripcion"));

				ciclos.add(cicloBean);
			}

			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}

		return ciclos;

	}

	@Override
	public int darDeBaja(String idCurso) throws Exception {
		// TODO Auto-generated method stub
		int valor=0;
		
		try {
			Connection con=G1Mysql_planEstudioDAO.obtenerConexion();
			Statement stmt=con.createStatement();
			String sql="update Curso set estado=0 where idCurso='"+idCurso+"'";
			valor= stmt.executeUpdate(sql);
			
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return valor;
	}

	@Override
	public G1CursoBean obtenerCredito(String descripcion) throws Exception {
		// TODO Auto-generated method stub
		String sql = "";

		G1CursoBean cursoBean = null;

		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			sql="SELECT cu.idCurso, cu.descripcion, curri.cantCredito, cu.estado FROM curso cu LEFT JOIN curriculacurso curri ON curri.idCurso=cu.idCurso WHERE cu.descripcion = '"+descripcion+"'";
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				cursoBean=new G1CursoBean();
				cursoBean.setIdCurso(rs.getString("idCurso"));
				cursoBean.setDescripcion(rs.getString("descripcion"));
				cursoBean.setCantCredito(rs.getInt("cantCredito"));
				cursoBean.setEstado(rs.getInt("estado"));
				
			}

			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}

		return cursoBean;
	}

	@Override
	public int modificarCredito(String idCurso, int cantCredito)
			throws Exception {
		// TODO Auto-generated method stub
		int valor=0;
		
		try {
			Connection con=G1Mysql_planEstudioDAO.obtenerConexion();
			Statement stmt=con.createStatement();
			String sql="UPDATE curriculacurso curri , curso cu SET curri.cantCredito= "+cantCredito+" WHERE curri.idCurso=cu.idCurso AND cu.idCurso = '"+idCurso+"'";
			valor= stmt.executeUpdate(sql);
			
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return valor;
	}

	@Override
	public int modificarHoras(String idCurso, int hteo, int hlab, int hpra)
			throws Exception {
		// TODO Auto-generated method stub
		int valor=0;
		
		try {
			Connection con=G1Mysql_planEstudioDAO.obtenerConexion();
			Statement stmt=con.createStatement();
			String sql="UPDATE  curriculacurso curri  SET curri.cantHoraTeo = "+hteo+", curri.cantHoraLab= "+hlab+" , curri.cantHoraPrac="+hpra+" WHERE  curri.idCurso = '"+idCurso+"' ";
			valor= stmt.executeUpdate(sql);
			
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return valor;
	}

	@Override
	public ArrayList<G1CursoBean> obtenerCiclo(String descripcion)
			throws Exception {
		// TODO Auto-generated method stub
		String sql = "";
		ArrayList<G1CursoBean> cursos= new ArrayList<>();
		G1CursoBean cursoBean = null;

		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			sql="SELECT cu.idCurso, cu.descripcion,ci.idCiclo, ci.descripcion as ciclo , cu.estado FROM curso cu "+  
				"LEFT JOIN curriculacurso curri ON curri.idCurso=cu.idCurso "+ 
				"LEFT JOIN curriculacursociclo cucuci ON cucuci.idCurso = curri.idCurso "+ 
				"LEFT JOIN ciclo ci ON ci.idCiclo= cucuci.idCiclo "+ 
				"WHERE cu.descripcion = '"+descripcion+"'";
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				cursoBean=new G1CursoBean();
				cursoBean.setIdCurso(rs.getString("idCurso"));
				cursoBean.setDescripcion(rs.getString("descripcion"));
				cursoBean.setIdCiclo(rs.getString("idCiclo"));
				cursoBean.setCiclo(rs.getString("ciclo"));
				cursoBean.setEstado(rs.getInt("estado"));
				
				cursos.add(cursoBean);
			}

			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return cursos;
	}

	@Override
	public ArrayList<G1CursoBean> obtenerRequisito(String descripcion)
			throws Exception {
		// TODO Auto-generated method stub
		String sql = "";
		ArrayList<G1CursoBean> cursos= new ArrayList<>();
		G1CursoBean cursoBean = null;

		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			sql="SELECT curso.idCurso , curso.descripcion, curso.estado, ciclo.descripcion as ciclo, requicurso.idCursoPre, cucurso.creditosReq "+ 
			"FROM curso curso "+ 
			"LEFT JOIN requisitocurso requicurso ON requicurso.idCurso=curso.idCurso "+ 
			"LEFT JOIN curriculacurso cucurso ON cucurso.idCurso=curso.idCurso "+ 
			"LEFT JOIN curriculacursociclo cucuciclo ON cucuciclo.idCurso = cucurso.idCurso "+
			"LEFT JOIN ciclo ciclo ON ciclo.idCiclo = cucuciclo.idCiclo "+ 
			"WHERE curso.descripcion='"+descripcion+"'"; 
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				cursoBean=new G1CursoBean();
				cursoBean.setIdCurso(rs.getString("idCurso"));
				cursoBean.setDescripcion(rs.getString("descripcion"));
				cursoBean.setEstado(rs.getInt("estado"));
				cursoBean.setCiclo(rs.getString("ciclo"));
				cursoBean.setIdCursoPre(rs.getString("idCursoPre"));
				cursoBean.setCreditosReq(rs.getInt("creditosReq"));
				cursos.add(cursoBean);
			}

			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return cursos;
	}

	@Override
	public ArrayList<G1CursoBean> buscarCursoxCod(ArrayList<G1CursoBean> cursos)
			throws Exception {
		// TODO Auto-generated method stub
		String sql = "";
		Connection con=null;
		ArrayList<G1CursoBean> requisitos= new ArrayList<>();
		
		if (cursos.size()>1) {
			for (int i = 0; i < cursos.size()-1; i++) {
				for (int j = i+1; j < cursos.size(); j++) {
					if (cursos.get(i).getIdCursoPre().equals(cursos.get(j).getIdCursoPre())) {
						cursos.remove(j);
						break;
					}
				}
			}
		}
		
		
		G1CursoBean requisitoBean =null;
		
		for(int i=0; i<cursos.size(); i++){
			try {
				con = MySqlDaoFactory.obtenerConexion();
				Statement stmt = con.createStatement();
				sql = "Select idCurso, descripcion, estado From Curso where idCurso='"+cursos.get(i).getIdCursoPre()+"'";
				ResultSet rs = stmt.executeQuery(sql);

				while (rs.next()) {
					requisitoBean = new G1CursoBean();
					requisitoBean.setIdCurso(rs.getString("idCurso"));
					requisitoBean.setDescripcion(rs.getString("descripcion"));
					requisitos.add(requisitoBean);
				}

				
			} catch (Exception e) {
				// TODO: handle exception
			}
		}

		con.close();
		return requisitos;
	}

	@Override
	public G1CursoBean buscarCicloxNombre(String descripcion) throws Exception {
		// TODO Auto-generated method stub
		String sql = "";
		G1CursoBean cicloBean = null;

		try {

			Connection con = G1Mysql_planEstudioDAO.obtenerConexion();
			Statement stmt = con.createStatement();
			sql = "SELECT idCiclo, descripcion FROM Ciclo where descripcion='"+descripcion+"'";
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				cicloBean = new G1CursoBean();
				cicloBean.setIdCiclo(rs.getString("idCiclo"));
				cicloBean.setCiclo(rs.getString("descripcion"));
			}

			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return cicloBean;
	}



}
