class Pase
  def initialize(jugador_origen, jugador_destino, un_resolvedor_de_exito)
    @jugador_origen = jugador_origen
    @jugador_destino = jugador_destino
    @resolvedor_de_exito = un_resolvedor_de_exito
  end

  def intentar()
    @resolvedor_de_exito.verificarExitoDeAccion(self)
  end

  def accionExitosa()
    equipo_rival = @jugador_origen.equipo.oponente
    equipo_rival.interceptarPase(self)
  def

  def intercepcionFallida
    self.jugador_destino.recibirPelota()
  end

end

