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
end
