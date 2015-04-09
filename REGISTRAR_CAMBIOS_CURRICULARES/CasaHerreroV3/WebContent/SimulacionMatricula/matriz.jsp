<!DOCTYPE html>
<html lang="en">
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	<meta content="" name="description"/>
	<meta content="" name="author"/>
	
	<title>Menu Principal</title>
	
	<!-- BEGIN CORE FRAMEWORK -->
	<link href="<%=application.getContextPath() %>/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%=application.getContextPath() %>/assets/plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
	<link href="<%=application.getContextPath() %>/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<!-- END CORE FRAMEWORK -->
	
	<!-- BEGIN PLUGIN STYLES -->
	<link href="<%=application.getContextPath() %>/assets/plugins/animate/animate.css" rel="stylesheet" />
	<link href="<%=application.getContextPath() %>/assets/plugins/bootstrap-slider/css/slider.css" rel="stylesheet" />
	<link href="<%=application.getContextPath() %>/assets/plugins/rickshaw/rickshaw.min.css" rel="stylesheet" />
	<link href="<%=application.getContextPath() %>/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" />
	<link href="<%=application.getContextPath() %>/assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" />
	<!-- END PLUGIN STYLES -->
	
	<!-- BEGIN THEME STYLES -->
	<link href="<%=application.getContextPath() %>/assets/css/material.css" rel="stylesheet" />
	<link href="<%=application.getContextPath() %>/assets/css/style.css" rel="stylesheet" />
	<link href="<%=application.getContextPath() %>/assets/css/plugins.css" rel="stylesheet" />
	<link href="<%=application.getContextPath() %>/assets/css/helpers.css" rel="stylesheet" />
	<link href="<%=application.getContextPath() %>/assets/css/responsive.css" rel="stylesheet" />
	
	    <style>
    .tabla1{
     color:white;background-color:red;
    }
    
    .tabla2{
    background-color:yellow;
    }
    
    </style>
	<!-- END THEME STYLES -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="fixed-leftside fixed-header">

<%@ page import="beans.*" %>
<%@ page import="java.util.List" %>
 <%@page import="java.util.Vector"%>
 <%@page import= "java.util.regex.Pattern" %>
 
<%
 	Vector<G4_CursoVsCursoBean> listCurso = (Vector<G4_CursoVsCursoBean>)request.getAttribute("listadoCurso");
 %>
<%
	Vector<G4_MarcoCursoBean> cursoMarc = (Vector<G4_MarcoCursoBean>)request.getAttribute("cursoMarco");
%>
	<!-- BEGIN HEADER -->
	<header>
		<a href="#" class="logo"><i class="ion-ios-bolt"></i> <span>USMP - FIA</span></a>
		<nav class="navbar navbar-static-top">
			<a href="#" class="navbar-btn sidebar-toggle">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <div class="navbar-right">
				
				
			</div>
        </nav>
    </header>
	<!-- END HEADER -->
		 
	<div class="wrapper">
		<!-- BEGIN LEFTSIDE -->
        <div class="leftside">
			<div class="sidebar">
				<!-- BEGIN RPOFILE -->
				<div class="nav-profile">
					<div class="thumb">
						<img src="<%=application.getContextPath() %>/assets/img/avatar.jpg" class="img-circle" alt="" />
						<span class="label label-danger label-rounded">3</span>
					</div>
					<div class="info">
						<a href="#">Nombre del Usuario</a>
					</div>
					<a href="login.jsp" class="button"><i class="ion-log-out"></i></a>
				</div>
				<!-- END RPOFILE -->
				<!-- BEGIN NAV -->
				<div class="title">Menu</div>
					<ul class="nav-sidebar">
						<li>
                            <a href="<%=application.getContextPath() %>/SimulacionMatricula/index.jsp">
                                <i class="ion-home"></i> <span>Principal</span>
                            </a>
                        </li>
                        <li>
							<a href="<%=application.getContextPath() %>/ListarCiclo">
								<i class="ion-email"></i> <span>Resultado Alumnos Aptos</span>
							</a>
						</li>
                        <li class="active" >
                            <a href="<%=application.getContextPath() %>/CursoVsCurso">
                                <i class="ion-beaker"></i> <span>Resultado Matriz</span>
                            </a>
                        </li>
                        <li>
                            <a href="<%=application.getContextPath() %>/SimulacionMatricula/seccion.jsp">
                                <i class="ion-compose"></i> <span>Resultado por Seccion</span>
                            </a>
                        </li>
                    </ul>
					<!-- END NAV -->
		
			</div><!-- /.sidebar -->
        </div>
		<!-- END LEFTSIDE -->

		<!-- BEGIN RIGHTSIDE -->
        <div class="rightside bg-grey-100">
			<!-- BEGIN PAGE HEADING -->

            <div class="container-fluid">		
					
                <div class="row">
					
			       <!-- AQUI COMIENZA A AGREGAR SUS PROCESOS -->

                
                    <!-- AQUI COMIENZA A AGREGAR SUS TITULOS -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Resultado Matriz</h1>
                    </div>
                </div>
                <div id="container">
				<div class="table-responsive">
				<table class="table">
				
				
				    
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
			
			//separando la conada
			
			
			
			 
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
		//con nombres cortos
		
		String [][] mat = {{"Física para Informática","Física Informa."},{"Redes Com.","Redes Comunica."},{"Matemática Discreta","Matemática Dis."},{"Algoritmos y Estructura de Datos I","A. E. Datos I ."} 
						,{"Ingeniería de Software I","Ing.Software I."},{"Sistemas de Información III","S. Informa III."},{"Cálculo I","Cálculo I     ."},{"Introducción a la Ingeniería y la Computación","Int. Ing. Comp." } 
						,{"Introducción a la Programación","Int. Programa ."},{"Teoría y Diseño de Base de Datos","T. D. B. Datos."},{"Taller de Proyectos","Taller de Proy."},{"Ingeniería de Software II","Ing.SoftwareII."} 
						,{"Tecnología de Información I","Tec. Informa I."},{"Algoritmo y Estructura de Datos II","A. E. Datos II."},{"Álgebra Linea","Álgebra Linea ."},{"Gestión Financiera","Gestión Financ."},{"Desarrollo de Aplicaciones II","D. Aplicaci II." } 
						,{"Seguridad y Auditoría de Sistemas de Información","S. A. S. Infor."},{"Investigación Operativa II","Inv. Opera  II."},{"Tecnología de Información III","T. Informa III."},{"Proyecto II","Proyecto II   ."} 
						,{"Formulación y Evaluación de Proyectos","F. E. Proyecto." },{"Seguridad Informática","Segu. Informa ."},{"Pruebas de Software","Pruebas Softwa."},{"Geometría Analítica","Geo. Analítica."}
						,{"Simulación de Sistemas","Simu. Sistemas."},{"Redes y Conectividad I (CCNA I CISCO)","R. Conectivi I." },{"Web Semántica","Web Semántica ."},{"Investigación Operativa I","Inve. Opera  I."}
						,{"Gestión de Proyectos","Gestión Proyec."},{"Planeamiento Estratégico de Tecnologías de Información","P. E. T. Infor."},{"Estadística y Probabilidades I","E. Probabili I."},{"Sistemas Operativos","S. Operativos ."}
						,{"Gestión de Recursos de TI","G. Recursos TI." },{"Sistemas de Información II","S. Informa II ."},{"Contabilidad General","Cont. General ." },{"Redes y Conectividad II (CCNA II CISCO)","R. Conectiv II." }
						,{"Teoría General de Sistemas","T. G. Sistemas."},{"Taller de Creatividad Empresarial","T.C. Empresari."},{"Programación I","Programación I."},{"Gestión de Procesos","Ges. Procesos ."}
						,{"Desarrollo de Juegos","Desa. Juegos  ."},{"Procesamiento Distribuido","P. Distribuido."},{"Fundamentos de Diseño Web","F. Diseño Web ."},{"Sistemas Integrados de Gestión ERP","S.I.Gestio ERP."}
						,{"Mercadotecnia","Mercadotecnia ."},{"Calidad de Software","C. de Software."},{"Redes y Conectividad III (CCNA III CISCO)","R. Conecti III." },{"Gestión Estratégica","Gest. Estrateg."}
						,{"Programación II","Programacio II."},{"Gestión del Conocimiento","G.Conocimiento."},{"Tecnología de Información II","T. Informac II."},{"Estadística y Probabilidades II","E. Probabil II."}
						,{"Comercio Electrónico","C. Electrónico."},{"Inteligencia Artificial y Robótica","I. A. Robótica." },{"Diseño e Implementación de Sistemas","D. I. Sistemas."},{"Desarrollo de Aplicaciones I","D. Aplicacio I."}
						,{"Redes y Conectividad IV (CCNA IV CISCO)","R. Conectiv IV." },{"Ingeniería de Cableado Estructurado","Ing. Cab. Estr."},{"Proyecto I","Proyecto I    ."},{"Inteligencia de Negocios","I. de Negocios." }, 
						{"Administración de Base de Datos","A. Base Datos ."},{"Arquitectura Empresarial I","A. Empresari I." },{"Sistemas de Información I","S. Informaci I." },{"Realidad Nacional","Real. Nacional." }, 
						{"Filosofía","Filosofía     ."},{"Introducción a la Teoría Económica","Int. Teo. Econ."},{"Ética y Moral","Ética y Moral ."},{"Administración de Servicios I","A. Servicios I." }, 
						{"Comportamiento Organizacional","C. Organizacio."},{"Lenguaje","Lenguaje      ."},{"Administración de Servicios II","A. Servicio II." },{"Gestión de la Innovación","G. Innovación ." }, 
						{"Tópicos de Computación ","T. Computación."},{"Métodos de Estudio","Met.de Estudio."},{"Liderazgo y Oratoria","L. y Oratoria ."},{"Inglés I","Inglés I      ."} ,
						{"Actividades I ","Actividades I ."},{"Actividades II","Actividades II."},{"Inglés II ","Inglés II     ."} ,{"Ingeniería Administrativa","Ing. Administr."}

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
				    			  <th class="tabla1"><%=marcoNuevo2[i][j] %></th>
				    			 
				    			<%  }else if(i<j && i!=0){%>
				    			
				    			<td class="tabla2"><%=marcoNuevo2[i][j] %></td>
				    			<%}else{ %>
				    			
				    			
				    			
				    			<td ><%=marcoNuevo2[i][j] %></td>
				    			<% }%>
				    			 

							<%}%>	
				   </tr>		
  
				    <%} %>

				    </thead>
			 
				</table>
				
	
	
	
	
	
	
		
	
	
	
	
	
	
	
				<div>
				<form style="float:left;margin-left:50px" name="form1" method="get" action=<%=application.getContextPath() %>/ExportarMatriz>
				<button type="submit" class="btn btn-danger" style="background-color:#293c4e">Exportar</button>
				</form>
				
		 	 	<form style="float:left;margin-left:50px"  action="">
		 	 	<button type="submit" class="btn btn-danger"  style="background-color:#293c4e" onclick="window.print()">Imprimir</button>
		 	 	</form>
		 		
		 		
		 	
			 
				<a style="float:left;margin-left:50px"  href="<%= request.getContextPath() %>/SimulacionMatricula/seccion.jsp">
				<button style="margin-left:200px;background-color:#293c4e" type="submit" class="btn btn-danger">Continuar</button></a>
				 
				</div>
		
				
				
				</center> 
				</div>

   <!-- AQUI TERMINA A AGREGAR SUS PROCESOS -->
							
                </div><!-- /.row -->
				<!-- BEGIN FOOTER -->
				<footer class="bg-white">
					<div class="pull-left">
						<span class="pull-left margin-right-15">Sede Lima: Av. La Fontana 1250 Urb. Sta. Patricia 2da Etapa La Molina, Lima - Perú, Teléfonos: (511) 2086000.</span>
					</div>
				</footer>
				<!-- END FOOTER -->
            </div><!-- /.container-fluid -->
        </div><!-- /.rightside -->
    </div><!-- /.wrapper -->
	<!-- END CONTENT -->
		
	<!-- BEGIN JAVASCRIPTS -->
	
	<!-- BEGIN CORE PLUGINS -->
	<script src="<%=application.getContextPath() %>/assets/plugins/jquery-1.11.1.min.js" type="text/javascript"></script>
	<script src="<%=application.getContextPath() %>/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="<%=application.getContextPath() %>/assets/plugins/bootstrap/js/holder.js"></script>
	<script src="<%=application.getContextPath() %>/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
	<script src="<%=application.getContextPath() %>/assets/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="<%=application.getContextPath() %>/assets/js/core.js" type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	
	<!-- flot chart -->
	<script src="<%=application.getContextPath() %>/assets/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
	<script src="<%=application.getContextPath() %>/assets/plugins/flot/jquery.flot.grow.js" type="text/javascript"></script>
	<script src="<%=application.getContextPath() %>/assets/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
	
	<!-- sparkline -->
	<script src="<%=application.getContextPath() %>/assets/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
	
	<!-- bootstrap slider -->
	<script src="<%=application.getContextPath() %>/assets/plugins/bootstrap-slider/js/bootstrap-slider.js" type="text/javascript"></script>
	
	<!-- datepicker -->
	<script src="<%=application.getContextPath() %>/assets/plugins/bootstrap-daterangepicker/moment.min.js" type="text/javascript"></script>
	<script src="<%=application.getContextPath() %>/assets/plugins/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
	
	<!-- vectormap -->
	<script src="<%=application.getContextPath() %>/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
	<script src="<%=application.getContextPath() %>/assets/plugins/jquery-jvectormap/jquery-jvectormap-europe-merc-en.js" type="text/javascript"></script>
	
	<!-- counter -->
	<script src="<%=application.getContextPath() %>/assets/plugins/jquery-countTo/jquery.countTo.js" type="text/javascript"></script>
	
	<!-- rickshaw -->
	<script src="<%=application.getContextPath() %>/assets/plugins/rickshaw/vendor/d3.v3.js" type="text/javascript"></script>
	<script src="<%=application.getContextPath() %>/assets/plugins/rickshaw/rickshaw.min.js" type="text/javascript"></script>
	
	<!-- maniac -->
	<script src="<%=application.getContextPath() %>/assets/js/maniac.js" type="text/javascript"></script>
	
	<!-- dashboard -->
	<script type="text/javascript">
		maniac.loadchart();
		maniac.loadvectormap();
		maniac.loadbsslider();
		maniac.loadrickshaw();
		maniac.loadcounter();
		maniac.loadprogress();
		maniac.loaddaterangepicker();
	</script> 

	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

<!-- Mirrored from demo.yakuzi.eu/maniac/1.2/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 25 Mar 2015 22:17:56 GMT -->
</html>