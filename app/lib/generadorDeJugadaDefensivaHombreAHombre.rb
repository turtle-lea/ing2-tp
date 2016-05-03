require 'jugadaOfensiva3PuntosKPases'

class GeneradorDeJugadaDefensivaHombreAHombre
	def initialize(unaFrecuenciaDeUso)
    @frecuenciaDeUso = unaFrecuenciaDeUso
	end

	def generarJugada(unEquipo, unaJugadaOfensivaRival)
		jugada_hombre_a_hombre = JugadaDefensivaHombreAHombre.new(unEquipo)
    unaJugadaOfensivaRival.colaborarConJugadaDefensiva(jugada_hombre_a_hombre)
    jugada_hombre_a_hombre
	end

	def frecuenciaDeUso()
		@frecuenciaDeUso
	end
end

