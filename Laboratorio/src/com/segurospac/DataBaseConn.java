package com.segurospac;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Clase para realizar la conexi�n con la base de datos
 */

public class DataBaseConn {
	
	/** Parametros para conectar la base de datos 
	 * En esta ocaci�n se usa el plugin jdbc para crear la conexi�n */
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost/seguros?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	private static final String USUARIO = "root";
	private static final String CLAVE = "Angamu0525";
	
	/** Funci�n para ejecutar las consultas sql en la base de datos de inserci�n y modificaci�n 
	 * @param String	sentencia sql    */
	public int modificarRegistro(String consultaSQL) {
		Connection conexion = null;
		Statement sentencia = null;
		int filasAfectadas = 0;
		
		try {
			Class.forName(DRIVER);
			conexion = DriverManager.getConnection(URL,USUARIO,CLAVE);
			sentencia = conexion.createStatement();
			filasAfectadas = sentencia.executeUpdate(consultaSQL);
		} catch (ClassNotFoundException e) {
			System.out.println("Error driver" + e.getMessage());
		} catch (SQLException e) {
			System.out.println("Error de SQl" + e.getMessage());
		} finally {
			if (sentencia != null) {
				try {sentencia.close();} catch (SQLException e) {}
			}
			if (conexion != null) {
				try {conexion.close();} catch (SQLException e) {}
			}
		}
		return filasAfectadas;		
	}
	
	/** Funci�n para ejecutar las consultas sql en la base de datos de selecci�n
	 * @param String	sentencia sql    */
	public ResultSet seleccionarRegistros(String consultaSQL) {
		Connection conexion = null;
		Statement sentencia = null;
		ResultSet filas = null;
		try {
			Class.forName(DRIVER);
			conexion = DriverManager.getConnection(URL,USUARIO, CLAVE);
			sentencia = conexion.createStatement();
			filas = sentencia.executeQuery(consultaSQL);
		} catch (ClassNotFoundException e) {
			System.out.println("Error Driver" + e.getMessage());
		} catch (SQLException e) {
			System.out.println("Error de SQL " + e.getMessage());
		}
		return filas;
	}
	
}