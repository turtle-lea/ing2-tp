class PosicionAlero
  def initialize
  end

  def paseDeTuPosicion(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderPaseDeAlero()
  end

  def tiroDeTuPosicion(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderTiroDeAlero()
  end

  def tiradorPor3Puntos?
    true
  end

  def tiroPor3PuntosDeTuPosicion(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderTiroPor3PuntosDeAlero
  end
end

