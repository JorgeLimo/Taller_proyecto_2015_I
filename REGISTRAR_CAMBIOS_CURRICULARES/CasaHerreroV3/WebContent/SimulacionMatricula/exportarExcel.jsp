<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="beans.G4_AlumnosAptos" %>
<%@ page import="java.util.List" %>
<%
	List<G4_AlumnosAptos> alumnosAptos=(List<G4_AlumnosAptos>)request.getAttribute("listadoExcel");
%>








		
		
		
		
		
		
		
		<table width="1500" border="1">
  <tr>
    <th height="40" colspan="5" bgcolor="#3399FF" > 
    
                     
                    <h1> Resultado Alumnos Aptos</h1> 
                </th>
  </tr>
  <tr>
    <th width="229" bgcolor="#D6D6D6"><blockquote>
      <p><strong>Codigo Curso</strong></p>
    </blockquote></th>
    <th  width="305" bgcolor="#D6D6D6"><blockquote>
      <blockquote>
        <p><strong>Nombre Curso</strong></p>
      </blockquote>
    </blockquote></th>
    <th width="183" bgcolor="#D6D6D6"><blockquote>
      <blockquote>
        <p><strong>Ciclo</strong></p>
      </blockquote>
    </blockquote></th>
    <th  width="206" bgcolor="#D6D6D6"><blockquote>
      <p><strong>Creditos</strong></p>
    </blockquote></th>
    <th  width="205" bgcolor="#D6D6D6"><blockquote>
      <p><strong>Nro. Alumnos Aptos</strong></p>
    </blockquote></th>
  </tr>
  
      <%
        	if (alumnosAptos != null) {
                                response.setContentType("application/vnd.ms-excel");
                                response.setHeader("Content-Disposition", "inline; filename="
                                                + "ExportarExcel.xls");
                        }
        %>
       <%
       	if(alumnosAptos.size()>0 ){
       %>
				<%
					for(G4_AlumnosAptos aluAp : alumnosAptos){
				%>
  <tr>
    <th bgcolor="#99CCFF"><%=aluAp.getIdCurso()%></th>
    <th bgcolor="#99CCFF"><%=aluAp.getNombreCurso()%></th>
   <th bgcolor="#99CCFF"><%=aluAp.getCiclo()%></th>
    <th bgcolor="#99CCFF"><%=aluAp.getCantCreditos()%></th>
    <th bgcolor="#99CCFF"><%=aluAp.getCantAlumnosAptos()%></th>
     
  </tr>

     <% } %>
  					<% }%>
  
</table>




























</body>
</html>