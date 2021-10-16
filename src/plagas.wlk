class Plaga {

	var property poblacion = 0

	method nivelDeDanio() = 0

	method transmiteEnfermedad() = self.poblacion() >= 10

	method atacar(elemento) {
		elemento.serAtacadoPor(self)
		self.aumentarPoblacionEn(self.poblacion() * 0.1)
	}

	method aumentarPoblacionEn(cantidadAAumentar) {
		self.poblacion(self.poblacion() + cantidadAAumentar)
	}

}

class Cucaracha inherits Plaga {

	var property pesoPromedioPorBicho

	override method nivelDeDanio() = self.poblacion() / 2

	override method transmiteEnfermedad() = super() && self.pesoPromedioPorBicho() >= 10

	override method atacar(elemento) {
		super(elemento)
		self.aumentarPesoPromedioPorBichoEn(2)
	}

	method aumentarPesoPromedioPorBichoEn(cantidadAAumentar) {
		self.pesoPromedioPorBicho(self.pesoPromedioPorBicho() + cantidadAAumentar)
	}

}

class Pulga inherits Plaga {

	override method nivelDeDanio() = self.poblacion() * 2

}

class Garrapata inherits Pulga {

	override method atacar(elemento) {
		// ???? CONSULTA: ¿Qué convendría en este caso? Sobreescribir el método por completo para indicar el aumento del 20%? (es decir, el código original copipegarlo reemplazando  * 0.1 por * 0.2). O conviene hacer esto?:
		// Guardo mi 10% inicial, porque luego daría distinta la cuenta
		const diezPorCientoInicial = self.poblacion() * 0.1
			// Corro el método original de la clase madre
		super(elemento)
			// Y luego le aumento el 10% restante, calculado antes de hacer el aumento previo
		self.aumentarPoblacionEn(diezPorCientoInicial)
	}

}

class Mosquito inherits Plaga {

	override method nivelDeDanio() = self.poblacion()

	override method transmiteEnfermedad() = super() && self.poblacion() % 3 == 0

}

