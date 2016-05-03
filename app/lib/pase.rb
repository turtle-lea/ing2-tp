load 'resolvedorDePase.rb'

class Pase
  def initialize(jugador_origen, jugador_destino)
    @jugador_origen = jugador_origen
    @jugador_destino = jugador_destino
    @resolvedor_de_pase = ResolvedorDePase.new
    #No es necesario. La jugada ofensiva garantiza una asignación de movimiento antes de la ejecución
    #@movimientoDefensivo = MovimientoDefensivoNulo.new
  end

  def ejecutar()
    esPaseExitoso = @resolvedor_de_pase.verificarExitoDePase(self)
    esDefensaExitosa = @movimientoDefensivo.esExitoso()

    if esDefensaExitosa
      @movimientoDefensivo.ejecutar()
    elsif esPaseExitoso
      @jugador_origen.pasarLaPelota(@jugador_destino)
    else
      @jugador_origen.tirarPelotaAfuera()
    end
  end

  def asignarMovimientoDefensivo(unMovimientoDefensivo)
    @movimientoDefensivo = unMovimientoDefensivo
  end

  def informarTipoDeMovimiento(unaJugadaDefensiva)
    unaJugadaDefensiva.defenderPase(self)
  end 

  def jugador_origen
    @jugador_origen
  end
end

