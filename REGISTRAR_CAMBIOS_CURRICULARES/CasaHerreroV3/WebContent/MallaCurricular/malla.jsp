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
	
	<link href="css/malla.css" rel="stylesheet" type="text/css">
	<!-- END THEME STYLES -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="fixed-leftside fixed-header">
<%@page import = "beans.UsuarioBean" %>
<%@page import = "beans.EmpleadoBean" %>
<% UsuarioBean objUser = (UsuarioBean) session.getAttribute("usuario"); %>
<% EmpleadoBean rol = (EmpleadoBean)session.getAttribute("rol"); %>
<% String tipoRol=""; if(rol.getIdRol()==0){tipoRol="Alumno";}; if(rol.getIdRol()==1){tipoRol="Administrativo";};if(rol.getIdRol()==2){tipoRol="Docente";};if(rol.getIdRol()==3){tipoRol="Director";} %>

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
						<a href="#"> <%=objUser.getUsuario()%> - <%=tipoRol%></a>
					</div>
					<a href="login.jsp" class="button"><i class="ion-log-out"></i></a>
				</div>
				<!-- END RPOFILE -->
				<!-- BEGIN NAV -->
				<div class="title">Menu</div>
					<ul class="nav-sidebar">
						<li>
                            <a href="<%=application.getContextPath() %>/MallaCurricular/index.jsp">
                                <i class="ion-home"></i> <span>Regresar</span>
                            </a>
                        </li>
                        <li class="active">
                            <a href="<%=application.getContextPath() %>/MallaCurricular/malla.jsp">
                                <i class="ion-beaker"></i> <span>Malla</span>
                            </a>
                        </li>
                        
                        <li>
                            <a href="<%=application.getContextPath() %>/MallaCurricular/mallaAlumno.jsp">
                                <i class="ion-beaker"></i> <span>Malla por Alumno</span>
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
				<div class="col-lg-12">
					
				<!-- ESTA ESTIQUETA SERA COMO SU BODY PARA SU APLICACION -->


			<!-- AQUI COMIENZA A AGREGAR SUS PROCESOS -->

			<%
				HttpSession se = request.getSession(true);
				String nombre = (String) se.getAttribute("nombre");
			%>
			<!-- AQUI COMIENZA A AGREGAR SUS TITULOS -->
			<div class="row">
				<div class="col-lg-12">
					<h3>Malla Curricular</h3>
				</div>
			</div>
			<div class="row opciones">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default active mencion"
						data-mencion="E1">Sistemas de Información</button>
					<button type="button" class="btn btn-default mencion"
						data-mencion="E2">Tecnología de Información</button>
					<button type="button" class="btn btn-default mencion"
						data-mencion="E3">Ingeniería de Software</button>
				</div>

			</div>
			<div class="row">
				<h4>
					Alumno: <span id="alumno"><%=nombre %></span>
				</h4>
			</div>
			<div class="row">
				<div id="malla">
					<div class="ciclo" id="ciclo01">
						<h6>Ciclo I</h6>
					</div>
					<div class="ciclo" id="ciclo02">
						<h6>Ciclo II</h6>
					</div>
					<div class="ciclo" id="ciclo03">
						<h6>Ciclo III</h6>
					</div>
					<div class="ciclo" id="ciclo04">
						<h6>Ciclo IV</h6>
					</div>
					<div class="ciclo" id="ciclo05">
						<h6>Ciclo V</h6>
					</div>
					<div class="ciclo" id="ciclo06">
						<h6>Ciclo VI</h6>
					</div>
					<div class="ciclo" id="ciclo07">
						<h6>Ciclo VII</h6>
					</div>
					<div class="ciclo" id="ciclo08">
						<h6>Ciclo VIII</h6>
					</div>
					<div class="ciclo" id="ciclo09">
						<h6>Ciclo IX</h6>
					</div>
					<div class="ciclo" id="ciclo10">
						<h6>Ciclo X</h6>
					</div>
				</div>
			</div>
			<div class="row leyenda">
				<h5>Leyenda:</h5>
				<div class="leyenda2">
					<div class="cuadro tipoA01"></div>
					<span>Área de Computación</span>
					<div class="cuadro tipoA02"></div>
					<span>Área de Gestión</span>
					<div class="cuadro tipoA03"></div>
					<span>Área de Ciencias</span>
					<div class="cuadro tipoA04"></div>
					<span>Área de Humanidades</span>
					<div class="cuadro tipoA05"></div>
					<span>Área de Inglés</span>
				</div>
			</div>
			<div class="row">
				<table class="table">
					<thead>
						<tr>
							<th colspan="2">Otros Cursos</th>
						</tr>
					</thead>
					<tbody id="otrosCursos">
						<tr>
							<td colspan="2">No hay cursos...</td>
						</tr>
					</tbody>
				</table>


			</div>

			<!-- AQUI TERMINA A AGREGAR SUS PROCESOS -->


		</div>
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
	
	
	<script src="js/malla.js"></script>
	
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