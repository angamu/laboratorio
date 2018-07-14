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