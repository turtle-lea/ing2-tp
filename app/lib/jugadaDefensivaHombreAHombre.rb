require 'intercepcion'

class JugadaDefensivaHombreAHombre
  def initialize(equipo_defensivo)
    @miEquipo = equipo_defensivo
  end

  def defender(unPase)
    Intercepcion.new(unPase.jugador_origen.darDetallesAJugadaDefensiva(self))
  end 

  def base
    @miEquipo.base
  end

  def escolta
    @miEquipo.escolta
  end

  def alero
    @miEquipo.alero
  end

  def pivot
    @miEquipo.pivot
  end

  def alapivot
    @miEquipo.alapivot
  end
end
