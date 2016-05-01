require 'generadorDeJugadaOfensiva3PuntosKPases'
require 'cantidadDePases'
require 'frecuenciaDeUso'
require 'tecnico'
require 'generadorDeNumerosAleatorios'

class LibroDeJugadas
	def initialize(unArregloDeGeneradoresDeJugadaOfensiva, unArregloDeJugadasDefensivas)
		self.validarConsistenciaDeFrecuencias(unArregloDeGeneradoresDeJugadaOfensiva)
		#self.validarConsistenciaDeFrecuencias(unArregloDeJugadasDefensivas)

		@generadoresDeJugadaOfensiva = unArregloDeGeneradoresDeJugadaOfensiva
		#@generadoresDejugadasDefensivas = unArregloDeJugadasDefensivas
	end

	def obtenerGeneradorDeJugadaOfensiva()
		unGeneradorDeNumerosAleatorios = GeneradorDeNumerosAleatorios.new(0,100)
		unNumeroAleatorio = unGeneradorDeNumerosAleatorios.generar()
		sumaDeValoresPorcentuales = 0
		@generadoresDeJugadaOfensiva.each do 
			|unGeneradorDeJugadaOfensiva|
			sumaDeValoresPorcentuales = sumaDeValoresPorcentuales + unGeneradorDeJugadaOfensiva.frecuenciaDeUso().valorPorcentual()
			if unNumeroAleatorio <= sumaDeValoresPorcentuales
				return unGeneradorDeJugadaOfensiva
			end			
		end
	end

	def validarConsistenciaDeFrecuencias(unArregloDeGeneradoresDeJugada)
		sumaDeValoresPorcentuales = 0
		unArregloDeGeneradoresDeJugada.each  do
			|unGeneradorDeJugada|
			sumaDeValoresPorcentuales = sumaDeValoresPorcentuales + unGeneradorDeJugada.frecuenciaDeUso().valorPorcentual()
		end

		if sumaDeValoresPorcentuales != 100
			raise "Las frecuencias de uso del libro de jugadas no suman 100."
		end
	end
end
