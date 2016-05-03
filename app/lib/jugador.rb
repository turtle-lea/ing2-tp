class Jugador
  def initialize(nombre, unaPosicion, estadisticas)
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

  def tiroDeTuPosicion(unaJugadaDefensiva)
    posicion.tiroDeTuPosicion(unaJugadaDefensiva)  
  end

  def pasarLaPelota(otroJugador)
    p = Pase.new(self, otroJugador)
    p.intentar()
  end

  def interceptarPase(unPase)
    unPase.intercepcionFallida()
  end

  def recibirPelota()
    puts "Soy #{@nombre} y recibi la pelota"
  end

  def estadisticas
    @estadisticas
  end

end
