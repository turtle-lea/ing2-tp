class ResolvedorDeBloqueo
  def initialize()
  end

  def resolver(unJugador, logger)
    bpg = unJugador.estadisticas.blocksPerGame
    umbral = bpg * 0.2
    rand = GeneradorDeNumerosAleatorios.new(0,1).generarUnReal
    logger.notificarResultadoAccion(unJugador.nombre, umbral, rand)
    rand <= umbral
  end

end
