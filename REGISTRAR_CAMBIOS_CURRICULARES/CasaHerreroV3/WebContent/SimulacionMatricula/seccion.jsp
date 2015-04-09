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
                        <li>
                            <a href="<%=application.getContextPath() %>/CursoVsCurso">
                                <i class="ion-beaker"></i> <span>Resultado Matriz</span>
                            </a>
                        </li>
                        <li  class="active" >
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
                <select>
				  <option value="I">I</option>
				  <option value="II">II</option>
				  <option value="III">III</option>
				  <option value="IV">IV</option>
				</select>
                
				<div class="table-responsive">
				<table class="table">
				    <thead>
				        <tr>
				            <th>Codigo Curso</th>
				            <th>Nombre Curso</th>
				            <th>Ciclo</th>
				            <th>Creditos</th>
				            <th>Tipo Curso</th>
				            <th>Seccion</th>
				            <th>Nro Alumnos Aptos</th>
				        </tr>
				    </thead>
				    <tbody>
				        <tr>
				            <td>99989</td>
				            <td>Curso 6</td>
				            <td>II</td>
				            <td>5</td>
				             <td>Teoria</td>
				            <td>32F</td>
				            <td>50</td>
				        </tr>
				        <tr>
				            <td>99988</td>
				            <td>Curso 7</td>
				            <td>III</td>
				            <td>5</td>
				             <td>Teoria</td>
				             <td>33F</td>
				            <td>50</td>
				        </tr>
				        <tr>
				            <td>99987</td>
				            <td>Curso 8</td>
				            <td>III</td>
				            <td>3</td>
				             <td>Teoria</td>				            
				             <td>12G</td>
				            <td>50</td>
				        </tr>
				        <tr>
				            <td>99986</td>
				            <td>Curso 9</td>
				            <td>IV</td>
				            <td>4</td>
				             <td>Laboratiorio</td>
				             <td>70K</td>
				            <td>60</td>
				        </tr>
				        <tr>
				            <td>99985</td>
				            <td>Curso 10</td>
				            <td>V</td>
				            <td>5</td>
				             <td>Laboratiorio</td>
				             <td>71K</td>
				            <td>80</td>
				        </tr>
				        <tr>
				            <td>99984</td>
				            <td>Curso 11</td>
				            <td>VI</td>
				            <td>4</td>
				             <td>Teoria</td>
				             <td>58F</td>
				            <td>30</td>
				        </tr>
				    </tbody>
				</table>
				</div><br>
				<center>
				<button type="button" class="btn btn-danger">Exportar</button>
				<button type="button" class="btn btn-danger">Imprimir</button>
				<a href="index.jsp"><button style="margin-left:200px" type="button" class="btn btn-danger">Finalizar</button></a>
				</center>

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