load 'resolvedorDePase.rb'

class Pase
  def initialize(jugador_origen, jugador_destino)
    @jugador_origen = jugador_origen
    @jugador_destino = jugador_destino
    @resolvedor_de_pase = ResolvedorDePase.new
  end

  def intentar()
    @resolvedor_de_pase.verificarExitoDePase(self)
  end

  def paseExitoso()
    equipo_rival = @jugador_origen.equipo.oponente
    equipo_rival.interceptarPase(self)
  end

  def intercepcionFallida
    @jugador_destino.recibirPelota()
  end

end

