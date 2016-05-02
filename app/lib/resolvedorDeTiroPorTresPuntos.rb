class ResolvedorDeTiroPorTresPuntos < ResolvedorDeAccion
  def initialize()
  end

  def resolver(unTiro, unaJugada)
  	tresPuntosEfectividad = unPase.estadisticas.jugador_origen.tresPuntosEfectividad
  	ppg = unPase.estadisticas.jugador_origen.ppg
  	apg = unPase.estadisticas.jugador_origen.apg
  	cantPasesEnJugada = unaJugada.cantPases

  	termino1 = fg
  	termino2 = ppg / 2 * 0.01
  	termino3 = apg * 0.025 * cantPasesEnJugada

  	if (termino3 > 0.3){
  		termino3 = 0.3
  	}
    umbral = termino1 + termino2 + termino3
    resolver(umbral)
  end

end


