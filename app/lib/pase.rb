class Pase
  def initialize(jugador_origen, jugador_destino)
    @jugador_origen = jugador_origen
    @jugador_destino = jugador_destino
    @resolvedor_de_pase = ResolvedorDePase.new
  end

  def ejecutar_contra(acciones_defensivas, turno)
    turno.logger.notificarIntentoPase(self)
    esPaseExitoso = @resolvedor_de_pase.resolver(self.jugador_origen, turno.logger)
    esDefensaExitosa = false
    acciones_defensivas.each do |accion_def|
      if accion_def.esExitoso(turno.logger)
        @defensa_exitosa = accion_def
        esDefensaExitosa = true
        break
      end
    end

    if esDefensaExitosa
      @defensa_exitosa.ejecutar(turno)
      # dentro del ejecutar de la defensa iria:
      # turno.cambiaPosesion(equipo_defensor, equipo_atacante)
    elsif esPaseExitoso
      turno.logger.notificarPaseExitoso(self)
      turno.proxima_accion
    else
      # @jugador_origen.tirarPelotaAfuera()
      turno.logger.notificarPaseFallido(self)
      turno.pelota_afuera
    end
  end

  def informarTipoDeMovimiento(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderPase(self)
  end

  def jugador_origen
    @jugador_origen
  end

  def jugador_destino
    @jugador_destino
  end
end

