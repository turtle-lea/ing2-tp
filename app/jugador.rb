class Jugador
  def initialize(nombre, equipo)
    @nombre = nombre
    @equipo = equipo
  end

  def pasarLaPelota(otroJugador)
    p = Pase.new(self, otroJugador) 
    p.intentar() 
  end

  def equipo
    @equipo
  end

  def interceptarPase(unPase)
    unPase.intercepcionFallida()
  end

  def recibirPelota()
  end

end
