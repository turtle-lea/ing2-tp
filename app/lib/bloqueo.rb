class Bloqueo
  def initialize(unJugador)
    @jugador = unJugador
    @resolvedor_de_bloqueo = ResolvedorDeBloqueo.new
  end

  def ejecutar(unTurno)  
    unTurno.logger.notificarBloqueoExitoso(self)
    unTurno.reboteo
  end

  def esExitoso(logger)
    logger.notificarIntentoBloqueo(self)
    @resolvedor_de_bloqueo.resolver(jugador, logger)
  end

  def jugador
    @jugador
  end
end
