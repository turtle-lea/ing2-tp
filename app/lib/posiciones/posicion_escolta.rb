class PosicionEscolta
  def initialize
  end

  def paseDeTuPosicion(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderPaseDeEscolta()
  end

  def tiroDeTuPosicion(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderTiroDeEscolta()
  end

  def tiradorPor3Puntos?
    true
  end

  def tiroPor3PuntosDeTuPosicion(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderTiroPor3PuntosDeEscolta
  end
end

