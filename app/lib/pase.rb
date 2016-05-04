#load 'resolvedorDePase.rb'

class Pase
  def initialize(jugador_origen, jugador_destino)
    @jugador_origen = jugador_origen
    @jugador_destino = jugador_destino
    @resolvedor_de_pase = ResolvedorDePase.new
  end

  def ejecutar_contra(acciones_defensivas, turno)
    esPaseExitoso = @resolvedor_de_pase.resolver(self.jugador_origen)
    turno.logger.notificarIntentoPase(self)
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
    elsif esPaseExitoso
      turno.logger.notificarPaseExitoso(self)
      @jugador_origen.pasarLaPelota(@jugador_destino)
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
end

