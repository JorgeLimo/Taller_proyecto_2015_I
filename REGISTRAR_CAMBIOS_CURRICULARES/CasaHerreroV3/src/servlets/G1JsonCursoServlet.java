package servlets;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.google.gson.Gson;

import beans.G1CursoBean;

import dao.interfaces.G1PlanEstudioDAO;
import dao.mysql.G1Mysql_planEstudioDAO;
import daofactories.DaoFactory;

/**
 * Servlet implementation class G1JsonCursoServlet
 */
@WebServlet("/G1JsonCursoServlet")
public class G1JsonCursoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public G1JsonCursoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String descripcion = request.getParameter("descripcion");
		ArrayList<String> listCursos= new ArrayList<>();
		
		try {
			DaoFactory daoFactory = G1Mysql_planEstudioDAO.getDAOFactory(DaoFactory.MYSQL);
			G1PlanEstudioDAO g1PlanEstudioDAO = daoFactory.obtenerPlanDAO();
			
			List<G1CursoBean> cursos = g1PlanEstudioDAO.filtrarCurso(descripcion);
			
			for (int i = 0; i < cursos.size(); i++) {
				listCursos.add(cursos.get(i).getDescripcion().toString());
			}
			
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			String json= new Gson().toJson(listCursos);
			
			response.getWriter().write(json);
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		
	}

}
