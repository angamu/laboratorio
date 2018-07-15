<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@page import="com.segurospac.Propietario"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/validacion.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<body>
<% 
	/** Se crea un ArrayList del listado de propietarios para almacenarlos 
	de forma dinámica para mostrarlos en la tabla */
	ArrayList<Propietario> listaDePropietarios=null;
	listaDePropietarios=Propietario.listarPropietarios();
%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<br><br>
				<H3>Listar Propierario</H3></br>
            	<table class="table table-striped table-condensed">
					<tr>
						<th>C&eacute;dula</th>
						<th>Nombre</th>
						<th>Inmueble</th>
					</tr>
					<% for(Propietario propietario:listaDePropietarios){ %>
							<tr>
								<td><%=propietario.getCedula()%></td>
								<td><%=propietario.getNombre()%></td>
								<td><a href="AsignarInmueble.jsp?cedula=<%=propietario.getCedula()%>">Asignar</a></td>
							</tr>
					<% 	} %>
				</table>
				<br><br>
				<a href="FormInsertarPropietario.jsp" class="btn-add btn btn-default">Nuevo Propietario</a>
			</div>
		</div>
	</div>
	
</body>
</html>