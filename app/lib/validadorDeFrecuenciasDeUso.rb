class ValidadorDeFrecuenciasDeUso
  def initialize
  end

  def validarColeccionDeFrecuenciasEsCompleta(unaColeccionDeFrecuencias)
    sumaDeValoresPorcentuales = 0
    unaColeccionDeFrecuencias.each  do
      |unaFrecuencia|
      sumaDeValoresPorcentuales = sumaDeValoresPorcentuales + unaFrecuencia.valorPorcentual()
    end

    if sumaDeValoresPorcentuales != 100
      raise "Las frecuencias de uso del libro de jugadas no suman 100."
    end
  end

end