require 'jugadaOfensiva3PuntosKPases'
require 'adapterJugadaDefensivaHombreAHombre'

class GeneradorDeJugadaDefensivaHombreAHombre
	def initialize()
	end

	def generarJugada(unEquipo, unaJugadaOfensivaRival)
		jugada_hombre_a_hombre = JugadaDefensivaHombreAHombre.new(unEquipo)
    adapter = AdapterJugadaDefensivaHombreAHombre.new
    unaJugadaOfensivaRival.equipo.jugadores.each do
      |jugadorRival|
      jugadorRival.actualizarAdapterJugadaDefensiva(adapter)
    end
    unaJugadaOfensivaRival.colaborarConJugadaDefensiva(jugada_hombre_a_hombre)
    jugada_hombre_a_hombre
	end

	def frecuenciaDeUso()
		@frecuenciaDeUso
	end
end

