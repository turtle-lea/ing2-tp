require 'jugadaDefensiva'
require 'intercepcion'

class JugadaDefensivaHombreAHombre < JugadaDefensiva
  def initialize(equipo_defensivo)
    super
  end

  def defender(unMovimientoOfensivo)
    super
  end 

  def defenderPase(unPase)
    unPase.jugador_origen.paseDeTuPosicion(self)
  end

  def defenderTiroPor2Puntos(unTiroPor2Puntos)
    unTiroPor2Puntos.jugador.tiroPor2PuntosDeTuPosicion(self)
  end

  def defenderTiroPor3Puntos(unTiroPor3Puntos)
    unTiroPor3Puntos.jugador.tiroPor3PuntosDeTuPosicion(self)
  end

  def defenderPaseDeBase
    [Intercepcion.new(@miEquipo.base)]
  end 

  def defenderTiroPor2PuntosDeBase()
    [Bloqueo.new(@miEquipo.base)]
  end 

  def defenderTiroPor3PuntosDeBase()
    [Bloqueo.new(@miEquipo.base)]
  end 

  def defenderPaseDeEscolta
    [Intercepcion.new(@miEquipo.escolta)]
  end 

  def defenderTiroPor2PuntosDeEscolta()
    [Bloqueo.new(@miEquipo.escolta)]
  end 

  def defenderTiroPor3PuntosDeEscolta()
    [Bloqueo.new(@miEquipo.escolta)]
  end 

  def defenderPaseDeAlero
    [Intercepcion.new(@miEquipo.alero)]
  end 

  def defenderTiroPor2PuntosDeAlero()
    [Bloqueo.new(@miEquipo.alero)]
  end 

  def defenderTiroPor3PuntosDeAlero()
    [Bloqueo.new(@miEquipo.alero)]
  end 

  def defenderPaseDePivot
    [Intercepcion.new(@miEquipo.pivot)]
  end 

  def defenderTiroPor2PuntosDePivot()
    [Bloqueo.new(@miEquipo.pivot)]
  end 

  def defenderTiroPor3PuntosDePivot()
    [Bloqueo.new(@miEquipo.pivot)]
  end 

  def defenderPaseDeAlaPivot
    [Intercepcion.new(@miEquipo.alapivot)]
  end 

  def defenderTiroPor2PuntosDeAlaPivot()
    [Bloqueo.new(@miEquipo.alapivot)]
  end 

  def defenderTiroPor3PuntosDeAlaPivot()
    [Bloqueo.new(@miEquipo.alapivot)]
  end 

end
