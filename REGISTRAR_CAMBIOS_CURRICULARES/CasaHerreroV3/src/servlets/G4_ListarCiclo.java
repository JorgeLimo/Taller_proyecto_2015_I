package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.G4_AlumnosAptos;
import beans.G4_CicloBean;
import dao.interfaces.G4_AlumnosAptosDAO;
import dao.interfaces.G4_CicloDAO;
import daofactories.DaoFactory;

/**
 * Servlet implementation class ListarCiclo
 */
@WebServlet("/ListarCiclo")
public class G4_ListarCiclo extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public G4_ListarCiclo() {
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
			G4_CicloDAO  g4_CicloDAO = daoF.obtenerCicloDAO();
			List<G4_CicloBean> listadoCiclos = g4_CicloDAO.listar();
			
			/* otra forma ..
			List<PruebaBean> LIS = DaoFactory.getDAOFactory(DaoFactory.MYSQL).obtenerPruebaDAO().listar();
			*/
			
			//akaaaaaa
			request.setAttribute("listadoCiclo", listadoCiclos);
		
			request.getRequestDispatcher("/ListarAlumnosAptos").forward(request, response);
			//response.sendRedirect("ListarAlumnosAptos");
			
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
