<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
<script type="text/javascript" src="js/validacion.js"></script>
<title>Seguro</title>
</head>
<body>
<% String cedula= request.getParameter("cedula"); %>
<form id="formInsertInmueble" action="InsertarInmueble.jsp">
	<fieldset>
		<legend>Formulario Asignaci&oacute;n de seguro</legend>
		<input id="propietario" type="hidden" name="propietario" value="<%=cedula%>" />
		<p>
			<label for="direccion">Direcci&oacute;n:</label>
			<input id="direccion" type="text" name="direccion" />
		</p>
		<p>
			<label for="tipo">Tipo:</label>
			<select id="tipo" name="tipo">
				<option selected disabled>--</option>
				<option value="Apartamento">Apartamento</option>
				<option value="Casa">Casa</option>
				<option value="Local">Local</option>
			</select>
		</p>
		<p>
		<label for="valor">Valor inmueble:</label>
			<input id="valor" type="text" name="valor" onblur="calcularPrima()" />
		</p>
		<p>
			<label for="prima">Valor prima:</label>
			<input id="prima" type="text" name="prima" readonly="readonly" />
		</p>
		<p>
			<label for="metraje">Metraje:</label>
			<input id="metraje" type="text" name="metraje" />
		</p>
		<p>
			<label for="estrato">Estrato:</label>
			<select id="estrato" name="estrato">
				<option selected disabled>--</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			</select>
		</p>
		<p>
			<input type="submit" value="Insertar">
		</p>
	</fieldset>
</form>
</body>
</html>