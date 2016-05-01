class Tecnico
	def initialize(unEquipo, unLibroDeJugadas)
		@libroDeJugadas = unLibroDeJugadas
		@equipo = unEquipo
	end

	def elegirJugadaOfensiva(unaJugadaDefensiva)
		unGeneradorDeJugadaOfensiva = @libroDeJugadas.obtenerGeneradorDeJugadaOfensiva()
		unGeneradorDeJugadaOfensiva.generarJugada(@equipo, unaJugadaDefensiva)
	end
end