class ResolvedorDeTiroPorTresPuntos
  def initialize()
  end

  def resolver(unJugador)
  	tpp = unJugador.estadisticas.threePointPercentage
  	ppg = unJugador.estadisticas.pointsPerGame
    umbral = tpp + ppg / 2 * 0.01
    rand = GeneradorDeNumerosAleatorios.new(0,1).generarUnReal
    rand <= umbral
  end

end


