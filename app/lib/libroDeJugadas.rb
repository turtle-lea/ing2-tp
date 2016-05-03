require 'generadorDeJugadaOfensiva3PuntosKPases'
require 'generadorDeJugadaDefensivaHombreAHombre'
require 'jugadaDefensivaHombreAHombre'
require 'cantidadDePases'
require 'frecuenciaDeUso'
require 'tecnico'
require 'generadorDeNumerosAleatorios'

class LibroDeJugadas
	def initialize(unArregloDeGeneradoresDeJugadaOfensiva, unArregloDeGeneradoresDeJugadaDefensiva)
		self.validarConsistenciaDeFrecuencias(unArregloDeGeneradoresDeJugadaOfensiva)
		self.validarConsistenciaDeFrecuencias(unArregloDeGeneradoresDeJugadaDefensiva)

		@generadoresDeJugadaOfensiva = unArregloDeGeneradoresDeJugadaOfensiva
		@generadoresDeJugadaDefensiva = unArregloDeGeneradoresDeJugadaDefensiva
	end

	def obtenerGeneradorDeJugada(unArregloDeGeneradores)
		unGeneradorDeNumerosAleatorios = GeneradorDeNumerosAleatorios.new(0,100)
		unNumeroAleatorio = unGeneradorDeNumerosAleatorios.generarUnReal()
		sumaDeValoresPorcentuales = 0
		unArregloDeGeneradores.each do
			|unGeneradorDeJugada|
			sumaDeValoresPorcentuales = sumaDeValoresPorcentuales + unGeneradorDeJugada.frecuenciaDeUso().valorPorcentual()
			if unNumeroAleatorio <= sumaDeValoresPorcentuales
				return unGeneradorDeJugada
			end
		end
	end

  def obtenerGeneradorDeJugadaOfensiva
    self.obtenerGeneradorDeJugada(@generadoresDeJugadaOfensiva)
  end

  def obtenerGeneradorDeJugadaDefensiva
    self.obtenerGeneradorDeJugada(@generadoresDeJugadaDefensiva)
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
