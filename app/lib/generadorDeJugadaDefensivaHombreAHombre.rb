require 'jugadaOfensiva3PuntosKPases'

class GeneradorDeJugadaDefensivaHombreAHombre
	def initialize(unaFrecuenciaDeUso)
    @frecuenciaDeUso = unaFrecuenciaDeUso
	end

	def generarJugada(unEquipo)
		jugada_hombre_a_hombre = JugadaDefensivaHombreAHombre.new(unEquipo)
    jugada_hombre_a_hombre
	end

	def frecuenciaDeUso()
		@frecuenciaDeUso
	end
end

