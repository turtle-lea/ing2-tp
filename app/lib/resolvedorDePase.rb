class ResolvedorDePase < ResolvedorDeAccion
  def initialize()
  end

  def resolver(unPase, unaJugada)
  	to = unPase.jugador_origen.estadisticas.to
  	umbral = 1 - to * 0.1
  	resolver(umbral)
  end

end


