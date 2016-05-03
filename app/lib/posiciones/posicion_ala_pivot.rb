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

end

