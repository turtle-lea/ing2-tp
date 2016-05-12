class ResolvedorDePase
  def initialize()
  end

  def resolver(unJugador, logger)
  	to = unJugador.estadisticas.turnOvers
  	umbral = 1 - to * 0.1
  	rand = GeneradorDeNumerosAleatorios.new(0,1).generarUnReal
  	logger.notificarResultadoAccion(unJugador.nombre, umbral, rand)
    rand <= umbral
  end

end


