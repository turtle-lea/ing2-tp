class Logger

	def notificarIntentoPase(unPase){
    puts "#{unPase.jugador_origen.nombre} intenta hacer un pase a #{unPase.jugador_destino.nombre}."
  }

  def notificarPaseExitoso(unPase){
    puts "#{unPase.jugador_origen.nombre} se la pasa a #{unPase.jugador_destino.nombre}."
  }

  def notificarPaseFallido(unPase){
    puts "#{unPase.jugador_origen.nombre} falla el pase a #{unPase.jugador_destino.nombre}."
  }

  def notificarIntentoTiroDosPuntos(unTiro){
    puts "#{unTiro.jugador.nombre} intenta tirar al aro por dos puntos."
  }

  def notificarIntentoTiroTresPuntos(){

  }

  def notificarTiroDosPuntosExitoso(){

  }

  def notificarTiroDosPuntosFallido(){

  }

  def notificarIntentoBloqueo(){

  }

  def notificarBloqueoExitoso(){

  }

  def notificarTiroTresPuntosExitoso(){

  }

  def notificarTiroTresPuntosFallido(){

  }

  def notificarReboteo(){

  }

  def notificarGanadorReboteo(){

  }

  def notificarComienzoDePartido(){

  }

  def notificarFinalizacionDePartido(){

  }

  def notificarEleccionDeJugadaOfensiva(){

  }

  def notificarEleccionDeJugadaDefensiva(){

  }

  def notificarFinalizacionDeTurno(){
    
  }

  
end