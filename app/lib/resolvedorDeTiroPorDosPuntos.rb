class ResolvedorDeTiroPorDosPuntos
  def initialize()
  end

  def resolver(unJugador)
  	fgp = unJugador.estadisticas.fieldGoalPercentage
  	ppg = unJugador.estadisticas.pointsPerGame
    umbral = fgp + ppg * 0.01
    rand = GeneradorDeNumerosAleatorios.new(0,1).generarUnReal
    rand <= umbral
  end
end


