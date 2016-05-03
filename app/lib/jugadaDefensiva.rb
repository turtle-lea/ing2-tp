class JugadaDefensiva
  def initialize(equipo_defensivo)
    @miEquipo = equipo_defensivo
  end

  def defender(unaAccionOfensiva)
    unaAccionOfensiva.informarTipoDeMovimiento(self) 
  end

  def defenderPase(unPase)
    []
  end

  def defenderTiro(unTiro)
    []
  end

  def defenderPaseDeBase
    []
  end 

  ### TO_DO: IMPLEMENTAR CLASE BLOQUEO
  # def defenderTiroDeBase()
  #   [Bloqueo.new(@miEquipo.base)]
  # end 

  def defenderPaseDeEscolta
    []
  end 

  # def defenderTiroDeEscolta()
  #   [Bloqueo.new(@miEquipo.escolta)]
  # end 

  def defenderPaseDeAlero
    []
  end 

  # def defenderTiroDeAlero()
  #   [Bloqueo.new(@miEquipo.alero)]
  # end 

  def defenderPaseDePivot
    []
  end 

  # def defenderTiroDePivot()
  #   [Bloqueo.new(@miEquipo.pivot)]
  # end 

  def defenderPaseDeAlaPivot
    []
  end 

  # def defenderTiroDeAlaPivot()
  #   [Bloqueo.new(@miEquipo.alapivot)]
  # end 

end
