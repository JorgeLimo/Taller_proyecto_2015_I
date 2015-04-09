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
		HttpSession sesion = request.getSession(true);

		if(sesion.getAttribute("recopilado")!=null){
	recopilado = (String[])sesion.getAttribute("recopilado"); 
	idcurso = (String)sesion.getAttribute("idcurso");

		}
		
	if(sesion.getAttribute("vector")!=null){
		System.out.println("vector no es null");

		vector = (Vector)sesion.getAttribute("vector");
		vectorlogro = (Vector)sesion.getAttribute("vectorlogro");
		vectortipocurso = (Vector)sesion.getAttribute("vectortipocurso");
//		recopilado = (String[])request.getAttribute("recopilado");
		recopilado = (String[])sesion.getAttribute("recopilado"); 

		System.out.println("1");

		//HttpSession sesion = request.getSession(true);
		idcurso = (String)sesion.getAttribute("idcurso");
	
		
	}
	

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



<style type="text/css">
body,td,th {
	color: #000;
}
</style>
<body background="#BDBDBD" bgcolor="#D8D8D8">

<div id="registrarConvocatoria">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
        <td width="18%" bgcolor="#660000"><a href="Cursos"><img src="ClasificacionPorLogros/img/usmp-logo.jpg" width="170" height="70"></a></td>
         <td width="44%" bgcolor="#660000">&nbsp;</td>
         <td width="38%" bgcolor="#660000"><span style="font-weight:normal;margin-left:20px;margin-right:20px;color:#FFFFFF" ><strong>FACULTAD DE INGENIERIA Y ARQUITECTURA</strong></span></td>
        </tr>
        </table>
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
        	  int idaux = Integer.parseInt(idcurso);
        	if(vector.get(i).getId()==idaux){
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
	
	
	<table width="60%" border="1" align="left" cellspacing="0" cellpadding="0" >
			<tr bgcolor="#BDBDBD">
		    <td align="center">Identificador</td>
		    <td align="center"> Descripcion de la Nota</td>
		    <td align="center">Seleccion</td>
		    <td align="center">Descripcion de Logro</td>
		    
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
	        <!-- Se declara variable flag2 para controlar generacion de codigo html -->
	                    <%boolean flag2=true; %>
	        
	        <!-- Inicio del for z para el checkbox -->
	        <%for(int z=0;z<recopilado.length;z++){ %>
	    			<%if((vectorlogro.get(i).getIdtipocurso().equalsIgnoreCase(recopilado[z]))){ %>
	             			<%flag2 = false; %>
	 				
            <input type="checkbox" name="cbk_sel" id="checkbox" value="<%=vectorlogro.get(i).getIdtipocurso()%>" checked="checked" disabled="disabled"/>
            <label for="checkbox"></label>
                        	<input type="hidden" name="txt_id_tipo_curso" value="<%=vectorlogro.get(i).getIdtipocurso()%>">
            
                  	<%} %>
                        	
             <%} %>
            	        <!-- Fin del for z para el checkbox -->
            
            
                        		<%if(flag2){ %>
           						 <input type="checkbox" name="cbk_sel" id="checkbox" value="<%=vectorlogro.get(i).getIdtipocurso()%>" disabled="disabled"/>
           						 <label for="checkbox"></label>
                        		<%} %>
            
            </td>
            <td align="center">
            	
            	<!-- Artificio -->
            
            <%boolean flag=true; %>
                        <!-- Inicio del For z -->
            
                	<%for(int z=0;z<recopilado.length;z++){ %>
            			<%if((vectorlogro.get(i).getIdtipocurso().equalsIgnoreCase(recopilado[z]))){ %>
            			<%flag = false; %>
            		<%=vectorlogro.get(i).getLogro()%>
           				<%} %>
            		<%} %>
            		
            		    <!-- Fin del For z-->
            		
            		<%if(flag){ %>
            		
            	    <%=vectorlogro.get(i).getLogro() %>
            		<%} %>
            	
            	
            </td>      
            
          
          
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

