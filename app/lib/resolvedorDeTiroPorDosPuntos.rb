class ResolvedorDeTiroPorDosPuntos
  def initialize()
  end

  def resolver(unJugador)
  	fgp = unJugador.estadisticas.fieldGoalPercentage
  	ppg = unJugador.estadisticas.pointsPerGame
    umbral = fgp + ppg * 0.01
    rand = rand(0.0..1.0)
    rand <= umbral
  end
end


