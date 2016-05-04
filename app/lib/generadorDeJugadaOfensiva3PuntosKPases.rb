#require 'jugadaOfensiva3PuntosKPases'

class GeneradorDeJugadaOfensiva3PuntosKPases
	def initialize(unaCantidadDePases, unaFrecuenciaDeUso)
		@cantidadDePases = unaCantidadDePases
		@frecuenciaDeUso = unaFrecuenciaDeUso
	end

	def generarJugada(unEquipo)
		JugadaOfensiva3PuntosKPases.new(unEquipo, @cantidadDePases)
	end

	def frecuenciaDeUso()
		@frecuenciaDeUso
	end
end
