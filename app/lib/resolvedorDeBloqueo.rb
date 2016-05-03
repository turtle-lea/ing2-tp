class ResolvedorDeBloqueo
  def initialize()
  end

  def resolver(unJugador)
    bpg = unJugador.estadisticas.blocksPerGame
    umbral = bpg * 0.2
    rand = rand(0.0..1.0)
    rand <= umbral
  end

end
