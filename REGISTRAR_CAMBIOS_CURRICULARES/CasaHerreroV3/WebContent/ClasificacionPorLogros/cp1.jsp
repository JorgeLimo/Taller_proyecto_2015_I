<%@page import="beans.*"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	Vector<G5_CursoBean> vector = new Vector();
//Vector<PersonaBean> listapersona = new Vector();
//Vector<ProductoBean> vectorpro = new Vector();
//Vector<CuotasBean> vectorcuota = new Vector();
  String descripcion = "No ha seleccionado ningun curso aún";
  String idcurso = null;

	if(request.getAttribute("vector")!=null){
		
		vector = (Vector)request.getAttribute("vector");
		//HttpSession sesion = request.getSession(true);
		//sesion.setAttribute("vectorcuota", vectorcuota);

	}
	if(request.getAttribute("dato")!=null){
		idcurso = (String)request.getAttribute("dato");
	
	}
%>

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






<style type="text/css">

body,td,th {
	color: #000;
}
</style>
<body background="#BDBDBD" bgcolor="#D8D8D8" class="fixed-leftside fixed-header">
<%@page import = "beans.UsuarioBean" %>
<%@page import = "beans.EmpleadoBean" %>
<% UsuarioBean objUser = (UsuarioBean) session.getAttribute("usuario"); %>
<% EmpleadoBean rol = (EmpleadoBean)session.getAttribute("rol"); %>
<% String tipoRol=""; if(rol.getIdRol()==0){tipoRol="Alumno";}; if(rol.getIdRol()==1){tipoRol="Administrativo";};if(rol.getIdRol()==2){tipoRol="Docente";};if(rol.getIdRol()==3){tipoRol="Director";} %>


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
                            <a href="<%=application.getContextPath() %>/home.jsp">
                                <i class="ion-home"></i> <span>Regresar</span>
                            </a>
                        </li>
                                              
                        <li>
                            <a href="<%=application.getContextPath() %>/cp1.jsp">
                                <i class="ion-compose"></i> <span>Director de Escuela</span>
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




<div id="registrarConvocatoria">
	
	<fieldset class="ui-widget ui-widget-content" style="font:13px Arial;padding:10px">
	  <legend style="padding:10px;color:#444"><b>DATOS GENERALES</b></legend>
         
        
        <!--Tabla separadora 1 -->
        <table width="100%" border="0">
        <tr>
        <td>
        
       
       
       
        
        </td>
        </tr>
        
        <tr>
       	<td>
        <table width="100%" border="0">
		  <tr>
		    <td width="97">Codigo</td>
		    <td width="119">2341284</td>
		    <td width="29">Estimado</td>
		    <td width="270">Ing. Carlos Acuna Flores</td>
	      </tr>
	  </table>
      </td>
       </tr>
      
      <!-- Fin de la tabla separadora 1-->
      </table>

  </fieldset>


	<fieldset class="ui-widget ui-widget-content" style="font:13px Arial;padding:10px">
		<legend style="padding:10px;color:#444"><b>CRITERIO DE SELECCION</b></legend>
		
		<!-- Aqui empieza el formulario -->
		
		<form action="BuscarCurso" method="post">
		
		<table width="60%" border="0">
		  
	      
		  <tr>
		    <td>
		    <span style="font-weight:normal;width:150px;margin-left:20px;margin-right:20px;color:#444">Curso</span>
		    </td>
		    <td colspan="2">
		    <select id="cb_curso" name="cb_curso">
			<option value="0" selected="selected">----Seleccione----</option>
			<%for(int i=0;i<vector.size();i++){%>
			<option value="<%=vector.get(i).getId()%>"><%=vector.get(i).getDescripcion() %></option>
			<%} %>
			</select>
			</td>
			<td>
			<input type="submit" name="buscar" id="buscar" value="Buscar">
			</td>
			
          </tr>
          		 
         <tr>
          <td><span style="font-weight:normal;width:150px;margin-left:20px;margin-right:20px;color:#444">Curso Seleccionado: </span></td>
          <td>
          <%
          if(idcurso!=null){
        	  for(int i=0;i<vector.size();i++){
            	 // int idaux = Integer.parseInt(idcurso);
            	if(vector.get(i).getId().equalsIgnoreCase(idcurso)){
            		descripcion=vector.get(i).getDescripcion();
            	}
            	  
              }
          }
                  
          %>
         
         <td><%=descripcion %></td>
         
          </td>
          </tr>
         
         
      </table>
      
      
      <!-- Aqui termina el Formulario -->
      </form>
      
	</fieldset>
<fieldset class="ui-widget ui-widget-content" style="font:13px Arial;padding:10px">
	<legend style="padding:10px;color:#444"><b>CALIFICACION DEL CURSO</b></legend>
	
		<!-- Tabla separador -->
		<table border="0" width="100%" cellspacing="0" cellpadding="0">
		<!-- Empieza la primera division -->
		<tr>
		<td>
	
	
	
			<table width="100%" border="1" align="left" cellspacing="0" cellpadding="0" >
			<tr bgcolor="#BDBDBD">
		    <td align="center">Identificador</td>
		    <td align="center"> Descripcion de la Nota</td>
		    <td align="center">Seleccion</td>
		    <td align="center">Descripcion de Logro</td>
		    <td align="center">Nivel</td>
		    </tr>
		    </table>
		
		
			<!-- Termina primera division -->
    		</td>
    		</tr>
		
		
			<!-- Empieza la segunda division -->
			<tr>
   		 	<td>
			<table width="60%" border="0" align="left" cellspacing="0" cellpadding="0">
		   	<tr>
		    <input style="background-color: FAAC58" type="submit" name="" id="" value="Guardar" disabled="disabled" />
		    <input style="background-color: F2F2F2" type="submit" name="" id="" value="Exportar" disabled="disabled" />
		    <input style="background-color: F2F2F2" type="submit" name="Agregar Logro" id="Agregar Logro" value="Agregar Descripcion de Logro" disabled="disabled" />
	      	</tr>
		  	</table>
		
			</td>
    		</tr>
    		
    		
    		
    		<!-- Termina segunda division -->
    		</table>
			
			

		<p>&nbsp;</p>
		</fieldset>   
	
    
	
</div> <!-- fin del body contauiner -->


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

<script>

$(document).ready(function(){
	
	$( "#fechIntegracion" ).datepicker({
	      showOn: "button",
	      buttonImage: "images/calendar.gif",
	      buttonImageOnly: true,
	      minDate : new Date()
	    });
	
	$("#numeroVacante, #jornadaInicio, #jornadaFin").numeric();
	$('.jqte-area').jqte();
	var jqteStatus = true;
	$(".status").click(function()
	{
		jqteStatus = jqteStatus ? false : true;
		$('.jqte-area').jqte({"status" : jqteStatus})
	});
	
// 	llenarDatosEmpresa();
});


</script>