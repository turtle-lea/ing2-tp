class Intercepcion
  def initialize(unJugador)
    @jugador = unJugador
    @resolvedor_de_intercepcion = ResolvedorDeIntercepcion.new
  end

  def ejecutar(unTurno)
    unTurno.logger.notificarIntercepcionExitosa(self)
    unTurno.cambio_de_posesion(self.jugador.equipo, self.jugador.equipo.oponente)
  end

  def esExitoso(logger)
    logger.notificarIntentoIntercepcion(self)
    @resolvedor_de_intercepcion.resolver(self.jugador, logger)
  end

  def jugador
    @jugador
  end
end
