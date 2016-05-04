load 'resolvedorDeTiroPorDosPuntos.rb'

class TiroPorDosPuntos
  def initialize(unJugador)
    @jugador = unJugador
    @resolvedor_de_tiro_por_dos_puntos = ResolvedorDeTiroPorDosPuntos.new
  end

  def ejecutar_contra(acciones_defensivas, turno)
    esTiroExitoso = @resolvedor_de_tiro_por_dos_puntos.resolver(self.jugador_origen)
    turno.logger.notificarIntentoTiroDosPuntos(self)
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
      turno.logger.notificarTiroDosPuntosExitoso(self)
      turno.tiro_encestado(2)
    else
      # @jugador_origen.tirarPelotaAfuera()
      turno.logger.notificarTiroDosPuntosFallido(self)
      turno.pelota_afuera
    end
  end

  def informarTipoDeMovimiento(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderTiroPor2Puntos(self)
  end

  def jugador
    @jugador
  end
end

