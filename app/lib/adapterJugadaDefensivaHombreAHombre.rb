class AdapterJugadaDefensivaHombreAHombre 
  def initialize
  end

  def asignarJugador(unJugador)
    @jugador = unJugador
  end

  def darDetallesAJugadaDefensiva(unaJugadaDefensiva)
    @jugador.posicion.informarlePosicionA(unaJugadaDefensiva)
  end
end
