package servlets;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.G5_CursoBean;
import beans.G5_LogrosBean;
import dao.interfaces.G5_CursoInterface;
import dao.interfaces.G5_LogroDao;
import dao.interfaces.G5_TipoCursoDao;
import daofactories.DaoFactory;
import beans.*;
/**
 * Servlet implementation class BuscarCurso
 */
@WebServlet("/BuscarCurso")
public class G5_BuscarCurso extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public G5_BuscarCurso() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("Metodo Get");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Metodo POST");

		String dato = request.getParameter("cb_curso");
		int idcurso = Integer.parseInt(dato);
		System.out.println("dato " + dato);
		System.out.println("idcurso " + idcurso);

		try {
			//esto es para cargar la lista en el combobox 

			DaoFactory daoF = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			G5_CursoInterface prueDAO = daoF.obtenerCursoInterface();
			Vector<G5_CursoBean> vector = prueDAO.listar();
			request.setAttribute("vector", vector);
			
			// aqui termina la carga
			String descripcion_curso  = "";
			if(idcurso>0){
				descripcion_curso = prueDAO.seleccionarXid(dato);
				System.out.println("entro al if idcurso>0 ");
			}
			
			request.setAttribute("descripcion_curso", descripcion_curso);
			System.out.println("descripcion de curso "+descripcion_curso);
			
			//DaoFactory daoF = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			G5_LogroDao logrodao = daoF.obtenerLogroDao();
			Vector<G5_LogrosBean> vectorlogro = null;
			G5_LogrosBean logrobean = null;
			logrobean = logrodao.mayorID();
			String temp = logrobean.getIdcurso();
			
			int mayorID = Integer.parseInt(temp);
			System.out.println("mayorID"+mayorID);
			//esto es para que valide que se seleccione un curso del cbox
		if(idcurso>0){
			System.out.println("1");
			vectorlogro = logrodao.listarLogrosxcurso(dato);
			request.setAttribute("vectorlogro", vectorlogro);
			System.out.println("2");

		} // fin del if
		
		
		
			//Aqui cargo los datos de el tipo de curso
			
			G5_TipoCursoDao tcursodao= daoF.obtenerTipoCursoDao();
			Vector<G5_TipoCursoBean> vectortipocurso=   tcursodao.listarTipoCurso();
			request.setAttribute("vectortipocurso", vectortipocurso);
			System.out.println("3");

			//Esta request es opcional
			request.setAttribute("dato", dato);
			System.out.println("4");

			if((idcurso>0)&&(idcurso<=mayorID)){
				System.out.println("entro al if mayour que cero y menor que mayorID");

				RequestDispatcher rd = 
						getServletContext().getRequestDispatcher("/ClasificacionPorLogros/Buscar.jsp");
				rd.forward(request, response);
				
				for(int i=0;i<vectorlogro.size();i++){
					System.out.println("\n"+vectorlogro.get(i).getIdtipocurso());
					
				}
			}else{
				System.out.println(" entro al else");
				RequestDispatcher rd = 
						getServletContext().getRequestDispatcher("/ClasificacionPorLogros/cp1.jsp");
				rd.forward(request, response);
			}
			
			
			
			
			// Redireccionar a la misma pagina
		
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
	}

}
