<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.segurospac.Propietario"%>

<% 
	/** recibir los parametros enviados por get desde el formulario formInsertarPropietario.jsp */
	String cedula= request.getParameter("cedula");
	String nombre= request.getParameter("nombre");
	
	/** instanciar objeto propietario para enviar datos a insertar en la db */
	Propietario propietario= new Propietario(cedula,nombre);
	propietario.insertar();
	response.sendRedirect("ListarPropietarios.jsp");
%>