object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega  al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000 cambio


	var sueldo = 15000
	var totalCobrado = 0
	method sueldo() { return 15000 }//aca retorna el valor 15000 no la variable
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	
	method totalCobrado(){ return totalCobrado}
	method cobrarSueldo(){
		totalCobrado += sueldo
	}
	
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var deuda = 0
	var dineroDisponible = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo(){ 
		return cantidadEmpanadasVendidas * montoPorEmpanada
	}
	method totalCobrado(){}
	method cobrarSueldo(){
		
	}
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) {
    dinero -= empleado.sueldo()
    empleado.cobrarSueldo()
}
}
