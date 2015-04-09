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

import dao.interfaces.G4_AlumnosAptosDAO;
 
import daofactories.DaoFactory;

/**
 * Servlet implementation class ListarAlumnosAptos
 */
@WebServlet("/ListarAlumnosAptos")
public class G4_ListarAlumnosAptos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public G4_ListarAlumnosAptos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		PrintWriter out = response.getWriter();
		String cod;String accion;
		
		if(request.getParameter("accion") == null){
			accion = "todo";
		}else{
			accion=request.getParameter("accion");
		}
	
		if(request.getParameter("slt_tipo") == null){
			cod = "1";
		}else{
			cod = request.getParameter("slt_tipo");
		}
		String va=request.getParameter("slt_tipo");
	
		//aka toi
		if(accion.equals("listar") && !va.equals("all")){
				try {
				
				DaoFactory daoF = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
				G4_AlumnosAptosDAO  aluDAO = daoF.obtenerobtenerAlumnosAptosDAO();
				List<G4_AlumnosAptos> listadoAlumnosAptos = aluDAO.listar(cod);
				
				/* otra forma ..
				List<PruebaBean> LIS = DaoFactory.getDAOFactory(DaoFactory.MYSQL).obtenerPruebaDAO().listar();
				*/
				
				request.setAttribute("listadoTest", listadoAlumnosAptos);
				request.getRequestDispatcher("/SimulacionMatricula/alumAptos.jsp").forward(request, response);
				 
				
			} catch (Exception e) {
				System.out.print(e.getMessage());
			}	
		}
		
		System.out.println(va+"--------------");
		if(accion.equals("todo") || va.equalsIgnoreCase("all")){
			try {
				
				DaoFactory daoF = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
				G4_AlumnosAptosDAO  aluDAO = daoF.obtenerobtenerAlumnosAptosDAO();
				List<G4_AlumnosAptos> listadoAlumnosAptos = aluDAO.listar();
				
				/* otra forma ..
				List<PruebaBean> LIS = DaoFactory.getDAOFactory(DaoFactory.MYSQL).obtenerPruebaDAO().listar();
				*/
			
				request.setAttribute("listadoTest", listadoAlumnosAptos);
				request.getRequestDispatcher("/SimulacionMatricula/alumAptos.jsp").forward(request, response);
				 
				
			} catch (Exception e) {
				System.out.print(e.getMessage());
			}
		
		
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		//lim
	 
		

		
	 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	}

}
