class Jugador
  def initialize(nombre, unaPosicion)
    @nombre = nombre
    @posicion = unaPosicion
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

  ### Solo para testing
  def adapterJugadaDefensiva()
    @adapterJugadaDefensiva
  end

  def actualizarAdapterJugadaDefensiva(adapter)
    @adapterJugadaDefensiva = adapter
    adapter.asignarJugador self
  end

  def darDetallesAJugadaDefensiva(unaJugadaDefensiva)
    @adapterJugadaDefensiva.darDetallesAJugadaDefensiva(unaJugadaDefensiva)
  end

end
