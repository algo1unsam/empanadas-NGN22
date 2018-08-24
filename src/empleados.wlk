object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega  al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000 cambio


	var sueldo = 1500000
	method sueldo() { return 150000 }//aca retorna el valor 15000 no la variable
	method sueldo(nuevoValor) { sueldo = nuevoValor }
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo() }
}
