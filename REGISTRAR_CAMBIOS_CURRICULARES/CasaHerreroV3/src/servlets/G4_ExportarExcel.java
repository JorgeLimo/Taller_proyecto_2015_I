package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.G4_AlumnosAptos;
import dao.interfaces.G4_AlumnosAptosDAO;
import daofactories.DaoFactory;

/**
 * Servlet implementation class ExportarExcel
 */
@WebServlet("/ExportarExcel")
public class G4_ExportarExcel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public G4_ExportarExcel() {
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
			G4_AlumnosAptosDAO  aluDAO = daoF.obtenerobtenerAlumnosAptosDAO();
			List<G4_AlumnosAptos> listadoAlumnosAptos = aluDAO.listar();
			
			/* otra forma ..
			List<PruebaBean> LIS = DaoFactory.getDAOFactory(DaoFactory.MYSQL).obtenerPruebaDAO().listar();
			*/
			
			request.setAttribute("listadoExcel", listadoAlumnosAptos);
			request.getRequestDispatcher("/SimulacionMatricula/exportarExcel.jsp").forward(request, response);
			 
			
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
