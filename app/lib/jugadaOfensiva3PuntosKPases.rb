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

    if @cantidadDePasesRestantes.valor > 1
      otroJugador = self.jugadorAlAzarQueNoSea(portadorDelBalon)
      unMovimientoOfensivo = armarUnPaseEntre(portadorDelBalon, otroJugador)
      @proximoPortador = otroJugador
    end

    if @cantidadDePasesRestantes.valor == 1
      otroJugador = self.tiradorAlAzarQueNoSea(portadorDelBalon)
      unMovimientoOfensivo = armarUnPaseEntre(portadorDelBalon, otroJugador)
      @proximoPortador = otroJugador
    end

    if @cantidadDePasesRestantes.valor == 0
      unMovimientoOfensivo = armarUnTiroAlAro(portadorDelBalon)
    end

    @cantidadDePasesRestantes = CantidadDePases.new(@cantidadDePasesRestantes.valor - 1)
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
    Pase.new(unJugador, otroJugador)
  end

  def armarUnTiroAlAro(unJugador)
    TiroPorTresPuntos.new(unJugador)
  end
end
