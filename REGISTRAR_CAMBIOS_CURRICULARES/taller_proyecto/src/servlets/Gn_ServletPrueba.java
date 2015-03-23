package servlets;

import java.io.IOException;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.*;
import dao.interfaces.Gn_PruebaDAO;
import daofactories.DaoFactory;

/**
 * Servlet implementation class SPrueba
 */
@WebServlet("/SPrueba")
public class Gn_ServletPrueba extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Gn_ServletPrueba() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*  para utilizar el metodo listar() */ 
		try {
			
			DaoFactory daoF = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			Gn_PruebaDAO prueDAO = daoF.obtenerPruebaDAO();
			List<Gn_PruebaBean> listadoPrueba = prueDAO.listar();
			
			/* otra forma ..
			List<PruebaBean> LIS = DaoFactory.getDAOFactory(DaoFactory.MYSQL).obtenerPruebaDAO().listar();
			*/
			
			request.setAttribute("Test", listadoPrueba);
			
			request.getRequestDispatcher("/mostrar.jsp").forward(request, response);
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
