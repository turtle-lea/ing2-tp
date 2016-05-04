class ResolvedorDeBloqueo
  def initialize()
  end

  def resolver(unJugador)
    bpg = unJugador.estadisticas.blocksPerGame
    umbral = bpg * 0.2
    rand = GeneradorDeNumerosAleatorios.new(0,1).generarUnReal
    rand <= umbral
  end

end
