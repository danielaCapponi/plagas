import elementos.*
import plagas.*
import barrios.*

// Elementos con seteo inicial
const hogar = new Hogar(nivelMugre = 100, nivelConfort = 100)

const huerta = new Huerta(capacidadProduccion = 100, nivel = 100)

const mascota = new Mascota(nivelSalud = 100)

// Plagas
const plagaMosquitos = new PlagaMosquito(poblacion = 100)

const plagaGarrapatas = new PlagaGarrapata(poblacion = 100)

const plagaPulgas = new PlagaPulga(poblacion = 100)

const plagaCucaracha = new PlagaCucaracha(poblacion = 100, pesoPromedioPorBicho = 2)

// Barrio
const barrio = new Barrio(elementos = [ hogar, huerta, mascota ])

