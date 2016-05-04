class ResolvedorDeReboteo
  def initialize()
  end

  def resolver(unJugador)
    rpg = unJugador.estadisticas.reboundsPerGame
    umbral = rpg * 0.05
    rand = GeneradorDeNumerosAleatorios.new(0,1).generarUnReal
    rand <= umbral
  end

end
