<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.segurospac.Inmueble"%>

<% 
	//instanciar objeto inmueble para enviar datos a insertar en la db
	String propietario= request.getParameter("propietario");
	String direccion= request.getParameter("direccion");
	String tipo= request.getParameter("tipo");
	Double valor= Double.parseDouble(request.getParameter("valor"));
	String metraje= request.getParameter("metraje");
	Integer estrato= Integer.parseInt(request.getParameter("estrato"));
	
	
	Inmueble inmueble= new Inmueble(propietario,direccion,tipo,valor,metraje,estrato);
	inmueble.insertarInmueble();
	response.sendRedirect("ListarPropietarios.jsp");
%>