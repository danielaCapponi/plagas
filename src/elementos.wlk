class Elemento {

	method esBuenoParaVidaHumana() = false

	method serAtacadoPor(plaga) {
	}

}

class Hogar inherits Elemento {

	var property nivelConfort
	var property nivelMugre

	override method esBuenoParaVidaHumana() = nivelMugre <= nivelConfort / 2

	override method serAtacadoPor(plaga) {
		self.nivelMugre(self.nivelMugre() + plaga.nivelDanio())
	}

}

class Huerta inherits Elemento {

	var property capacidadProduccion = 0
	var property nivel = 0

	override method esBuenoParaVidaHumana() = capacidadProduccion > nivel

	override method serAtacadoPor(plaga) {
		var produccionReducida = self.capacidadProduccion() - (plaga.nivelDanio() * 0.1)
		if (plaga.transmiteEnfermedad()) {
			produccionReducida = produccionReducida - 10
		}
		self.capacidadProduccion(produccionReducida)
	}

}

class Mascota inherits Elemento {

	var property nivelSalud

	override method esBuenoParaVidaHumana() = nivelSalud > 250

	override method serAtacadoPor(plaga) {
		if (plaga.transmiteEnfermedad()) {
			self.nivelSalud(self.nivelSalud() - plaga.nivelDanio())
		}
	}

}

