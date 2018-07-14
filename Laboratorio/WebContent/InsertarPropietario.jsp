<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.segurospac.Propietario"%>

<% 
	//instanciar objeto propietario para enviar datos a insertar en la db
	String cedula= request.getParameter("cedula");
	String nombre= request.getParameter("nombre");
	Propietario propietario= new Propietario(cedula,nombre);
	propietario.insertar();
	response.sendRedirect("ListarPropietarios.jsp");
%>