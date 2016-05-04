class LoggerEnConsola

	def notificarIntentoPase(unPase)
    puts "#{unPase.jugador_origen.nombre} intenta hacer un pase a #{unPase.jugador_destino.nombre}."
  end

  def notificarPaseExitoso(unPase)
    puts "#{unPase.jugador_origen.nombre} se la pasa a #{unPase.jugador_destino.nombre}."
  end

  def notificarPaseFallido(unPase)
    puts "#{unPase.jugador_origen.nombre} falla el pase a #{unPase.jugador_destino.nombre}."
  end

  def notificarIntentoTiroDosPuntos(unTiro)
    puts "#{unTiro.jugador.nombre} intenta tirar al aro por 2 puntos."
  end

  def notificarIntentoTiroTresPuntos(unTiro)
    puts "#{unTiro.jugador.nombre} intenta tirar al aro por 3 puntos."
  end

  def notificarTiroDosPuntosExitoso(unTiro)
    puts "#{unTiro.jugador.nombre} encesta por 2 puntos!"
  end

  def notificarTiroTresPuntosExitoso(unTiro)
    puts "#{unTiro.jugador.nombre} encesta por 3 puntos!"
  end

  def notificarTiroTresPuntosFallido(unTiro)
    puts "#{unTiro.jugador.nombre} fallo el tiro por 3 puntos!"
  end

  def notificarTiroDosPuntosFallido(unTiro)
    puts "#{unTiro.jugador.nombre} fallo el tiro por 2 puntos!"
  end

  def notificarIntentoBloqueo(unBloqueo)
    puts "#{unBloqueo.jugador.nombre} intenta bloquear el balon"
  end

  def notificarBloqueoExitoso(unBloqueo)
    puts "#{unBloqueo.jugador.nombre} bloquea el balon"
  end

  def notificarBloqueoFallido(unBloqueo)
    puts "#{unBloqueo.jugador.nombre} no logra bloquear el balon"
  end

  def notificarIntentoIntercepcion(unaIntercepcion)
    puts "#{unaIntercepcion.jugador.nombre} intenta interceptar el balon"
  end

  def notificarIntercepcionExitosa(unaIntercepcion)
    puts "#{unaIntercepcion.jugador.nombre} intercepta el balon"
  end

  def notificarIntercepcionFallida(unaIntercepcion)
    puts "#{unaIntercepcion.jugador.nombre} no logra interceptar el balon"
  end

  def notificarReboteo()
    puts "La pelota queda en el aire y los jugadores saltan a rebotearla"
  end

  def notificarGanadorReboteo(unJugador)
    puts "#{unJugador.nombre} gana el balon tras el reboteo"
  end

  def notificarComienzoDePartido(unPartido)
    puts "Comienza el partido entre #{unPartido.equipo1.nombre} y #{unPartido.equipo2.nombre}!"
  end

  def notificarFinalizacionDePartido(unPartido)
    equipo1 = unPartido.equipo1
    equipo2 = unPartido.equipo2
    resultado_equipo_1 = unPartido.resultado.puntaje_de(equipo1)
    resultado_equipo_2 = unPartido.resultado.puntaje_de(equipo2)
    puts "Finaliza el partido entre #{equipo1.nombre} y #{equipo2.nombre}. Resultado: #{equipo1.nombre} #{resultado_equipo_1} - #{equipo2.nombre} #{resultado_equipo_2}"
    if resultado_equipo_1 > resultado_equipo_2
      puts "Ganador: #{equipo1.nombre}"
    else
      puts "Ganador: #{equipo2.nombre}"
    end
  end

  def notificarProrroga()
    puts "Tras un gran encuentro, los equipos se encuentran empatados. Comienza la prorroga"
  end

  def notificarEleccionDeJugadaOfensiva()

  end

  def notificarEleccionDeJugadaDefensiva()

  end

  def notificarFinalizacionDeTurno()
    
  end

  
end