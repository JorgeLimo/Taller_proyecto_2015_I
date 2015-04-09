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
						<li class="active">
                            <a href="<%=application.getContextPath() %>/home.jsp">
                                <i class="ion-home"></i> <span>Principal</span>
                            </a>
                        </li>
                        <% if(rol.getIdRol()==3){ %>
                        <li>
							<a href="<%=application.getContextPath() %>/RegistrarCambios/index.jsp">
								<i class="ion-email"></i> <span>Registrar Cambios Curriculares</span>
							</a>
						</li>
						<% }%>
						
                        <li>
                            <a href="<%=application.getContextPath() %>/MallaCurricular/index.jsp">
                                <i class="ion-beaker"></i> <span>Malla Curricular</span>
                            </a>
                        </li>
                        <li>
                            <a href="<%=application.getContextPath() %>/Horarios/index.jsp">
                                <i class="ion-compose"></i> <span>Horarios</span>
                            </a>
                        </li>
                        <li>
                            <a href="<%=application.getContextPath() %>/SimulacionMatricula/index.jsp">
                                <i class="ion-navicon-round"></i> <span>Simulacion de Matricula</span>
                            </a>
                        </li>
                        <% if(rol.getIdRol()==3){ %>
                        <li>
                            <a href="<%=application.getContextPath() %>/ClasificacionPorLogros/index.jsp">
                                <i class="ion-arrow-graph-up-right"></i> <span>Calificacion por Logros</span>
                            </a>
                        </li>
                        <% }%>
                        <li >
                            <a href="<%=application.getContextPath() %>/GestionTesis/index.jsp">
                                <i class="ion-paper-airplane"></i> <span>Gestion de Tesis</span>
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
            <div class="page-head bg-grey-100">
				<h1 class="page-title">Menu Principal<small>Actualmente se tienen 6 modulos</small></h1>
			</div>
			<!-- END PAGE HEADING -->

            <div class="container-fluid">		
					
                <div class="row">
					
							<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
								<div class="panel todo">
									<div class="panel-title bg-white no-border">
										<div class="panel-head"><i class="ion-android-folder"></i> Todo los Proyectos</div>
										<div class="panel-tools">
											<a href="#"><i class="ion-plus"></i></a>
										</div>
									</div>
									<div class="panel-body bg-bg-white no-padding">
										<div class="padding-15-20">
											<input type="text" class="form-control input-lg border-grey-300" Placeholder="New project" />
										</div>
										<ul class="todo">
											<li>
												<div class="checkbox checkbox-theme">
													<input type="checkbox" id="checkbox" value="1"> 
													<label for="checkbox"><span class="label bg-red-500 margin-right-5">importante</span>Registrar Cambios Curriculares</label>
													<div class="pull-right hidden-xs">
														<a href="#" class="color-blue-grey-500"><i class="ion-edit"></i></a>
														<a href="#" class="color-blue-grey-500 margin-left-10"><i class="ion-trash-b"></i></a>
													</div>
												</div>
											</li>
											<li>
												<div class="checkbox checkbox-theme">
													<input type="checkbox" id="checkbox" value="2"> 
													<label for="checkbox"><span class="label bg-red-500 margin-right-5">importante</span>Malla Curricular</label>
													<div class="pull-right hidden-xs">
														<a href="#" class="color-blue-grey-500"><i class="ion-edit"></i></a>
														<a href="#" class="color-blue-grey-500 margin-left-10"><i class="ion-trash-b"></i></a>
													</div>
												</div>
											</li>
											<li>
												<div class="checkbox checkbox-theme">
													<input type="checkbox" id="checkbox" value="3"> 
													<label for="checkbox"><span class="label bg-red-500 margin-right-5">importante</span>Horarios</label>
													<div class="pull-right hidden-xs">
														<a href="#" class="color-blue-grey-500"><i class="ion-edit"></i></a>
														<a href="#" class="color-blue-grey-500 margin-left-10"><i class="ion-trash-b"></i></a>
													</div>
												</div>
											</li>
											<li>
												<div class="checkbox checkbox-theme">
													<input type="checkbox" id="checkbox" value="4"> 
													<label for="checkbox"><span class="label bg-red-500 margin-right-5">importante</span>Simulacion de Matricula</label>
													<div class="pull-right hidden-xs">
														<a href="#" class="color-blue-grey-500"><i class="ion-edit"></i></a>
														<a href="#" class="color-blue-grey-500 margin-left-10"><i class="ion-trash-b"></i></a>
													</div>
												</div>
											</li>
											<li>
												<div class="checkbox checkbox-theme">
													<input type="checkbox" id="checkbox" value="5"> 
													<label for="checkbox"><span class="label bg-red-500 margin-right-5">importante</span>Calificacion por Logros</label>
													<div class="pull-right hidden-xs">
														<a href="#" class="color-blue-grey-500"><i class="ion-edit"></i></a>
														<a href="#" class="color-blue-grey-500 margin-left-10"><i class="ion-trash-b"></i></a>
													</div>
												</div>
											</li>
											<li>
												<div class="checkbox checkbox-theme">
													<input type="checkbox" id="checkbox" value="6"> 
													<label for="checkbox"><span class="label bg-red-500 margin-right-5">importante</span>Gestion de Tesis</label>
													<div class="pull-right hidden-xs">
														<a href="#" class="color-blue-grey-500"><i class="ion-edit"></i></a>
														<a href="#" class="color-blue-grey-500 margin-left-10"><i class="ion-trash-b"></i></a>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div><!-- /.panel -->
							</div><!-- /.col -->	
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