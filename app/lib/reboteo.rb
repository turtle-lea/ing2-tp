require 'thread'

class Reboteo
  def initialize(un_equipo_atacante, un_equipo_defensor)
    @jugadores = Queue.new
    @jugadores.push(un_equipo_defensor.pivot)
    @jugadores.push(un_equipo_atacante.pivot)
    @jugadores.push(un_equipo_defensor.alapivot)
    @jugadores.push(un_equipo_atacante.alapivot)
    @jugadores.push(un_equipo_defensor.alero)
    @jugadores.push(un_equipo_atacante.alero)
    @jugadores.push(un_equipo_defensor.escolta)
    @jugadores.push(un_equipo_atacante.escolta)
    @jugadores.push(un_equipo_defensor.base)
    @jugadores.push(un_equipo_atacante.base)
    @un_resolvedor_de_reboteo = ResolvedorDeReboteo.new()

    @equipos = [un_equipo_atacante, un_equipo_defensor];
  end

  def ejecutar(unTurno)
    unTurno.logger.notificarReboteo
    while not @jugadores.empty?
      un_jugador = @jugadores.pop
      if @un_resolvedor_de_reboteo.resolver(un_jugador, unTurno.logger)
        unTurno.logger.notificarGanadorReboteo(un_jugador)
        return unTurno.tomar_posesion_de_balon(un_jugador)
        break
      end
    end

    if @jugadores.empty?
      unTurno.pelota_afuera
    end
  end
end