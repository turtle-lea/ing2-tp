class ResolvedorDeIntercepcion < ResolvedorDeAccion
  def initialize()
  end

  def resolver(unaIntercepcion, unaJugada)
    spg = unaIntercepcion.jugador_origen.estadisticas.spg
    umbral = spg * 0.2
    resolver(umbral)
  end

end