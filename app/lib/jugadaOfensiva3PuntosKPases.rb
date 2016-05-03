class JugadaOfensiva3PuntosKPases
  def initialize(unEquipo, unaCantidadDePases)
    @equipo = unEquipo
    @cantidadDePasesRestantes = unaCantidadDePases
    @portadorDelBalon = @equipo.base
    @proximoPortador = @equipo.base
  end

  def jugadorInicial()
    @equipo.base()
  end

  def proximoMovimiento()
 	  # tuvo exito el pase anterior
    @portadorDelBalon = @proximoPortador

    if @cantidadDePasesRestantes.valor() > 1
      otroJugador = self.jugadorAlAzarQueNoSea(@portadorDelBalon)
      unMovimientoOfensivo = self.armarUnPaseEntre(unJugador, otroJugador)
      @proximoPortador = otroJugador
    end

    if @cantidadDePasesRestantes.valor() == 1
      otroJugador = self.tiradorAlAzarQueNoSea(@portadorDelBalon)
      unMovimientoOfensivo = self.armarUnPaseEntre(@portadorDelBalon, otroJugador)
      @proximoPortador = otroJugador
    end

    if @cantidadDePasesRestantes.valor() == 0
      unMovimientoOfensivo = self.armarUnTiroAlAro(@portadorDelBalon)
    end

    @cantidadDePasesRestantes = Cantidad.new(@cantidadDePasesRestantes.valor() - 1)
    unMovimientoOfensivo
  end

  def portadorDelBalon()
    @portadorDelBalon
  end

  def jugadorAlAzarQueNoSea(unJugador)
    los_jugadores_restantes = @equipo.jugadores
    los_jugadores_restantes.delete(unJugador)
    un_indice_aleatorio = GeneradorDeNumerosAleatorios.new(0,los_jugadores_restantes.size-1).generarUnEntero
  	los_jugadores_restantes[un_indice_aleatorio]
  end

  def tiradorAlAzarQueNoSea(unJugador)
    los_jugadores_restantes = @equipo.jugadores
    los_jugadores_restantes.delete(unJugador)
    tiradores_por_3_puntos = los_jugadores_restantes.select { |un_jugador| un_jugador.posicion.tiradorPor3Puntos? }
    un_indice_aleatorio = GeneradorDeNumerosAleatorios.new(0,tiradores_por_3_puntos.size-1).generarUnEntero
    tiradores_por_3_puntos[un_indice_aleatorio]
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
