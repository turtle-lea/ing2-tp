class Equipo
  def initialize(nombre, oponente, base, escolta, alero, pivot, alapivot)
    @nombre = nombre 
    @oponente = oponente 
    @base = base 
    @escolta = escolta 
    @alero = alero 
    @pivot = pivot 
    @alapivot = alapivot 
  end

  def oponente
    @oponente
  end

  def interceptarPase(unPase)
    @base.interceptarPase(unPase)
  end
end

