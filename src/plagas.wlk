class Plaga {

	var property poblacion = 0

	method nivelDanio() = 0

	method transmiteEnfermedad() = self.poblacion() >= 10

	method atacar(elemento) {
		elemento.serAtacadoPor(self)
		self.aumentarPoblacionEn(self.poblacion() * 0.1)
	}

	method aumentarPoblacionEn(cantidadAAumentar) {
		self.poblacion(self.poblacion() + cantidadAAumentar)
	}

}

class PlagaCucaracha inherits Plaga {

	var property pesoPromedioPorBicho

	override method nivelDanio() = self.poblacion() / 2

	override method transmiteEnfermedad() = super() && self.pesoPromedioPorBicho() >= 10

	override method atacar(elemento) {
		super(elemento)
		self.aumentarPesoPromedioPorBichoEn(2)
	}

	method aumentarPesoPromedioPorBichoEn(cantidadAAumentar) {
		self.pesoPromedioPorBicho(self.pesoPromedioPorBicho() + cantidadAAumentar)
	}

}

class PlagaPulga inherits Plaga {

	override method nivelDanio() = self.poblacion() * 2

	override method atacar(elemento) {
		elemento.serAtacadoPor(self)
		self.aumentarPoblacionEn(self.poblacion() * (self.porcentajeDanio() / 100))
	}

	method porcentajeDanio() = 10

}

class PlagaGarrapata inherits PlagaPulga {

	override method porcentajeDanio() = 20

}

class PlagaMosquito inherits Plaga {

	override method nivelDanio() = self.poblacion()

	override method transmiteEnfermedad() = super() && self.poblacion() % 3 == 0

}

