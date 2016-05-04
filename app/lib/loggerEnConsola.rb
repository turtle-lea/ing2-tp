class LoggerEnConsola

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
    puts "#{unTiro.jugador.nombre} intenta tirar al aro por 2 puntos."
  }

  def notificarIntentoTiroTresPuntos(unTiro){
    puts "#{unTiro.jugador.nombre} intenta tirar al aro por 3 puntos."
  }

  def notificarTiroDosPuntosExitoso(unTiro){
    puts "#{unTiro.jugador.nombre} encesta por 2 puntos!"
  }

  def notificarTiroTresPuntosExitoso(unTiro){
    puts "#{unTiro.jugador.nombre} encesta por 3 puntos!"
  }

  def notificarTiroTresPuntosFallido(unTiro){
    puts "#{unTiro.jugador.nombre} fallo el tiro por 3 puntos!"
  }

  def notificarTiroDosPuntosFallido(unTiro){
    puts "#{unTiro.jugador.nombre} fallo el tiro por 2 puntos!"
  }

  def notificarIntentoBloqueo(UnBloqueo){
    puts "#{unBloqueo.jugador.nombre} intenta bloquear el balon"
  }

  def notificarBloqueoExitoso(unBloqueo){
    puts "#{unBloqueo.jugador.nombre} bloquea el balon"
  }

  def notificarBloqueoFallido(unBloqueo){
    puts "#{unBloqueo.jugador.nombre} no logra bloquear el balon"
  }

  def notificarIntentoIntercepcion(unaIntercepcion){
    puts "#{unaIntercepcion.jugador.nombre} intenta interceptar el balon"
  }

  def notificarIntercepcionExitosa(unaIntercepcion){
    puts "#{unaIntercepcion.jugador.nombre} intercepta el balon"
  }

  def notificarIntercepcionFallida(unaIntercepcion){
    puts "#{unaIntercepcion.jugador.nombre} no logra interceptar el balon"
  }

  def notificarReboteo(){
    puts "La pelota queda en el aire y los jugadores saltan a rebotearla"
  }

  def notificarGanadorReboteo(unJugador){
    puts "#{unJugador.nombre} gana el balon tras el reboteo"
  }

  def notificarComienzoDePartido(unPartido){
    puts "Comienza el partido entre #{unPartido.equipo1.nombre} y #{unPartido.equipo2.nombre}!"
  }

  def notificarFinalizacionDePartido(unPartido){
    puts "Finaliza el partido entre #{unPartido.equipo1.nombre} y #{unPartido.equipo2.nombre}. Resultado: #{partido.equipo1.nombre} #{partido.resultado.resultado_de(unPartido.equipo1)} - #{partido.equipo2.nombre} #{partido.resultado.resultado_de(unPartido.equipo2)}"
  }

  def notificarProrroga() {
    puts "Tras un gran encuentro, los equipos se encuentran empatados. Comienza la prorroga"
  }

  def notificarEleccionDeJugadaOfensiva(){

  }

  def notificarEleccionDeJugadaDefensiva(){

  }

  def notificarFinalizacionDeTurno(){
    
  }

  
end