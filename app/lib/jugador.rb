class Jugador
  def initialize(nombre)
    @nombre = nombre
  end

  def asignarEquipo(equipo)
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
    puts "Soy #{@nombre} y recibi la pelota"
  end

end
