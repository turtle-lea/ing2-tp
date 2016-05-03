class ResolvedorDeReboteo
  def initialize()
  end

  def resolver(unJugador)
    rpg = unJugador.estadisticas.reboundsPerGame
    umbral = rpg * 0.05
    rand = rand(0.0..1.0)
    rand <= umbral
  end

end
