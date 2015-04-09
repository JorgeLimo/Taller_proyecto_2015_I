package servlets;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.interfaces.G5_CursoInterface;
import dao.interfaces.G5_PruebaDAO;
import daofactories.DaoFactory;
import beans.*;
/**
 * Servlet implementation class Cursos
 */
@WebServlet("/cp1.jsp")
public class G5_Cursos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public G5_Cursos() {
        super();
        // TODO Auto-generated constructor stub
               
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			DaoFactory daoF = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			G5_CursoInterface prueDAO = daoF.obtenerCursoInterface();
			Vector<G5_CursoBean> vector = prueDAO.listar();
			
			request.setAttribute("vector", vector);
			RequestDispatcher rd = 
					getServletContext().getRequestDispatcher("/ClasificacionPorLogros/cp1.jsp");
			rd.forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
