class Equipo
  def initialize(nombre, base, escolta, alero, pivot, alapivot)
    @nombre = nombre 
    @base = base 
    @escolta = escolta 
    @alero = alero 
    @pivot = pivot 
    @alapivot = alapivot 
  end

  def asignarOponente(unOponente)
    @oponente = unOponente
  end

  def oponente
    @oponente
  end

  def interceptarPase(unPase)
    @base.interceptarPase(unPase)
  end
end

