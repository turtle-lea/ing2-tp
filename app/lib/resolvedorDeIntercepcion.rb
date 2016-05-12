class ResolvedorDeIntercepcion
  def initialize()
  end

  def resolver(unJugador, logger)
    spg = unJugador.estadisticas.stealsPerGame
    umbral = spg * 0.2
    rand = GeneradorDeNumerosAleatorios.new(0,1).generarUnReal
    logger.notificarResultadoAccion(unJugador.nombre, umbral, rand)
    rand <= umbral
  end

end