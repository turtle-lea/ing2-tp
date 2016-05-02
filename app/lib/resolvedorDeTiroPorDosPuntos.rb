class ResolvedorDeTiroPorDosPuntos < ResolvedorDeAccion
  def initialize()
  end

  def resolver(unTiro, unaJugada)
  	fg = unPase.estadisticas.jugador_origen.fg
  	ppg = unPase.estadisticas.jugador_origen.ppg
  	apg = unPase.estadisticas.jugador_origen.apg
  	cantPasesEnJugada = unaJugada.cantPases

  	termino1 = fg
  	termino2 = ppg * 0.01
  	termino3 = apg * 0.025 * cantPasesEnJugada

  	if (termino3 > 0.3){
  		termino3 = 0.3
  	}

    umbral = termino1 + termino2 + termino4
    resolver(umbral)
  end
end


