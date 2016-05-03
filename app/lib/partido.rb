class Partido
  CANTIDAD_TURNOS = 40
  CANTIDAD_TURNOS_EXTRA = 6

  def initialize(equipo1, equipo2)
    @equipo1 = equipo1
    @equipo2 = equipo2
    @turnos = []
    @resultado = Resultado.new(equipo1, equipo2)
  end

  def equipo1
    @equipo1
  end

  def equipo2
    @equipo2
  end

  def turnos
    @turnos
  end

  def jugar
    crear_y_jugar_primer_turno

    2.upto(CANTIDAD_TURNOS) do |i|
      crear_y_jugar_turno_nuevo
    end

    while partido_empatado? do
      CANTIDAD_TURNOS_EXTRA.times do |i|
        crear_y_jugar_turno_nuevo
      end
    end
  end

  def crear_y_jugar_primer_turno
    primer_turno = if GeneradorDeNumerosAleatorios.new(0, 99).generar() < 50
      Turno.new(equipo1, equipo2)
    else
      Turno.new(equipo2, equipo1)
    end
    turnos << primer_turno
    @resultado += primer_turno.comenzar
  end

  def crear_y_jugar_turno_nuevo
    turno_nuevo = Turno.new(turnos.last.equipo_no_sacador, turnos.last.equipo_sacador)
    turnos << turno_nuevo
    @resultado += turno_nuevo.comenzar
  end

  def partido_empatado?
    @resultado.empatado?
  end
end
