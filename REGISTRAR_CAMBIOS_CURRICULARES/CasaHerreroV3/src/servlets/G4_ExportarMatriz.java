package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.G4_AlumnosAptos;
import beans.G4_CursoVsCursoBean;
import beans.G4_MarcoCursoBean;
import dao.interfaces.G4_AlumnosAptosDAO;
import daofactories.DaoFactory;

/**
 * Servlet implementation class ExportarMatriz
 */
@WebServlet("/ExportarMatriz")
public class G4_ExportarMatriz extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public G4_ExportarMatriz() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
	 
		
		
		
		PrintWriter out = response.getWriter();
		try {			
			DaoFactory dao = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			Vector<G4_CursoVsCursoBean> listadoCiclos = dao.obtenerCursoDAO().all();
			
			DaoFactory dao2 = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			Vector<G4_MarcoCursoBean> cursoMarco = dao2.obtenerMarcoCursoDAO().listarCurso();
			
			request.setAttribute("listadoCurso", listadoCiclos);
			
			
			request.setAttribute("cursoMarco", cursoMarco);
			request.getRequestDispatcher("/SimulacionMatricula/exportarMatriz.jsp").forward(request, response);	
			
		
		} catch (Exception e) {
			// TODO: handle exception
			out.print(e.getMessage());
		}
		
		
		
		
		
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
