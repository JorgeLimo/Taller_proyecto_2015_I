package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.CursoBean;
import dao.interfaces.MallaDao;
import dao.interfaces.UsuarioDAO;
import daofactories.DaoFactory;

@WebServlet("/G2_Malla")
public class G2_Malla extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action.equals("obtenerNombre")) {
			String codAlumno = request.getParameter("codAlumno");
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			DaoFactory dao = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			UsuarioDAO cd = dao.obtenerUsuarioDAO();
			String nombre = "";
			try {
				nombre = cd.obtenerNombre(codAlumno);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			out.print(nombre);

		}
		if (action.equals("obtenerCursosAlumno")) {
			String codAlumno = request.getParameter("codAlumno");
			DaoFactory dao = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			MallaDao cd = dao.getMallaDAO();
			Vector<CursoBean> cursos = cd.listarCursosAlumno(codAlumno);
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			int tam1 = cursos.size();
			if (tam1 == 0) {
				out.println("-1");
			} else {
				out.println("{");
				out.println("cursos:[");

				for (int i = 0; i < tam1; i++) {
					out.println("{");
					CursoBean c = cursos.get(i);
					out.println("id : '" + c.getId() + "',");
					out.println("nombre : '" + c.getNombre() + "',");
					if (i == tam1 - 1) {
						out.println("}");
					} else {
						out.println("},");
					}
				}
				out.println("]");
				out.print("}");
			}
		}
		if (action.equals("obtenerMisCursos")) {
			HttpSession session = request.getSession(true);
			String codAlumno = (String) session.getAttribute("idPersona");
			DaoFactory dao = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			MallaDao cd = dao.getMallaDAO();
			Vector<CursoBean> cursos = cd.listarCursosAlumno(codAlumno);
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			int tam1 = cursos.size();
			if (tam1 == 0) {
				out.println("-1");
			} else {
				out.println("{");
				out.println("cursos:[");

				for (int i = 0; i < tam1; i++) {
					out.println("{");
					CursoBean c = cursos.get(i);
					out.println("id : '" + c.getId() + "',");
					out.println("nombre : '" + c.getNombre() + "',");
					if (i == tam1 - 1) {
						out.println("}");
					} else {
						out.println("},");
					}
				}
				out.println("]");
				out.print("}");
			}
		}
		if (action.equals("obtenerMalla")) {
			String mencion = request.getParameter("mencion");
			DaoFactory dao = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			MallaDao cd = dao.getMallaDAO();
			Vector<CursoBean> cursos = cd.listarCursosMalla(mencion);
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("{");
			out.println("cursos:[");
			int tam1 = cursos.size();
			for (int i = 0; i < tam1; i++) {
				out.println("{");
				CursoBean c = cursos.get(i);
				out.println("id : '" + c.getId() + "',");
				out.println("nombre : '" + c.getNombre() + "',");
				out.println("area : '" + c.getArea() + "',");
				out.println("ciclo : '" + c.getCiclo() + "',");
				out.println("creditos : " + c.getCreditos() + ",");
				Vector<String> pr = c.getPrerequisitos();
				String requisitos = "";
				int tam2 = pr.size();
				for (int j = 0; j < tam2; j++) {
					if (j == tam2 - 1) {
						requisitos += pr.get(j);
					} else {
						requisitos += pr.get(j) + ",";
					}
				}
				out.println("prerequisitos : '" + requisitos + "',");
				out.println("otrosrequisitos : " + c.getOtrosrequisitos() + ",");
				out.println("x : " + c.getX() + ",");
				out.println("y : " + c.getY());
				if (i == tam1 - 1) {
					out.println("}");
				} else {
					out.println("},");
				}

			}

			out.println("]");
			out.print("}");
		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
}
