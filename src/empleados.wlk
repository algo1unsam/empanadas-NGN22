object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega  al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000 cambio


	var sueldo = 15000
	var totalCobrado = 0
	var deuda = 0
	var dineroDisponible = 0
	method sueldo() { return 15000 }//aca retorna el valor 15000 no la variable
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	//parte a
	method totalCobrado(){ return totalCobrado}
	method cobrarSueldo(){
		totalCobrado += sueldo
		if(self.tengoDeuda()){
			dineroDisponible = self.cobrarDeuda()
		}
	}
	//parte b
	//metodos agregados parte b
	method totalDeuda(){
		return deuda
	}
	method gastar(cuanto){
		if(self.tengoDinero()){
			self.cobrarDineroDisponible(cuanto)
		}
		else {self.sumarDeuda(cuanto)}
	}
	method sumarDeuda(cuanto){
		
	}
	method cobrarDineroDisponible(cuanto){
		dineroDisponible -= cuanto
	}
	method tengoDinero(){
		return dineroDisponible > 0
	}
	method totalDinero(){
		return dineroDisponible
	}
	//metodos extra
	method tengoDeuda(){
		return self.totalDeuda() == 0
	}
	method cobrarDeuda(){
		return deuda -= sueldo		 
	}
}
	
	

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo(){ 
		return cantidadEmpanadasVendidas * montoPorEmpanada
	}
	//metodos agregados parte a
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
