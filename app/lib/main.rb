load 'init.rb'

def main()
  posicion_base = PosicionBase.new
  posicion_escolta = PosicionEscolta.new
  posicion_alero = PosicionAlero.new
  posicion_pivot = PosicionPivot.new
  posicion_ala_pivot = PosicionAlaPivot.new

  base_martin = Jugador.new("Martin", posicion_base)
  escolta_esteban = Jugador.new("Esteban", posicion_escolta)
  alero_leandro = Jugador.new("Leandro", posicion_alero)
  pivot_matias = Jugador.new("Matias", posicion_pivot)
  ala_gaston = Jugador.new("Gaston", posicion_ala_pivot)

  juan1 = Jugador.new("Juan1", posicion_base)
  juan2 = Jugador.new("Juan2", posicion_escolta)
  juan3 = Jugador.new("Juan3", posicion_alero)
  juan4 = Jugador.new("Juan4", posicion_pivot)
  juan5 = Jugador.new("Juan5", posicion_ala_pivot)

  libroDeJugadas = LibroDeJugadas.new(
    [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(2), FrecuenciaDeUso.new(10)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(5), FrecuenciaDeUso.new(90))],
    [GeneradorDeJugadaDefensivaHombreAHombre.new(FrecuenciaDeUso.new(100))]);

  tecnico = Tecnico.new(libroDeJugadas);
  tecnico_rival = Tecnico.new(libroDeJugadas);

  equipo_rival = Equipo.new("All Blacks", juan1, juan2, juan3, juan4, juan5, tecnico_rival)
  los_pumas = Equipo.new("Los Pumas", base_martin, escolta_esteban, alero_leandro, pivot_matias, ala_gaston, tecnico)

  partido = Partido.new(los_pumas, equipo_rival)
  partido.jugar
end

#
#equipo_rival.asignarOponente(los_pumas)
#los_pumas.asignarOponente(equipo_rival)
#juan1.asignarEquipo(equipo_rival)
#base_martin.asignarEquipo(los_pumas)
#ala_gaston.asignarEquipo(los_pumas)
#
#base_martin.pasarLaPelota(ala_gaston)
