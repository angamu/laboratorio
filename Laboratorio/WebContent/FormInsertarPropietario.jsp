<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<head>

<title>Propietario</title>
</head>
<body>
<!--  formulario HTML donde se toma la información para crear un propietario  -->
<form action="InsertarPropietario.jsp">
	<div class="container">
    	<div class="row">
    	    <div class="col-xs-12">
        	    <div class="form-wrap">	
        	    	</br>	
					<H3>Insertar Propierario</H3></br>
					<div class="row">
						<div class="col-md-3">
							<label for="cedula">C&eacute;dula:</label>
						</div>
						<div class="col-md-9">
							<input id="cedula" type="text" name="cedula" class="form-control" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
							<label for="nombre">Nombre:</label>
						</div>
						<div class="col-md-9">
							<input id="nombre" type="text" name= "nombre" class="form-control" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							</br>
							<input type="submit" value="Insertar" class="btn btn-default btn-lg">
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