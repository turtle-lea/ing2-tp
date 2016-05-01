class GeneradorDeJugadaOfensiva3PuntosKPases
	def initialize(unaCantidadDePases, unaFrecuenciaDeUso)
		@cantidadDePases = unaCantidadDePases
		@frecuenciaDeUso = unaFrecuenciaDeUso
	end

	def generarJugada(unEquipo, unaJugadaDefensiva)
		JugadaOfensiva3PuntosKPases.new(unEquipo, unaJugadaDefensiva, @cantidadDePases)
	end

	def frecuenciaDeUso()
		@frecuenciaDeUso
	end
end