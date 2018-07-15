<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/validacion.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<title>Seguro</title>
</head>
<body>
<% /** se recibe el parametro cédula del propietario para asignarle un inmueble */
	String cedula= request.getParameter("cedula");
%>

<!--  formulario HTML donde se toma la información para crear un propietario  -->
<form id="formInsertInmueble" action="InsertarInmueble.jsp">
	<div class="container">
		<div class="row">
    	    <div class="col-md-12">
        	    <div class="form-wrap">	
        	    	</br>
        	    	<H3>Asignar inmueble</H3></br>
					<input id="propietario" type="hidden" name="propietario" value="<%=cedula%>" />
					<div class="row">
						<div class="col-md-3">
							<label for="direccion">Direcci&oacute;n:</label>
						</div>
						<div class="col-md-9">
							<input id="direccion" type="text" name="direccion" class="form-control" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
							<label for="tipo">Tipo:</label>
						</div>
						<div class="col-md-9">
							<select id="tipo" name="tipo" class="form-control">
								<option selected disabled>--</option>
								<option value="Apartamento">Apartamento</option>
								<option value="Casa">Casa</option>
								<option value="Local">Local</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
							<label for="valor">Valor inmueble:</label>
						</div>
						<div class="col-md-9">
							<input id="valor" type="text" name="valor" onblur="calcularPrima()" class="form-control" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
							<label for="prima">Valor prima:</label>
						</div>
						<div class="col-md-9">
							<input id="prima" type="text" name="prima" readonly="readonly" class="form-control" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
							<label for="metraje">Metraje:</label>
						</div>
						<div class="col-md-9">							
							<input id="metraje" type="text" name="metraje" class="form-control" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
							<label for="estrato">Estrato:</label>
						</div>
						<div class="col-md-9">
							<select id="estrato" name="estrato" onchange="validarDireccion(this.value)" class="form-control">
								<option selected disabled>--</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							</br>
							<input type="submit" value="Insertar" class="btn btn-default">
							</br></br>
							<a href="ListarPropietarios.jsp" class="btn-add btn btn-default">Lista de Propietarios</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</form>
</body>
</html>