package servlets;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.G5_CursoBean;
import beans.G5_LogrosBean;
import beans.G5_NivelBean;
import beans.G5_TablaLogrosBean;
import dao.interfaces.G5_CursoInterface;
import dao.interfaces.G5_LogroDao;
import daofactories.DaoFactory;

/**
 * Servlet implementation class AgregarLogro
 */
@WebServlet("/AgregarLogro")
public class G5_AgregarLogro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public G5_AgregarLogro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mensaje = "";
		System.out.println("Metodo POST");
		String dato = request.getParameter("dato");
		System.out.println(" "+dato);
		String estado_guardar= "";
		String[] recopilado=null;
		
		
		
		
		//Caso Agregar Descripcion de logro
		if(dato.equalsIgnoreCase("agregar")){
			String id_curso = request.getParameter("txt_idcurso");
			Vector<G5_TablaLogrosBean> vectorTabLog= new Vector<G5_TablaLogrosBean>();
			Vector<G5_NivelBean> vnivel = new Vector<G5_NivelBean>();

			try {
				DaoFactory daoF = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
				G5_LogroDao tablogdao = daoF.obtenerLogroDao();
				vectorTabLog = tablogdao.listarTablaLogros();
				vnivel = tablogdao.listarNiveles();
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			
			if(request.getParameterValues("cbk_sel")!=null){
				recopilado = request.getParameterValues("cbk_sel");
				
				
				for(int i=0;i<recopilado.length;i++){
					System.out.println("recopilacion "+recopilado[i]);			
				}
				request.setAttribute("vnivel", vnivel);
				request.setAttribute("vectorTabLog", vectorTabLog);
				request.setAttribute("id_curso", id_curso);
				request.setAttribute("recopilado", recopilado);
				RequestDispatcher rd = 
						getServletContext().getRequestDispatcher("/ClasificacionPorLogros/AgregarLogro.jsp");
				rd.forward(request, response);
				
				
			}else{
				mensaje = "Debe seleccionar por lo menos una opcion.........";
				request.setAttribute("mensaje", mensaje);
				RequestDispatcher rd = 
						getServletContext().getRequestDispatcher("/ClasificacionPorLogros/Buscar.jsp");
				rd.forward(request, response);
			}
			
			
			
			
		}else if(dato.equalsIgnoreCase("guardar")){
			//id_curso = request.getParameter("txt_idcurso");
			String[] id_tiponota = request.getParameterValues("txt_id_tipo_curso");
			String id_curso = request.getParameter("txt_idcurso");
			//String logro = request.getParameter("tlogro");
			String[] logro = request.getParameterValues("tlogro");
			String[] nivel = request.getParameterValues("t_nivel");

			System.out.println("el id del curso "+id_curso);
			//System.out.println("el tipo de logro es "+logro);
			for(int i=0;i<id_tiponota.length;i++){
				System.out.println("el tipo de nota es ....."+id_tiponota[i]);
			}
			for(int i=0;i<logro.length;i++){
				System.out.println("el tipo de logro "+logro[i]);
			}
			//Empieza el codigo 
			
			try {
				DaoFactory daoF = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
				G5_LogroDao prueDAO = daoF.obtenerLogroDao();
				//CursoInterface prueDAO = daoF.obtenerCursoInterface();
				//Vector<CursoBean> vector = prueDAO.listar();
				int filas=0;
				//int idcurso2 = Integer.parseInt(id_curso);
				for(int i =0;i<id_tiponota.length;i++){
					 filas = prueDAO.agregarLogro(1,id_curso, id_tiponota[i], logro[i], nivel[i]);
					
				}
				if(filas ==1){
					mensaje = "Guardado satisfactoriamente los datos...";
					estado_guardar = "ok";
					System.out.println(filas+ mensaje);
					Vector<G5_LogrosBean> vectorlogro = null;
					vectorlogro = prueDAO.listarLogrosxcurso(id_curso);
					request.setAttribute("vectorlogro", vectorlogro);
					
					
					request.setAttribute("estado_guardar", estado_guardar);
					request.setAttribute("mensaje", mensaje);
					

					
				}else{
					mensaje="Error no se pudo Grabar los datos...";
					estado_guardar = "fallo";
					System.out.println(mensaje);
					request.setAttribute("estado_guardar", estado_guardar);
					request.setAttribute("mensaje", mensaje);
					
				}
				
				RequestDispatcher rd = 
						getServletContext().getRequestDispatcher("/ClasificacionPorLogros/resultado_guardar2.jsp");
				rd.forward(request, response);
				
			} catch (Exception e) {
				// TODO: handle exception
			}
		
			// cuando no has seleccionado nada
		
			
			
			
			
			
		}
		
		
	}

}
