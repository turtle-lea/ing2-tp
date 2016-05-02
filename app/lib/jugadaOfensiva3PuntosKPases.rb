class JugadaOfensiva3PuntosKPases
	def initialize(unEquipo, unaCantidadDePases)
		@equipo = unEquipo
		#@jugadaDefensiva = unaJugadaDefensiva
		@cantidadDePasesRestantes = unaCantidadDePases
	end

	def jugadorInicial()
		@equipo.base()
	end

  def equipo()
    @equipo
  end

  def colaborarConJugadaDefensiva(unaJugadaDefensiva)
    @jugadaDefensiva = unaJugadaDefensiva
  end

	def proximoMovimiento()
		portadorDelBalon = self.portadorDelBalon()

		if @cantidadDePasesRestantes.valor() > 1
			otroJugador = self.jugadorAlAzarQueNoSea(portadorDelBalon)
			unMovimientoOfensivo = self.armarUnPaseEntre(unJugador, otroJugador)
		end

		if @cantidadDePasesRestantes.valor() == 1
			otroJugador = self.tiradorAlAzarQueNoSea(portadorDelBalon)
			unMovimientoOfensivo = self.armarUnPaseEntre(portadorDelBalon, otroJugador)
		end

		if @cantidadDePasesRestantes.valor() == 0
			unMovimientoOfensivo = self.armarUnTiroAlAro(portadorDelBalon)
		end

		@cantidadDePasesRestantes = Cantidad.new(@cantidadDePasesRestantes.valor() - 1)
		unMovimientoOfensivo
	end

	def portadorDelBalon()
		# TODO
	end

	def jugadorAlAzarQueNoSea(unJugador)
		# TODO
	end

	def tiradorAlAzarQueNoSea(unJugador)
		# TODO
	end

	def armarUnPaseEntre(unJugador, otroJugador)
		unPase = Pase.new(unJugador, otroJugador)
		unMovimientoDefensivo = @jugadaDefensiva.defender(unPase)
		unPase.asignarMovimientoDefensivo(unMovimientoDefensivo)
		unPase
	end

	def armarUnTiroAlAro(unJugador)
		unTiro = Tiro.new(unJugador)
		unMovimientoDefensivo = @jugadaDefensiva.defender(unTiro)
		unTiro.asignarMovimientoDefensivo(unMovimientoDefensivo)
		unTiro
	end
end
