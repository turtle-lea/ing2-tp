class ResolvedorDeTiroPorTresPuntos
  def initialize()
  end

  def resolver(unJugador)
  	tpp = unJugador.estadisticas.jugador.estadisticas.threePointPercentage
  	ppg = jugador.estadisticas.pointsPerGame
    umbral = tpp + ppg / 2 * 0.01
    rand = rand(0.0..1.0)
    rand <= umbral
  end

end


