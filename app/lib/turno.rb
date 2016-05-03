class Turno
  def initialize(equipo_sacador, equipo_no_sacador, logger)
    @equipo_sacador = equipo_sacador
    @equipo_no_sacador = equipo_no_sacador
    @logger = logger
  end

  def equipo_sacador
    @equipo_sacador
  end

  def equipo_no_sacador
    @equipo_no_sacador
  end

  def comenzar
    @equipo_ofensivo = @equipo_sacador
    @equipo_defensivo = @equipo_defensivo

    elegir_jugadas
    proxima_accion
  end

  def elegir_jugadas
    @jugada_ofensiva = @equipo_ofensivo.tecnico.elegirJugadaOfensiva
    @jugada_defensiva = @equipo_defensivo.tecnico.elegirJugadaDefensiva
  end

  def proxima_accion
    accion_ofensiva = @jugada_ofensiva.proximoMovimiento
    acciones_defensivas = @jugada_defensiva.defender(accion_ofensiva)

    accion_ofensiva.ejecutar_contra(acciones_defensivas, self)
  end

  def pelota_afuera
    return Resultado.new(@equipo_ofensivo, @equipo_defensivo, 0, 0)
  end

  def tiro_encestado
    return Resultado.new(@equipo_ofensivo, @equipo_defensivo, @jugada_ofensiva.puntos, 0)
  end

  def cambio_de_posesion(equipo_ofensivo, equipo_defensivo)
    @equipo_ofensivo = equipo_ofensivo
    @equipo_defensivo = equipo_defensivo

    elegir_jugadas
    proxima_accion
  end

  def reboteo
    # Estoy asumiento esta interfaz de Reboteo
    Reboteo.new(@equipo_ofensivo, @equipo_defensivo).ejecutar(self)
  end

  def logger
    @logger
  end
end
