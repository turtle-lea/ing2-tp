load 'resolvedorDePase.rb'

class Pase
  def initialize(jugador_origen, jugador_destino)
    @jugador_origen = jugador_origen
    @jugador_destino = jugador_destino
    @resolvedor_de_pase = ResolvedorDePase.new
    @movimientoDefensivo = MovimientoDefensivoNulo.new
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
end

