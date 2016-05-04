class Jugador
  def initialize(nombre, unaPosicion, estadisticas = Estadistica.new(0,0,0,0,0,0,0,0))
    @nombre = nombre
    @posicion = unaPosicion
    @estadisticas = estadisticas
  end

  def equipo
    @equipo
  end

  def nombre
    @nombre
  end

  def posicion
    @posicion
  end

  def asignarEquipo(equipo)
    @equipo = equipo
  end

  def paseDeTuPosicion(unaJugadaDefensiva)
    posicion.paseDeTuPosicion(unaJugadaDefensiva)  
  end

  def tiroPor2PuntosDeTuPosicion(unaJugadaDefensiva)
    posicion.tiroDeTuPosicion(unaJugadaDefensiva)  
  end

  def tiroPor3PuntosDeTuPosicion(unaJugadaDefensiva)
    posicion.tiroPor3PuntosDeTuPosicion(unaJugadaDefensiva)  
  end
  
  def estadisticas
    @estadisticas
  end

end
