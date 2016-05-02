class Equipo
  def initialize(nombre, base, escolta, alero, pivot, alapivot, tecnico)
    @nombre = nombre
    @base = base
    @escolta = escolta
    @alero = alero
    @pivot = pivot
    @alapivot = alapivot
    @tecnico = tecnico
    tecnico.asignar_equipo(self)
  end

  def asignarOponente(unOponente)
    @oponente = unOponente
  end

  def nombre
    @nombre
  end

  def jugadores
    [base, escolta, alero, pivot, alapivot]
  end

  def oponente
    @oponente
  end

  def interceptarPase(unPase)
    @base.interceptarPase(unPase)
  end

  def base()
    @base
  end

  def escolta()
    @escolta
  end

  def alero()
    @alero
  end

  def pivot()
    @pivot
  end

  def alapivot()
    @alapivot
  end

  def tecnico
    @tecnico
  end
end

