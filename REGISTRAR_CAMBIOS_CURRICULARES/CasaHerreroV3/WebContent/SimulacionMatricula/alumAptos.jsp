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
<%
	List<G4_AlumnosAptos> alumnosAptos=(List<G4_AlumnosAptos>)request.getAttribute("listadoTest");
%>
<%
	List<G4_CicloBean> listCiclo=(List<G4_CicloBean>)request.getAttribute("listadoCiclo");
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
                        <li  class="active" >
							<a href="<%=application.getContextPath() %>/ListarCiclo">
								<i class="ion-email"></i> <span>Resultado Alumnos Aptos</span>
							</a>
						</li>
                        <li>
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
                        <h1 class="page-header">Resultado Alumnos Aptos</h1>
                    </div>
                </div>
                
                
                 <label>Mostrar Por Ciclo : </label>
             <form action="ListarCiclo" method="get">
		<input type="hidden" name="accion" value="listar">
		<select onchange="this.form.submit()" name="slt_tipo" size="1" id="slt_tipo" style="border-radius:6px; width:97px; height:22px">
					<option value="0">Seleccione</option>
	    			 <%
	    			 	for(G4_CicloBean aluAp : listCiclo){
	    			 %>
				   	<option value=<%=aluAp.getId()%>><%=aluAp.getDescripcion()%></option>
			   		<%
			   			}
			   		%>
			   		<option value="all">All</option>
		</select>
		</form>
                
                
				<div class="table-responsive">
				<table class="table" class="table"  class="table table-hover table-bordered table-striped" id="sortable">
				    <thead>
				        <tr>
				            <th>Codigo Curso</th>
				            <th>Nombre Curso</th>
				            <th>Ciclo</th>
				            <th>Creditos</th>
				            <th>Nro Alumnos Aptos</th>
				        </tr>
				    </thead>
				    <tbody>
				    
		
        	
        	
				     <%
				    		        	        					     	if(alumnosAptos.size()>0 ){
				    		        	        					     %>
				<%
					for(G4_AlumnosAptos aluAp : alumnosAptos){
				%>
				        <tr data-item-id="1" class="item ui-sortable-handle">
				            <td><%=aluAp.getIdCurso()%></td>
				            
				            <%System.out.println(aluAp.getNombreCurso());%>
				            
				            <td><%=aluAp.getNombreCurso()%></td>
				            <td><%=aluAp.getCiclo()%></td>
				            <td><%=aluAp.getCantCreditos()%></td>
				           <td><%=aluAp.getCantAlumnosAptos()%></td>
				        </tr>
				    <% } %>
  					<% }%>
				    </tbody>
				</table>
				</div><br>
			 
				<center>
				
				<div>
				<form style="float:left;margin-left:50px" name="form1" method="get" action=<%=application.getContextPath() %>/ExportarExcel>
				<button type="submit" class="btn btn-danger" style="background-color:#293c4e">Exportar</button>
				</form>
				
				<form style="float:left;margin-left:50px" action="">
				<button type="submit" class="btn btn-danger"  style="background-color:#293c4e" onclick="window.print()">Imprimir</button>
				</form>
				
				
				<form style="float:left;margin-left:50px" name="form1" method="get" action=<%=application.getContextPath() %>/CursoVsCurso>
				<button type="submit" class="btn btn-danger"   style="background-color:#293c4e">Continuar</button>
				
				</form>
				</div>
				 </center>

   <!-- AQUI TERMINA A AGREGAR SUS PROCESOS -->
							
                </div><!-- /.row -->
				<!-- BEGIN FOOTER -->
				<footer class="bg-white">
					<div class="pull-left">
						<span class="pull-left margin-right-15">Sede Lima: Av. La Fontana 1250 Urb. Sta. Patricia 2da Etapa La Molina, Lima - Per�, Tel�fonos: (511) 2086000.</span>
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
	<script  src="<%=application.getContextPath() %>/SimulacionMatricula/js/row.js" data-turbolinks-track="true"></script>
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