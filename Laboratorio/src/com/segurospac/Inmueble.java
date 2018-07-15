package com.segurospac;
import com.segurospac.DataBaseConn;

/**
 * Esta clase define el modelo de inmueble con todos sus atributos y funciones 
 */

public class Inmueble {
		
	private String propietario;
	private String direccion;
	private String tipo;
	private Double valor;
	private String metraje;
	private Integer estrato;
	
	public String getPropietario() {
		return propietario;
	}
	public void setPropietario(String propietario) {
		this.propietario = propietario;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public Double getValor() {
		return valor;
	}
	public void setValor(Double valor) {
		this.valor = valor;
	}
	
	public String getMetraje() {
		return metraje;
	}
	public void setMetraje(String metraje) {
		this.metraje = metraje;
	}
	public Integer getEstrato() {
		return estrato;
	}
	public void setEstrato(Integer estrato) {
		this.estrato = estrato;
	}
	
	/** Constructor para inicializar los atributos del modelo */
	public Inmueble(String propietario, String direccion, String tipo, Double valor, String metraje, Integer estrato) {
		this.propietario = propietario;
		this.direccion = direccion;
		this.tipo = tipo;
		this.valor = valor;
		this.metraje = metraje;
		this.estrato = estrato;
	}
	
	/** funcion para insertar un inmueble en la base de datos */
	public void insertarInmueble() {
		String consultaSQL = "insert into inmueble (propietariof,direccion,tipo,valor,metraje,estrato) values ";
		consultaSQL += "('" + this.propietario + "','" +  this.direccion + "','" + this.tipo + "','" + this.valor + "','" + this.metraje + "','" + this.estrato + "')";
		DataBaseConn helper = new DataBaseConn();
		helper.modificarRegistro(consultaSQL);
	}
	
}