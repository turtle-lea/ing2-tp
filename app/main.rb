load 'init.rb'

# @base = base 
# @escolta = escolta 
# @alero = alero 
# @pivot = pivot 
# @alapivot = alapivot 

def main()
  base_martin = Jugador.new("Martin")
  escolta_esteban = Jugador.new("Esteban")
  alero_leandro = Jugador.new("Leandro")
  pivot_matias = Jugador.new("Matias")
  ala_gaston = Jugador.new("Gaston")

  juan1 = Jugador.new("Juan1")
  juan2 = Jugador.new("Juan2")
  juan3 = Jugador.new("Juan3")
  juan4 = Jugador.new("Juan4")
  juan5 = Jugador.new("Juan5")

  equipo_rival = Equipo.new("All Blacks", juan1, juan2, juan3, juan4, juan5)
  los_pumas = Equipo.new("Los Pumas", base_martin, escolta_esteban, alero_leandro, pivot_matias, ala_gaston)


  libroDeJugadas = LibroDeJugadas.new(
    [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(2), FrecuenciaDeUso.new(10)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(5), FrecuenciaDeUso.new(90))],
     []);

  tecnico = Tecnico.new(los_pumas, libroDeJugadas);

  tecnico.elegirJugadaOfensiva(1)
end

#
#equipo_rival.asignarOponente(los_pumas)
#los_pumas.asignarOponente(equipo_rival)
#juan1.asignarEquipo(equipo_rival)
#base_martin.asignarEquipo(los_pumas)
#ala_gaston.asignarEquipo(los_pumas)
#
#base_martin.pasarLaPelota(ala_gaston)
