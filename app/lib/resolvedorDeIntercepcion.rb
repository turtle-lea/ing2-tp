class ResolvedorDeIntercepcion
  def initialize()
  end

  def resolver(unJugador)
    spg = unJugador.estadisticas.stealsPerGame
    umbral = spg * 0.2
    rand = rand(0.0..1.0)
    rand <= umbral
  end

end