<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="beans.*" %>
<%@ page import="java.util.List" %>
 <%@page import="java.util.Vector"%>
 <%@page import="java.util.regex.Pattern"%>
 
<% Vector<G4_CursoVsCursoBean> listCurso = (Vector<G4_CursoVsCursoBean>)request.getAttribute("listadoCurso");%>
<% Vector<G4_MarcoCursoBean> cursoMarc = (Vector<G4_MarcoCursoBean>)request.getAttribute("cursoMarco");%>



		 
                   
         
				<table border="1">
				
				
				
				    <%  if (cursoMarc != null) {
                        response.setContentType("application/vnd.ms-excel");
                        response.setHeader("Content-Disposition", "inline; filename="
                                        + "StudentReport.xls");
                }
				    %>
				
				
				
				
				 <h1>Resultado Matriz</h1>
			
			
				<%

				
		
			
			//akaaaaaaaaaaaaaaaaaaa empiex 4-2-
			
			
			
			String vecGeneral[] = new String[1200];
			String marcoNuevo[][]=new String [cursoMarc.size()+1][cursoMarc.size()+1];
			//llenando marco
			for(int i=0;i<cursoMarc.size();i++){
				 marcoNuevo[0][0]="xxx";
				 marcoNuevo[0][i+1]=cursoMarc.get(i).getIdCursoMArco();
				 marcoNuevo[i+1][0]=cursoMarc.get(i).getIdCursoMArco();
			}
			
			
			//llenando  cuerpo
			
			for(int i=1;i<cursoMarc.size()+1;i++){
				System.out.println();
				for(int j=1;j<cursoMarc.size()+1;j++){
				 
					String pal=marcoNuevo[i][0]+"-"+marcoNuevo[0][j];
					marcoNuevo[i][j]=pal;
						 
				}
			}
			
			
			
	//imprimiendo cuperpo real llenado
			
			for(int i=0;i<cursoMarc.size()+1;i++){
				System.out.println();
				for(int j=0;j<cursoMarc.size()+1;j++){
				 
					 
						System.out.print(marcoNuevo[i][j]+" ");
				}
			}
			
			
			
			
			//combinando
			int k=0;
			for(int i=0;i<listCurso.size();i++){
				System.out.println();
				
				for(int j=0;j<listCurso.size();j++){
					
	 vecGeneral[k]=listCurso.get(i).getAlumno()+"-"+listCurso.get(i).getCurso()+"-"+listCurso.get(j).getAlumno()+"-"+listCurso.get(j).getCurso();
				k++;		 
				}
			}
			
			
			
			//imprimir cochino
			
			for(int i=0;i<vecGeneral.length;i++){
				if(vecGeneral[i]!=null){
					System.out.println(i+") "+vecGeneral[i]);
				}
				
			
			
				
				
			}
			
			//separando la cocinada
			
			
			
			 
			String vecLimpio[] = new String[1200];
			int p=0;
			for(int i=0;i<vecGeneral.length;i++){
				 
			
			
				if(vecGeneral[i]==null){
					 
				}else{
					String todo=vecGeneral[i];
					String partidor[]=Pattern.compile("-").split(todo);
					if(partidor[0].equals(partidor[2])){
						vecLimpio[p]=partidor[0]+"-"+partidor[1]+"-"+partidor[3];
						p=p+1;
					
				}
				
			}
				
				
			}
			
			//imprimir limpio
			System.out.println("IMPRIMIENDO LIMPIO");
			for(int i=0;i<vecLimpio.length;i++){
				if(vecLimpio[i]!=null){
					System.out.println(i+") "+vecLimpio[i]);
				}
				
			}
			
			
			
			
			
			
			
			//Creando matriz de ints
			
		 int marcoInt[][]=new int [cursoMarc.size()+1][cursoMarc.size()+1];
			//llenando
			for(int i=0;i<cursoMarc.size();i++){
				marcoInt[0][0]=0;
				marcoInt[0][i+1]=0;
				marcoInt[i+1][0]=0;
			}
			
			
			

	//imprimiendo ints
			
			for(int i=0;i<cursoMarc.size()+1;i++){
				System.out.println();
				for(int j=0;j<cursoMarc.size()+1;j++){
					
					 
						System.out.print(marcoInt[i][j]+" ");
				}
			}
			
			
			
	
	
	//logica
	
		for(int i=0;i<cursoMarc.size()+1;i++){
				System.out.println();
				for(int j=0;j<cursoMarc.size()+1;j++){
				  
				
					
					for(int a=0;a<vecLimpio.length;a++){
						
						
						
						if(vecLimpio[a]==null){
					
					
						}else{
							
							String pal=vecLimpio[a];
							String partidor2[]=Pattern.compile("-").split(pal);
							String pal2=partidor2[1]+"-"+partidor2[2];
							
							if(marcoNuevo[i][j].equals(pal2)){
								marcoInt[i][j]++;
							}
						}
					
					
					
						
						
						
					}
					
					
					
				}
			}
	
	
	
	
	
	
	
	
	
	
	
		//imprimiendo ints
		
		for(int i=0;i<cursoMarc.size()+1;i++){
			System.out.println();
			for(int j=0;j<cursoMarc.size()+1;j++){
				
				 
					System.out.print(marcoInt[i][j]+" ");
			}
		}
	
	
		
	 
		//replicando ultima y keda esta matriz
		
		
		String [][] mat = {{"F�sica para Inform�tica","F�sica Informa."},{"Redes Com.","Redes Comunica."},{"Matem�tica Discreta","Matem�tica Dis."},{"Algoritmos y Estructura de Datos I","A. E. Datos I ."} 
						,{"Ingenier�a de Software I","Ing.Software I."},{"Sistemas de Informaci�n III","S. Informa III."},{"C�lculo I","C�lculo I     ."},{"Introducci�n a la Ingenier�a y la Computaci�n","Int. Ing. Comp." } 
						,{"Introducci�n a la Programaci�n","Int. Programa ."},{"Teor�a y Dise�o de Base de Datos","T. D. B. Datos."},{"Taller de Proyectos","Taller de Proy."},{"Ingenier�a de Software II","Ing.SoftwareII."} 
						,{"Tecnolog�a de Informaci�n I","Tec. Informa I."},{"Algoritmo y Estructura de Datos II","A. E. Datos II."},{"�lgebra Linea","�lgebra Linea ."},{"Gesti�n Financiera","Gesti�n Financ."},{"Desarrollo de Aplicaciones II","D. Aplicaci II." } 
						,{"Seguridad y Auditor�a de Sistemas de Informaci�n","S. A. S. Infor."},{"Investigaci�n Operativa II","Inv. Opera  II."},{"Tecnolog�a de Informaci�n III","T. Informa III."},{"Proyecto II","Proyecto II   ."} 
						,{"Formulaci�n y Evaluaci�n de Proyectos","F. E. Proyecto." },{"Seguridad Inform�tica","Segu. Informa ."},{"Pruebas de Software","Pruebas Softwa."},{"Geometr�a Anal�tica","Geo. Anal�tica."}
						,{"Simulaci�n de Sistemas","Simu. Sistemas."},{"Redes y Conectividad I (CCNA I CISCO)","R. Conectivi I." },{"Web Sem�ntica","Web Sem�ntica ."},{"Investigaci�n Operativa I","Inve. Opera  I."}
						,{"Gesti�n de Proyectos","Gesti�n Proyec."},{"Planeamiento Estrat�gico de Tecnolog�as de Informaci�n","P. E. T. Infor."},{"Estad�stica y Probabilidades I","E. Probabili I."},{"Sistemas Operativos","S. Operativos ."}
						,{"Gesti�n de Recursos de TI","G. Recursos TI." },{"Sistemas de Informaci�n II","S. Informa II ."},{"Contabilidad General","Cont. General ." },{"Redes y Conectividad II (CCNA II CISCO)","R. Conectiv II." }
						,{"Teor�a General de Sistemas","T. G. Sistemas."},{"Taller de Creatividad Empresarial","T.C. Empresari."},{"Programaci�n I","Programaci�n I."},{"Gesti�n de Procesos","Ges. Procesos ."}
						,{"Desarrollo de Juegos","Desa. Juegos  ."},{"Procesamiento Distribuido","P. Distribuido."},{"Fundamentos de Dise�o Web","F. Dise�o Web ."},{"Sistemas Integrados de Gesti�n ERP","S.I.Gestio ERP."}
						,{"Mercadotecnia","Mercadotecnia ."},{"Calidad de Software","C. de Software."},{"Redes y Conectividad III (CCNA III CISCO)","R. Conecti III." },{"Gesti�n Estrat�gica","Gest. Estrateg."}
						,{"Programaci�n II","Programacio II."},{"Gesti�n del Conocimiento","G.Conocimiento."},{"Tecnolog�a de Informaci�n II","T. Informac II."},{"Estad�stica y Probabilidades II","E. Probabil II."}
						,{"Comercio Electr�nico","C. Electr�nico."},{"Inteligencia Artificial y Rob�tica","I. A. Rob�tica." },{"Dise�o e Implementaci�n de Sistemas","D. I. Sistemas."},{"Desarrollo de Aplicaciones I","D. Aplicacio I."}
						,{"Redes y Conectividad IV (CCNA IV CISCO)","R. Conectiv IV." },{"Ingenier�a de Cableado Estructurado","Ing. Cab. Estr."},{"Proyecto I","Proyecto I    ."},{"Inteligencia de Negocios","I. de Negocios." }, 
						{"Administraci�n de Base de Datos","A. Base Datos ."},{"Arquitectura Empresarial I","A. Empresari I." },{"Sistemas de Informaci�n I","S. Informaci I." },{"Realidad Nacional","Real. Nacional." }, 
						{"Filosof�a","Filosof�a     ."},{"Introducci�n a la Teor�a Econ�mica","Int. Teo. Econ."},{"�tica y Moral","�tica y Moral ."},{"Administraci�n de Servicios I","A. Servicios I." }, 
						{"Comportamiento Organizacional","C. Organizacio."},{"Lenguaje","Lenguaje      ."},{"Administraci�n de Servicios II","A. Servicio II." },{"Gesti�n de la Innovaci�n","G. Innovaci�n ." }, 
						{"T�picos de Computaci�n ","T. Computaci�n."},{"M�todos de Estudio","Met.de Estudio."},{"Liderazgo y Oratoria","L. y Oratoria ."},{"Ingl�s I","Ingl�s I      ."} ,
						{"Actividades I ","Actividades I ."},{"Actividades II","Actividades II."},{"Ingl�s II ","Ingl�s II     ."} ,{"Ingenier�a Administrativa","Ing. Administr."}

	};
		
		
		
		
	 
			String marcoNuevo2[][]=new String [cursoMarc.size()+1][cursoMarc.size()+1];
			//llenando marco
				for(int i=0;i<cursoMarc.size();i++){
				 marcoNuevo2[0][0]="CURSO";
				
				 
				 for(int j=0;j<mat.length;j++){
					 
					 if(cursoMarc.get(i).getNombreCurso().trim().equalsIgnoreCase(mat[j][0].trim())){
						 marcoNuevo2[0][i+1]=mat[j][1];
						 marcoNuevo2[i+1][0]=mat[j][1];
					 }else{
						
					 }
				
				 }
			}
		
			
			
			
			
			
			
			
			for(int i=1;i<cursoMarc.size()+1;i++){
				System.out.println();
				for(int j=1;j<cursoMarc.size()+1;j++){
				 
					marcoNuevo2[i][j]=marcoInt[i][j]+"";
						 
				}
			}
			
			
			
			
			
			
			for(int i=0;i<cursoMarc.size()+1;i++){
				System.out.println();
				for(int j=0;j<cursoMarc.size()+1;j++){
				 
					 
						System.out.print(marcoNuevo2[i][j]+" ");
				}
			}
			
			
			
			
			
			
			 
 			%>
				
					
				
			 
				
				
				
				    <thead>
				       <% for(int i=0;i<cursoMarc.size()+1;i++){ %>
				    <tr  >
				    	
				    		<%for(int j=0;j<cursoMarc.size()+1;j++){ %>
				    			<% if(i==j  && (j!=0&& i!=0)){%> 
				    			  <th bgcolor="#FF3300"><%=marcoNuevo2[i][j] %></th>
				    			 
				    			<%  }else{%>
				    			<th ><%=marcoNuevo2[i][j] %></th>
				    			<% }%>
				    			 

							<%}%>	
				   </tr>		
  
				    <%} %>

				    </thead>
			 
			 
			 
				</table>
				






</body>
</html>