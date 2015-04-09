package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import beans.G1CicloBean;
import beans.G1CursoBean;
import dao.interfaces.G1PlanEstudioDAO;
import dao.mysql.G1Mysql_planEstudioDAO;
import daofactories.DaoFactory;

/**
 * Servlet implementation class G1RealizarCambioPlanServlet
 */
@WebServlet("/G1RealizarCambioPlan")
public class G1RealizarCambioPlanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ArrayList<G1CursoBean> cursos = new ArrayList<>();
	ArrayList<G1CursoBean> requisitos=new ArrayList<>();
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public G1RealizarCambioPlanServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");

		String nomCurso = "";
		String idCurso ="";
		String cantCredito="";

		String opc = request.getParameter("opc");

		/* *********** Crear Curso *********** */

		if (opc.equals("crearcurso")) {

		}

		/* *********** Fin Crear Curso *********** */

		/* *********** Editar Ciclo *********** */

		if (opc.equals("editciclo")) {
			
			nomCurso = request.getParameter("nomCurso");
			String pos= request.getParameter("pos");
			String addcurso= request.getParameter("nomciclo");
			
			if (pos!=null) {
				int posCiclo= Integer.parseInt(pos);
				cursos.remove(posCiclo);
				out.print(tablaCiclos(cursos));
			}
			

			DaoFactory daoFactory = G1Mysql_planEstudioDAO
					.getDAOFactory(DaoFactory.MYSQL);
			
			if (addcurso!=null) {
				try {
					G1PlanEstudioDAO g1PlanEstudioDAO = daoFactory.obtenerPlanDAO();
					G1CursoBean ciclo= g1PlanEstudioDAO.buscarCicloxNombre(addcurso);
					
					cursos.add(ciclo);
					out.print(tablaCiclos(cursos));
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
			
			
			if(nomCurso!=null){
				try {
					G1PlanEstudioDAO g1PlanEstudioDAO = daoFactory.obtenerPlanDAO();
					cursos = g1PlanEstudioDAO
							.obtenerCiclo(nomCurso);
					
					ArrayList<G1CicloBean> ciclos= g1PlanEstudioDAO.listarCiclos();
					
						

					if (cursos != null) {
						if (cursos.get(0).getEstado() != 0) {
							out.print("<input type='text' hidden='true' id='idCurso' value='"+cursos.get(0).getIdCurso()+"'>");
							out.print("<div class='row'>"+
								"<div class='col-md-1'><h5><b>Curso:</b></h5></div>"+
								"<div class='col-md-11'><h5>"+cursos.get(0).getDescripcion()+"</h5></div></div>");

							out.print("	<div class='row'><div class='col-md-1'><h5><b>Ciclo:</b></h5></div>");
							
							out.print("<div class='col-md-4'>"+
							"<select id='sciclo' class='form-control'><option id=''>--Seleccionar--</option>");
							
								for(int i=0; i<ciclos.size();i++){
									out.print("<option id='"+ciclos.get(i).getIdCiclo()+"'>"+ciclos.get(i).getDescripcion()+"</option>");
								}
							out.print("</select></div>");
							
							out.print("<div class='col-md-7'><button onclick = 'agregarCiclo();'  type='submit' class='btn btn-primary'>Agregar</button></div></div>");
							out.print("<div class='clear'></div><br>");
							
							/* *** Tabla de ciclos ***/
							out.print(tablaCiclos(cursos));

						} else {
							out.print("El curso esta inactivo.");
						}
					} else {
						/* NO se a escontrado el curso */
						out.print("El curso no existe o esta mal digitado.");
					}

				} catch (Exception e) {
					// TODO: handle exception
				}
			}else {
				//modificacionessssssssssssssssssssssssss del ciclo del curso
			}

		}

		/* *********** Fin Editar Ciclo *********** */

		/* *********** Editar Credito *********** */

		if (opc.equals("editcredito")) {
			nomCurso = request.getParameter("nomCurso");
			idCurso = request.getParameter("idCurso");
			
			DaoFactory daoFactory = G1Mysql_planEstudioDAO
					.getDAOFactory(DaoFactory.MYSQL);

			if(nomCurso!=null){
				try {
					G1PlanEstudioDAO g1PlanEstudioDAO = daoFactory.obtenerPlanDAO();
					G1CursoBean cursoBean = g1PlanEstudioDAO
							.obtenerCredito(nomCurso);

					if (cursoBean != null) {
						if (cursoBean.getEstado() != 0) {
							
							out.print("<input type='text' hidden='true' id='idCurso' value='"+cursoBean.getIdCurso()+"'>");
							out.print("<div class='row'>"
									+ "<div class='col-md-2'>"
									+ "<h5><b>Curso:</b></h5>" + "</div>"
									+ "<div class='col-md-10'>" + "<h5>"
									+ cursoBean.getDescripcion() + "</h5>"
									+ "</div></div>");
							out.print("<div class='clear'></div>");
							out.print("<div class='row'>"
									+ "<div class='col-md-2'>"
									+ "	<h5><b>Credito:</b></h5>"
									+ "</div>"
									+ "<div class='col-md-2'>"
									+ "<input type='text' id='cantCredito' class='form-control' value='"
									+ cursoBean.getCantCredito() + "'>"
									+ "</div></div>");
							
								out.print("<div class='col-md-8'></div>");

						} else {
							out.print("El curso esta inactivo.");
						}
					} else {
						/* NO se a escontrado el curso */
						out.print("El curso no existe o esta mal digitado.");
					}

				} catch (Exception e) {
					// TODO: handle exception
				}
			}else if(idCurso!=null) {
				cantCredito=request.getParameter("cantCredito");
				
				try {
					G1PlanEstudioDAO g1PlanEstudioDAO = daoFactory.obtenerPlanDAO();
					int credito=Integer.parseInt(cantCredito);
					int valor = g1PlanEstudioDAO.modificarCredito(idCurso,credito );
					
					if (valor == 1) {
						out.print("Se modifico la cantidad de credito del curso satisfactoriamente.");
					} else {
						out.print("Ocurrio algun problema al modificar la cantidad de credito");
					}
					
				} catch (Exception e) {
					// TODO: handle exception
				}
				
			}

		}

		/* *********** Fin Editar Credito *********** */

		/* *********** Editar horas *********** */

		if (opc.equals("edithoras")) {
			nomCurso = request.getParameter("nomCurso");
			idCurso = request.getParameter("idCurso");
			
			DaoFactory daoFactory = G1Mysql_planEstudioDAO
					.getDAOFactory(DaoFactory.MYSQL);

			if(nomCurso!=null){
				try {
					G1PlanEstudioDAO g1PlanEstudioDAO = daoFactory.obtenerPlanDAO();
					G1CursoBean cursoBean = g1PlanEstudioDAO.obtenerCredito(nomCurso);

					if (cursoBean != null) {
						if (cursoBean.getEstado() != 0) {
							out.print("<input type='text' hidden='true' id='idCurso' value='"+cursoBean.getIdCurso()+"'>");
							out.print("<div class='row'>"+
								"<div class='col-md-3'><h5><b>Curso:</b></h5></div>"+
								"<div class='col-md-9'><h5>"+cursoBean.getDescripcion()+"</h5></div></div>");
							
							out.print("<div class='row'>"+
								"<div class='col-md-3'><h5><b>Credito:</b></h5></div>"+
								"<div class='col-md-9'><h5>"+cursoBean.getCantCredito()+"</h5></div></div>");

							out.print("<div class='row'>"+
								"<div class='col-md-3'><h5><b>Hrs. Teoria:</b></h5></div>"+
								"<div class='col-md-2'><input type='text' id='hteo' class='form-control' value=''></div>"+
								"<div class='col-md-7'></div></div>");
							
							out.print("<div class='row'>"+
								"<div class='col-md-3'><h5><b>Hrs. Laboratorio:</b></h5></div>"+
								"<div class='col-md-2'><input type='text' id='hlab' class='form-control' value=''></div>"+
								"<div class='col-md-7'></div></div>");
							
							
							out.print("<div class='row'>"+
								"<div class='col-md-3'><h5><b>Hrs. Practico:</b></h5></div>"+
								"<div class='col-md-2'><input type='text' id='hpra' class='form-control' value=''></div>"+
								"<div class='col-md-7'></div></div>");

						} else {
							out.print("El curso esta inactivo.");
						}
					} else {
						/* NO se a escontrado el curso */
						out.print("El curso no existe o esta mal digitado.");
					}

				} catch (Exception e) {
					// TODO: handle exception
				}
			}else if(idCurso!=null) {
				String hteo=request.getParameter("hteo");
				String hlab=request.getParameter("hlab");
				String hpra=request.getParameter("hpra");
				
				try {
					G1PlanEstudioDAO g1PlanEstudioDAO = daoFactory.obtenerPlanDAO();
					int teo=Integer.parseInt(hteo);
					int lab=Integer.parseInt(hlab);
					int pra=Integer.parseInt(hpra);							
					int valor = g1PlanEstudioDAO.modificarHoras(idCurso, teo, lab, pra);
					
					if (valor == 1) {
						out.print("Se modifico las horas del curso satisfactoriamente.");
					} else {
						out.print("Ocurrio algun problema al modificar las horas");
					}
					
				} catch (Exception e) {
					// TODO: handle exception
				}
				
			}

		}

		/* *********** Fin Editar Horas *********** */

		/* *********** Editar Requisitos *********** */

		if (opc.equals("editrequisito")) {
			
			nomCurso = request.getParameter("nomCurso");
			String pos= request.getParameter("pos");
			String addrequisito= request.getParameter("nomcursorequi");
			
			if (pos!=null) {
				int posRequisito= Integer.parseInt(pos);
				requisitos.remove(posRequisito);
				out.print(tablaRequisitos(requisitos));
			}
			

			DaoFactory daoFactory = G1Mysql_planEstudioDAO
					.getDAOFactory(DaoFactory.MYSQL);
			
			if (addrequisito!=null) {
				try {
					G1PlanEstudioDAO g1PlanEstudioDAO = daoFactory.obtenerPlanDAO();
					G1CursoBean requisito= g1PlanEstudioDAO.buscarCurso(addrequisito);
					
					requisitos.add(requisito);
					out.print(tablaRequisitos(requisitos));
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
			
			
			
			
			if(nomCurso!=null){
				try {
					G1PlanEstudioDAO g1PlanEstudioDAO = daoFactory.obtenerPlanDAO();
					cursos = g1PlanEstudioDAO
							.obtenerRequisito(nomCurso);

					if (cursos != null) {
						if (cursos.get(0).getEstado() != 0) {
							out.print("<input type='text' hidden='true' id='idCurso' value='"+cursos.get(0).getIdCurso()+"'>");
							out.print("<div class='row'><div class='col-md-2'>"+
									"<h5><b>Curso:</b></h5></div>"+
								"<div class='col-md-10'><h5>"+cursos.get(0).getDescripcion()+"</h5></div></div>");
							
							out.print("<div class='row'>"+
							"<div class='col-md-2'><h5><b>Ciclo:</b></h5></div>"+
							"<div class='col-md-10'><h5>");
								for (int i = 0; i < cursos.size(); i++) {
									out.print(cursos.get(i).getCiclo());
									if (cursos.size()>1) {
										out.print(" - ");
									}
								}
									
							out.print("</h5></div></div>");
							
							out.print("<div class='row'>"
									+ "<div class='col-md-2'><h5><b>Requisito:</b></h5></div>"+
						"<div class='col-md-6'><input id='nomcursorequi' type='text' class='typeahead tt-query' "+
							"placeholder='Ingrese el nombre o n&uacute;mero del requisito' autocomplete='off' "+
							"spellcheck='false' style='width:280px;'></div>"+
						"<div class='col-md-4'><button id='bagregarrequisito' onclick = 'agregarRequisito();' type='submit' class='btn btn-primary'>Agregar</button></div></div>");
							
							out.print("<div class='clear'></div><br>");
							
							/* ******  Tabla requisitos ********/
							requisitos = g1PlanEstudioDAO.buscarCursoxCod(cursos);
							out.print(tablaRequisitos(requisitos));
							
						} else {
							out.print("El curso esta inactivo.");
						}
					} else {
						/* NO se a escontrado el curso */
						out.print("El curso no existe o esta mal digitado.");
					}

				} catch (Exception e) {
					// TODO: handle exception
				}
			}else {
				//modificacionessssssssssssssssssssssssss del requisito del curso
			}

		}

		/* *********** Fin Editar Requisitos *********** */

		/* *********** Dar de Baja *********** */

		if (opc.equals("dardebaja")) {

			nomCurso = request.getParameter("nomCurso");

			DaoFactory daoFactory = G1Mysql_planEstudioDAO
					.getDAOFactory(DaoFactory.MYSQL);

			try {
				G1PlanEstudioDAO g1PlanEstudioDAO = daoFactory.obtenerPlanDAO();
				G1CursoBean cursoBean = g1PlanEstudioDAO.buscarCurso(nomCurso);

				if (cursoBean != null) {

					if (cursoBean.getEstado() != 0) {
						int valor = g1PlanEstudioDAO.darDeBaja(cursoBean
								.getIdCurso());

						if (valor == 1) {
							out.print("Se dio de Baja la curso satisfactoriamente.");
						} else {
							out.print("Ocurrio algun problema al dar de baja al curso");
						}
					} else {
						out.print("No puede dar de baja, el curso se encuentra inactivo.");
					}

				} else {
					/* no se encontro curso */
					out.print("El curso no existe o esta mal digitado.");
				}

			} catch (Exception e) {
				// TODO: handle exception
			}

		}

		/* *********** Fin Dar de Baja *********** */

	}

	/* ****** TABLA DE CICLOS ******** */
	public String tablaCiclos(ArrayList<G1CursoBean> cursos) {
		String out=""+ 
		"<div id='tablaCiclos'>"+
		"<div class='table-responsive'>"+
			"<table class='table table-hover table-bordered table-striped'>"+
				"<thead>"+
					"<tr style='background-color: #8B0000;'>"+
						"<th style='color: #ffffff;'>C&oacute;digo</th>"+
						"<th style='color: #ffffff;'>Ciclo</th>"+
						"<th style='color: #ffffff;'>Acci&oacute;n</th>"+
					"</tr></thead>"+

				"<tbody>";
			for (int i = 0; i < cursos.size(); i++) {
				out+="<tr data-item-id='"+i+"' class='item ui-sortable-handle'>"+
						"<td Style='vertical-align:middle;'>"+cursos.get(i).getIdCiclo()+"</td>"+
						"<td Style='vertical-align:middle;'>"+cursos.get(i).getCiclo()+"</td>"+
						"<td Style='vertical-align:middle;'>"+
						"<button  id='bEliminar' onclick = 'eliminarCiclo(this);' value='"+i+"' width='20px' height='20px'>Eliminar</button></td>"+
					"</tr>";
			}
		out+="</tbody></table></div></div>";
		
		return out;
	}
	
	/* ****** TABLA DE REQUISITOS ******** */
	public String tablaRequisitos(ArrayList<G1CursoBean> requisitos){
		String out=""+
		"<div id='tablaRequisitos'>"+
		"<div class='table-responsive'>"+
				"<table class='table table-hover table-bordered table-striped'>"+
					"<thead>"+
						"<tr style='background-color: #8B0000;'>"+
							"<th style='color: #ffffff;'>C&oacute;digo</th>"+
							"<th style='color: #ffffff;'>Requisito</th>"+
							"<th style='color: #ffffff;'>Acci&oacute;n</th>"+
						"</tr>"+
					"</thead><tbody>";
			
			for (int i = 0; i <requisitos.size(); i++) {
					out+="<tr data-item-id='"+i+"' class='item ui-sortable-handle'>"+
							"<td Style='vertical-align:middle;'>"+requisitos.get(i).getIdCurso()+"</td>"+
							"<td Style='vertical-align:middle;'>"+requisitos.get(i).getDescripcion()+"</td>"+
							"<td Style='vertical-align:middle;'>"+
							"<button  id='bEliminar' onclick = 'eliminarRequisito(this);' value='"+i+"' width='20px' height='20px'>Eliminar</button>"
							+ "</td>"+
						"</tr>";
			
			}
			
			if (cursos.get(0).getCreditosReq()!=0) {
				out+="<tr data-item-id='"+requisitos.size()+"' class='item ui-sortable-handle'>"+
						"<td Style='vertical-align:middle;'> - </td>"+
						"<td Style='vertical-align:middle;'>"+cursos.get(0).getCreditosReq()+"</td>"+
						"<td Style='vertical-align:middle;'>"+
						"<button  id='bEliminar' onclick = 'eliminarRequisito(this);' value='"+requisitos.size()+"' width='20px' height='20px'>Eliminar</button>"
						+ "</td>"+
					"</tr>";
			}
			
			
			out+="</tbody></table></div></div>";
		
			return out;
	}

}
