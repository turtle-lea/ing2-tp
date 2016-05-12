class ResolvedorDeTiroPorDosPuntos
  def initialize()
  end

  def resolver(unJugador, logger)
  	fgp = unJugador.estadisticas.fieldGoalPercentage
  	ppg = unJugador.estadisticas.pointsPerGame
    umbral = fgp + ppg * 0.01
    rand = GeneradorDeNumerosAleatorios.new(0,1).generarUnReal
    logger.notificarResultadoAccion(unJugador.nombre, umbral, rand)
    rand <= umbral
  end
end


