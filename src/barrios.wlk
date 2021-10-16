class Barrio {

	var property elementos = []

	method cantidadElementosBuenos() = elementos.count{ elemento => elementos.esBuenoParaVidaHumana() }

	method cantidadElementosMalos() = elementos.count{ elemento => !elementos.esBuenoParaVidaHumana() }

	method esCopado() = self.cantidadElementosBuenos() > self.cantidadElementosMalos()

}

