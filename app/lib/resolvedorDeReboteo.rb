class ResolvedorDeReboteo
  def initialize()
  end

  def resolver(unJugador, logger)
    rpg = unJugador.estadisticas.reboundsPerGame
    umbral = rpg * 0.05
    rand = GeneradorDeNumerosAleatorios.new(0,1).generarUnReal
    logger.notificarResultadoAccion(unJugador.nombre, umbral, rand)
    rand <= umbral
  end

end
