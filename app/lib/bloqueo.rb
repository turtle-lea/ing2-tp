class Bloqueo
  def initialize(unJugador)
    @jugador = unJugador
    @resolvedor_de_bloqueo = ResolvedorDeBloqueo.new
  end

  def ejecutar(unTurno)  
  	unTurno.logger.notificarBloqueoExitoso(self.jugador)
	unTurno.reboteo
  end

  def esExitoso
  	@resolvedor_de_bloqueo.resolver(self.jugador)
  end

  def jugador
    @jugador
  end
end
