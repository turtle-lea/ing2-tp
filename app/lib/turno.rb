class Turno
  def initialize(equipo_sacador, equipo_no_sacador)
    @equipo_sacador = equipo_sacador
    @equipo_no_sacador = equipo_no_sacador
  end

  def equipo_sacador
    @equipo_sacador
  end

  def equipo_no_sacador
    @equipo_no_sacador
  end

  def jugar
    puts "#{equipo_sacador.nombre} - #{equipo_no_sacador.nombre}"
    # Aca va la papa, pido jugadas, ejecuto jugadas y defino que hago, algo asi tenia pensado
    # pero le falta pulir mucho y ver que onda como se integra

    # jug_of = equipo_sacador.tecnico.elegirJugadaOfensiva
    # jug_def = equipo_no_sacador.tecnico.elegirJugadaDefensiva
    #
    # while true
      # mov_of = jug_of.proxima_accion
      # # aca hay que meter double dispatch o algo asi para no caer en el if instace of para ver que
      # # tipo de movimiento y quien lo hace...
      # movs_def = jug_def.reacciones_defensivas_a(mov_of)

      # result = mov_of.ejecutar_contra(movs_def)
      # # dependiendo de ese result decido que hacer, o el jugador/jugada/mov me envia un mensaje que me
      # # sindica como seguir?
  end
end
