class LibroDeJugadas
  def initialize(unArregloDeGeneradoresDeJugadaOfensiva, unArregloDeGeneradoresDeJugadaDefensiva)
      self.validarConsistenciaDeFrecuencias(unArregloDeGeneradoresDeJugadaOfensiva)
      self.validarConsistenciaDeFrecuencias(unArregloDeGeneradoresDeJugadaDefensiva)

      @generadoresDeJugadaOfensiva = unArregloDeGeneradoresDeJugadaOfensiva
      @generadoresDeJugadaDefensiva = unArregloDeGeneradoresDeJugadaDefensiva
  end

  def obtenerGeneradorDeJugadaSegunFrecuencia(unArregloDeGeneradores)
      unGeneradorDeNumerosAleatorios = GeneradorDeNumerosAleatorios.new(0,100)
      unNumeroAleatorio = unGeneradorDeNumerosAleatorios.generarUnReal()
      sumaDeValoresPorcentuales = 0
      unArregloDeGeneradores.each do
          |unGeneradorDeJugada|
          sumaDeValoresPorcentuales = sumaDeValoresPorcentuales + unGeneradorDeJugada.frecuenciaDeUso().valorPorcentual()
          if unNumeroAleatorio <= sumaDeValoresPorcentuales
              return unGeneradorDeJugada
          end
      end
  end

  def obtenerGeneradorDeJugadaOfensiva
    self.obtenerGeneradorDeJugadaSegunFrecuencia(@generadoresDeJugadaOfensiva)
  end

  def obtenerGeneradorDeJugadaDefensiva
    self.obtenerGeneradorDeJugadaSegunFrecuencia(@generadoresDeJugadaDefensiva)
  end

  def validarConsistenciaDeFrecuencias(unArregloDeGeneradoresDeJugadaConFrecuencias)
      unArregloDeFrecuencias = unArregloDeGeneradoresDeJugadaConFrecuencias.collect { |unGeneradorConFrecuencia| unGeneradorConFrecuencia.frecuenciaDeUso }
      ValidadorDeFrecuenciasDeUso.new.validarColeccionDeFrecuenciasEsCompleta(unArregloDeFrecuencias)
  end
end
