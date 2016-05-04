class PosicionBase
  def initialize
  end

  def paseDeTuPosicion(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderPaseDeBase()
  end

  def tiroDeTuPosicion(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderTiroDeBase()
  end

  def tiradorPor3Puntos?
    true
  end

  def tiroPor3PuntosDeTuPosicion(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderTiroPor3PuntosDeBase
  end
end
