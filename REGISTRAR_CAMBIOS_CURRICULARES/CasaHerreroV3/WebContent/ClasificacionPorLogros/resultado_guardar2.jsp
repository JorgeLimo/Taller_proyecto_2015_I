<%@page import="beans.*"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<script language="JavaScript">
function pregunta(){
	if(confirm('¿Confirmar las modificaciones?')){
		document.form2.submit();
	}
}
</script>
<%
	Vector<G5_CursoBean> vector = new Vector();
Vector<G5_LogrosBean> vectorlogro = new Vector();
Vector<G5_TipoCursoBean> vectortipocurso = new Vector();
String[] recopilado = null;
String idcurso = null;
String descripcion = "No ha seleccionado ningun curso aún";
String mensaje = null;
String[]logro = null;
String[] nivel = null;
String estado_guardar = "";

		HttpSession sesion = request.getSession(true);
		if(sesion.getAttribute("recopilado")!=null){
	recopilado = (String[])sesion.getAttribute("recopilado"); 
	idcurso = (String)sesion.getAttribute("idcurso");
		}
		
	if(sesion.getAttribute("vector")!=null){
		System.out.println("vector no es null");
		
		estado_guardar = (String)request.getAttribute("estado_guardar");
		
		
		vector = (Vector)sesion.getAttribute("vector");
//			if(estado_guardar.equalsIgnoreCase("ok")){
	//		}else{
		//	vectorlogro = (Vector)sesion.getAttribute("vectorlogro");
	//		}
		
		vectortipocurso = (Vector)sesion.getAttribute("vectortipocurso");
//		recopilado = (String[])request.getAttribute("recopilado");
		recopilado = (String[])sesion.getAttribute("recopilado"); 


		//HttpSession sesion = request.getSession(true);
		idcurso = (String)sesion.getAttribute("idcurso");
	
	}
	
	vectorlogro = (Vector)request.getAttribute("vectorlogro");

	

	sesion.setAttribute("vector", vector);
	sesion.setAttribute("vectorlogro", vectorlogro);
	sesion.setAttribute("vectortipocurso", vectortipocurso);
	sesion.setAttribute("recopilado", recopilado);
	sesion.setAttribute("idcurso", idcurso);
	
	if(request.getAttribute("mensaje")!=null){
		mensaje = (String)request.getAttribute("mensaje");
	}else{
		mensaje = "";
	}
	System.out.println("paso el mensaje "+ mensaje);
%>

<%
//response.setIntHeader("refresh", 1);
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
<!-- END HEAD -->
<!-- BEGIN BODY -->



<style type="text/css">
body,td,th {
	color: #000;
}
</style>
<body background="#BDBDBD" bgcolor="#D8D8D8" class="fixed-leftside fixed-header">

<!-- BEGIN HEADER -->
	<header>
		<a href="index.html" class="logo"><i class="ion-ios-bolt"></i> <span>USMP - FIA</span></a>
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
		<table width="533" border="0">
		  <tr>
		    <td width="97">Codigo</td>
		    <td width="119">2341284</td>
		    <td width="29">Estimado</td>
		    <td width="270">Ing. Carlos Acuna Flores</td>
	      </tr>
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
			</tr>
          	<tr>
          	<td><span style="font-weight:normal;width:150px;margin-left:20px;margin-right:20px;color:#444">Curso Seleccionado: </span></td>
			<td>
          <%for(int i=0;i<vector.size();i++){
        	  //int idaux = Integer.parseInt(idcurso);
        	if(vector.get(i).getId().equalsIgnoreCase(idcurso)){
        		descripcion=vector.get(i).getDescripcion();
        	}
          }
          %>
         <td><span style="font-weight:normal;width:150px;margin-left:20px;margin-right:20px;color:#B40404"><%=descripcion %></span></td>
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
	<!-- Tabla 2 -->
	
	<table width="100%" border="1" align="left" cellspacing="0" cellpadding="0" >
			<tr bgcolor="#BDBDBD">
		    <td align="center">Identificador</td>
		    <td align="center"> Descripcion de la Nota</td>
		    <td align="center">Seleccion</td>
		    <td align="center">Descripcion de Logro</td>
  		    <td align="center">Nivel</td>
	      </tr>
	      
	      <!-- Empieza Formulario con metodo POST -->
	      
	      <form name="form2" method="get" action="ReporteLogros.xls?exportToExcel=YES">
	      
	      <!-- Empieza el recorreido por la Tabla de logros -->
	      <%for(int i=0;i<vectorlogro.size();i++){ %>
			<!-- Coloreando intercalado -->
	      <%
	      String colorear = "";
	      if(i%2==0){
	    	  colorear = "#E6E6E6";
	      }else{
			  colorear= "#FAFAFA";
		  }
	      %>
		  <tr bgcolor="<%=colorear%>">
		    <td align="center"><%=vectorlogro.get(i).getIdtipocurso() %></td>
		    <td align="center">
		    	<%for(int j=0;j<vectortipocurso.size();j++){ %>
		    		<%if(vectorlogro.get(i).getIdtipocurso().equalsIgnoreCase(vectortipocurso.get(j).getId())){ %>
			    	    <%=vectortipocurso.get(j).getDescripcion() %>
	        		<%} %>
	       		 <%} %>
	        </td>
	        <td align="center">
	        <label for="checkbox"></label>
            <input type="checkbox" name="cbk_sel" id="checkbox" value="<%=vectorlogro.get(i).getIdtipocurso()%>" disabled="disabled"/>
           	<input type="hidden" name="txt_id_tipo_curso" value="<%=vectorlogro.get(i).getIdtipocurso()%>">
            </td>
            <td align="center">
      		<%=vectorlogro.get(i).getLogro()%>
            </td>      
            <td>
       		<%=vectorlogro.get(i).getNivel()%>
            </td>
            
          	<%

          	%>
          	
          	
          </tr>
          <!-- Fin del For i -->
          <%} %>
          
    </table>
    
    <!-- Termina primera division -->
    	</td>
    	</tr>
    	 
    	 <!-- Empieza la segunda division -->
   		 <tr>
   		 <td>
    
		<!-- Tabla 3 -->
		<table width="60%" border="0" align="left" cellspacing="0" cellpadding="0">
		  
		<tr>
		  	
		    <input style="background-color: FAAC58" type="button" name="" id="" value="Guardar" onClick="pregunta()" disabled="disabled"/>
		    <input style="background-color: F2F2F2" type="submit" name="" id="" value="Exportar"/>
		    <input style="background-color: F2F2F2" type="submit" name="Agregar Logro" id="Agregar Logro" value="Agregar Descripcion de Logro" disabled="disabled"/>
	      </tr>
		  </table>
		  <!-- Fin de la tabla 3 -->
		  
		  </td>
    	  </tr>
          
          
          <tr>
          <td><span style="font-weight:normal;width:300px;margin-left:20px;margin-right:20px;color:#B40404"><%=mensaje %></span></td>
          </tr>
    	  <!-- Termina segunda division -->
    	  </table>


    
		

    <!-- Aqui terminar el formulario con el metodo POST -->
    
    <!-- Aqui estará el artificio -->
	<input type="hidden" name="txt_idcurso" value="<%=vectorlogro.get(0).getIdcurso()%>">
	
    </form>
		<p>&nbsp;</p>
</fieldset>   
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
