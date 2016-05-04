load 'init.rb'

def main()
  posicion_base = PosicionBase.new
  posicion_escolta = PosicionEscolta.new
  posicion_alero = PosicionAlero.new
  posicion_pivot = PosicionPivot.new
  posicion_ala_pivot = PosicionAlaPivot.new

  base_martin = Jugador.new("Martin", posicion_base, Estadistica.new(0.45,0.368,3.7,4.0,1.4,0.3,2.1,14.1))
  escolta_esteban = Jugador.new("Esteban", posicion_escolta, Estadistica.new(0.45,0.368,3.7,4.0,1.4,0.3,2.1,14.1))
  alero_leandro = Jugador.new("Leandro", posicion_alero, Estadistica.new(0.45,0.368,3.7,4.0,1.4,0.3,2.1,14.1))
  pivot_matias = Jugador.new("Matias", posicion_pivot, Estadistica.new(0.45,0.368,3.7,4.0,1.4,0.3,2.1,14.1))
  ala_gaston = Jugador.new("Gaston", posicion_ala_pivot, Estadistica.new(0.45,0.368,3.7,4.0,1.4,0.3,2.1,14.1))

  base_ramon = Jugador.new("Ramon", posicion_base, Estadistica.new(0.45,0.368,3.7,4.0,1.4,0.3,2.1,14.1))
  escolta_juan = Jugador.new("Juan", posicion_escolta, Estadistica.new(0.45,0.368,3.7,4.0,1.4,0.3,2.1,14.1))
  alero_nicolas = Jugador.new("Nicolas", posicion_alero, Estadistica.new(0.45,0.368,3.7,4.0,1.4,0.3,2.1,14.1))
  pivot_roberto = Jugador.new("Roberto", posicion_pivot, Estadistica.new(0.45,0.368,3.7,4.0,1.4,0.3,2.1,14.1))
  ala_julio = Jugador.new("Julio", posicion_ala_pivot, Estadistica.new(0.45,0.368,3.7,4.0,1.4,0.3,2.1,14.1))

  libroDeJugadas = LibroDeJugadas.new(
    [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(2), FrecuenciaDeUso.new(10)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(5), FrecuenciaDeUso.new(90))],
    [GeneradorDeJugadaDefensivaHombreAHombre.new(FrecuenciaDeUso.new(100))]);

  tecnico = Tecnico.new(libroDeJugadas);
  tecnico_rival = Tecnico.new(libroDeJugadas);

  equipo_rival = Equipo.new("All Blacks", base_ramon, escolta_juan, alero_nicolas, pivot_roberto, ala_julio, tecnico_rival)
  los_pumas = Equipo.new("Los Pumas", base_martin, escolta_esteban, alero_leandro, pivot_matias, ala_gaston, tecnico)

  base_martin.asignarEquipo(los_pumas)
  escolta_esteban.asignarEquipo(los_pumas)
  alero_leandro.asignarEquipo(los_pumas)
  pivot_matias.asignarEquipo(los_pumas)
  ala_gaston.asignarEquipo(los_pumas)

  base_ramon.asignarEquipo(equipo_rival)
  escolta_juan.asignarEquipo(equipo_rival)
  alero_nicolas.asignarEquipo(equipo_rival)
  pivot_roberto.asignarEquipo(equipo_rival)
  ala_julio.asignarEquipo(equipo_rival)

  los_pumas.asignarOponente(equipo_rival)
  equipo_rival.asignarOponente(los_pumas)

  partido = Partido.new(los_pumas, equipo_rival)
  partido.jugar
end


