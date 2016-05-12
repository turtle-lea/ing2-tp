class ResolvedorDeTiroPorTresPuntos
  def initialize()
  end

  def resolver(unJugador, logger)
  	tpp = unJugador.estadisticas.threePointPercentage
  	ppg = unJugador.estadisticas.pointsPerGame
    umbral = tpp + ppg / 2 * 0.01
    rand = GeneradorDeNumerosAleatorios.new(0,1).generarUnReal
    logger.notificarResultadoAccion(unJugador.nombre, umbral, rand)
    rand <= umbral
  end

end


