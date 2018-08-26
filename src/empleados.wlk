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
	
	//post: muestra la deuda acumulada
	method totalDeuda(){
		return deuda
	}
	
	//post: suma el monto gastado a la deuda o dinero
	method gastar(cuanto){
		if(self.tengoDinero()){
			self.cobrarDineroDisponible(cuanto)
		}
		else {self.sumarDeuda(cuanto)}
	}
	
	//suma a la deuda el monto dado
	method sumarDeuda(cuanto){
		deuda += cuanto
	}
	
	
	//post: descuenta el monto del dineroDisponible
	method cobrarDineroDisponible(cuanto){
		
		dineroDisponible -= cuanto		
		self.verificoDineroDisponible()
		
	}
	
	//post: si el dinero disponible es < 0 lo suma a la deuda
	method verificoDineroDisponible(){
		
		if(!(self.tengoDinero())){
			self.sumarDeuda( dineroDisponible * (-1))
			dineroDisponible = 0
		}
	}
	//post: si tengo dinero disponible
	method tengoDinero(){
		return dineroDisponible > 0
	}
	
	//devuelve el monto del dinero disponible
	method totalDinero(){
		return dineroDisponible
	}
	//metodos extra
	
	//post:  deuda > = 0 verdadera
	method tengoDeuda(){
		return ( self.totalDeuda() >= 0)
	}
	
	//post: descuenta a mi deuda el monto del sueldo devuelve el resto  
	method cobrarDeuda(){			
		deuda = deuda - sueldo		 			
		return self.sueldoRestante()			 
	}
	
		
	//inicial: se desconto a la deuda el monto mensual
	//post si la deuda es saldada
	method sueldoRestante(){
		var sueldoRestante = 0  
		if(!self.tengoDeuda()){
			sueldoRestante = deuda * (-1)
			deuda = 0
		}		
		return sueldoRestante
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
