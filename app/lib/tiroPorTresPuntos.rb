load 'resolvedorDeTiroPorTresPuntos.rb'

class TiroPorTresPuntos
  def initialize(unJugador)
    @jugador = unJugador
    @resolvedor_de_tiro_por_tres_puntos = ResolvedorDeTiroPorTresPuntos.new
  end

  def ejecutar_contra(acciones_defensivas, turno)
    esTiroExitoso = @resolvedor_de_tiro_por_tres_puntos.resolver(self.jugador_origen)
    turno.logger.notificarIntentoTiroTresPuntos(self)
    esDefensaExitosa = @acciones_defensivas.each do |accion_def|
      if accion_def.esExitoso
        @defensa_exitosa = accion_def
        break true
      end
    end

    if esDefensaExitosa
      @defensa_exitosa.ejecutar(turno)
      # dentro del ejecutar de la defensa iria:
      # turno.cambiaPosesion(equipo_defensor, equipo_atacante)
    elsif esTiroExitoso
      turno.logger.notificarTiroTresPuntosExitoso(self)
      turno.tiro_encestado(3)
    else
      # @jugador_origen.tirarPelotaAfuera()
      turno.logger.notificarTiroTresPuntosFallido(self)
      turno.pelota_afuera
    end
  end

  def informarTipoDeMovimiento(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderTiroPor3Puntos(self)
  end

  def jugador
    @jugador
  end
end

