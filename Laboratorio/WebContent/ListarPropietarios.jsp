<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@page import="com.segurospac.Propietario"%>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<body>
<% 
	ArrayList<Propietario> listaDePropietarios=null;
	listaDePropietarios=Propietario.listarPropietarios();
%>
	<table>
		<tr>
			<th>C&eacute;dula</th>
			<th>Nombre</th>
			<th>&nbsp;</th>
		</tr>
		<% for(Propietario propietario:listaDePropietarios){ %>
				<tr>
					<td><%=propietario.getCedula()%></td>
					<td><%=propietario.getNombre()%></td>
					<td><a href="AsignarInmueble.jsp?cedula=<%=propietario.getCedula()%>">Asignar inmueble</a></td>
				</tr>
		<% 	} %>
	</table>
	<br><br>
	<a href="FormInsertarPropietario.jsp" class="btn-add">Nuevo Propietario</a>
</body>
</html>