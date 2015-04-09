package servlets;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.interfaces.UsuarioDAO;
import daofactories.*;
import dao.mysql.*;
import beans.EmpleadoBean;
import beans.UsuarioBean;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		
		String user = request.getParameter("usuario");
		String pass = request.getParameter("clave");
	
		try {
			DaoFactory daoF = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			UsuarioDAO userDAO = daoF.obtenerUsuarioDAO();			
			UsuarioBean us = userDAO.verificar(user, pass);
			if(us!=null){
				
				HttpSession session = request.getSession(true);
				session.setAttribute("usuario", us);
				session.setAttribute("idPersona",us.getIdPersona());
					EmpleadoBean em = userDAO.verificarDocente(us.getIdPersona());
					if(em !=null){
						session.setAttribute("rol",em);
					}else{
						EmpleadoBean noem = new EmpleadoBean();
						noem.setIdPersona(us.getIdPersona());
						noem.setIdRol(0);
						session.setAttribute("rol",noem);
					}
					
					session.setAttribute("nombre",us.getNombre());
					request.getRequestDispatcher("/home.jsp").forward(request, response);
			}else{
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}


		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		
		
	}

}
