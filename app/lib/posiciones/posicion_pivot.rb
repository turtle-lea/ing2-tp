class PosicionPivot
  def initialize
  end

  def paseDeTuPosicion(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderPaseDePivot()
  end

  def tiroDeTuPosicion(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderTiroDePivot()
  end

  def tiradorPor3Puntos?
    false
  end

  def tiroPor3PuntosDeTuPosicion(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderTiroPor3PuntosDePivot
  end
end

