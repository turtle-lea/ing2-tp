class ResolvedorDePase < ResolvedorDeAccion
  def initialize()
  end

  def resolver(unBloqueo, unaJugada)
    bpg = unBloqueo.jugador_origen.estadisticas.bpg
    umbral = bpg * 0.2
    resolver(umbral)
  end

end
