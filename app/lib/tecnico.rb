class Tecnico
	def initialize(unEquipo, unLibroDeJugadas)
		@libroDeJugadas = unLibroDeJugadas
		@equipo = unEquipo
	end

	def elegirJugadaOfensiva()
		unGeneradorDeJugadaOfensiva = @libroDeJugadas.obtenerGeneradorDeJugadaOfensiva()
		unGeneradorDeJugadaOfensiva.generarJugada(@equipo)
	end
end
