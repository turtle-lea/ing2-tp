class ResolvedorDeIntercepcion
  def initialize()
  end

  def resolver(unJugador)
    spg = unJugador.estadisticas.stealsPerGame
    umbral = spg * 0.2
    rand = GeneradorDeNumerosAleatorios.new(0,1).generarUnReal
    rand <= umbral
  end

end