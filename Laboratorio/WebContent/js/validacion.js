/** En esta función se calcula el valor de la prima del seguro, según formula solicitada */
function calcularPrima(){
	var $valorinmueble = document.getElementById("valor").value;
	if (!isNaN($valorinmueble)){
		var $valorapagar = ($valorinmueble*0.05)/12;
		var $comision = $valorapagar*0.01;
		var $totalvalorprima = Math.round(($valorapagar+$comision),2);
		document.getElementById("prima").value = $totalvalorprima;
	} else {
		alert("Por favor ingresar valor numerico");
		document.getElementById("valor").value = '';
		document.getElementById("prima").value = 0;
	}
}

/** Esta funcion valida si el estrato ingresado con respecto a la dirección es el correcto */
function validarDireccion($parametro){
	var $direccion = document.getElementById("direccion").value;
	if($direccion!=''){
		var $lstEstratos = [{direccion:"Calle 10 # 20-30", estrato:"2"},{direccion:"Calle 10 # 20-50", estrato:"5"},{direccion:"Cra 15 # 16-17", estrato:"1"}];
		
		/** Mapear objeto de estratos para verificar la dirección */
		var index = $lstEstratos.map(function(e) { 
			return e.direccion; 
		}).indexOf($direccion);
		
		if ($parametro != $lstEstratos[index].estrato){
			document.getElementById('estrato').options.selectedIndex = 0;
			alert("El estrato ingresado no corresponde al de la base de datos");
		}
	} else {
		document.getElementById('estrato').options.selectedIndex = 0;
		alert("Debe ingresar la direccion");
	}
}