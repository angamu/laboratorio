package com.segurospac;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.segurospac.DataBaseConn;

//
public class Propietario {
	
	private String cedula;
	private String nombre;
	
	public String getCedula() {
		return cedula;
	}
	public void setCedula(String cedula) {
		this.cedula = cedula;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Propietario(String cedula, String nombre) {
		this.cedula = cedula;
		this.nombre = nombre;
	}
	
	public void insertar() {
		String consultaSQL = "insert into propietario (cedula,nombre) values ";
		consultaSQL += "('" + this.cedula + "','" +  this.nombre + "')";
		DataBaseConn helper = new DataBaseConn();
		helper.modificarRegistro(consultaSQL);
	}
	
	public static ArrayList<Propietario> listarPropietarios() {
		String consultaSQL = "select * from propietario";
		DataBaseConn helper = new DataBaseConn();
		ResultSet rs = helper.seleccionarRegistros(consultaSQL);
		ArrayList<Propietario> listaDePropietarios= new ArrayList<Propietario>();
		try {
			while (rs.next()) {
				listaDePropietarios.add(new Propietario(rs.getString("cedula"),rs.getString("nombre")));
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return listaDePropietarios;
	}
}