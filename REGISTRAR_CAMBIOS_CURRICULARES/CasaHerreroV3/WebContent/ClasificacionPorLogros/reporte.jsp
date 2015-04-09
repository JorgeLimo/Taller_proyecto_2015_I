<%@page import="beans.*"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="application/vnd.ms-excel"
    pageEncoding="ISO-8859-1"%>

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
	

	sesion.setAttribute("vector", recopilado);
	sesion.setAttribute("vectorlogro", recopilado);
	sesion.setAttribute("vectortipocurso", recopilado);
	sesion.setAttribute("recopilado", recopilado);
	sesion.setAttribute("idcurso", idcurso);
	
	if(request.getAttribute("mensaje")!=null){
		mensaje = (String)request.getAttribute("mensaje");
	}else{
		mensaje = "";
	}
	System.out.println("paso el mensaje "+ mensaje);
%>			
			<table>
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

<fieldset class="ui-widget ui-widget-content" style="font:13px Arial;padding:10px">
	<legend style="padding:10px;color:#444"><b>REPORTE DETALLE DE LOGROS</b></legend>
	
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
		    <td align="center">Descripcion de Logro</td>
		    		    <td align="center">Nivel</td>
		    
	      </tr>
	      
	      <!-- Empieza Formulario con metodo POST -->
	      
	      <form name="form2" method="GET" action="Exportar?exportToExcel=YES">
	      
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
	        
            <td align="center">
            		<%=vectorlogro.get(i).getLogro()%>
            </td>      
            <td align="center">
            		<%=vectorlogro.get(i).getNivel()%>
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
		  	
		    <!-- <input style="background-color: FAAC58" type="button" name="" id="" value="Guardar" onClick="pregunta()" disabled="disabled"/> -->
		    <!-- <input style="background-color: F2F2F2" type="submit" name="Agregar Logro" id="Agregar Logro" value="Agregar Descripcion de Logro" disabled="disabled"/> -->
	      	
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

