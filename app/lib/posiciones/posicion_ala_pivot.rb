class PosicionAlaPivot
  def initialize
  end

  def paseDeTuPosicion(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderPaseDeAlaPivot()
  end

  def tiroDeTuPosicion(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderTiroDeAlaPivot()
  end

  def tiradorPor3Puntos?
    false
  end

  def tiroPor3PuntosDeTuPosicion(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderTiroPor3PuntosDeAlaPivot
  end

end

