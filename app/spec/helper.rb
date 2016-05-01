require 'posiciones/posicion_base'
require 'posiciones/posicion_ala_pivot'
require 'posiciones/posicion_pivot'
require 'posiciones/posicion_escolta'
require 'posiciones/posicion_alero'
require 'jugador'
require 'equipo'

def equipo_los_pumas(un_tecnico = Tecnico.new)
    posicion_base = PosicionBase.new
    posicion_ala = PosicionAlaPivot.new
    posicion_alero = PosicionAlero.new
    posicion_escolta = PosicionEscolta.new
    posicion_pivot = PosicionPivot.new

    base_martin = Jugador.new("Martin", posicion_base)
    ala_pivot_gaston = Jugador.new("Gaston", posicion_ala)
    alero_leandro = Jugador.new("Leandro", posicion_alero)
    pivot_matias = Jugador.new("Matias", posicion_pivot)
    escolta_nicolas = Jugador.new("Nicolas", posicion_pivot)

    los_pumas = Equipo.new("Los Pumas", base_martin, escolta_nicolas, alero_leandro, ala_pivot_gaston, pivot_matias, un_tecnico)
    un_tecnico.asignar_equipo(los_pumas)
    los_pumas
end

def equipo_warriors(un_tecnico = Tecnico.new)
    posicion_base = PosicionBase.new
    posicion_ala_pivot = PosicionAlaPivot.new
    posicion_alero = PosicionAlero.new
    posicion_escolta = PosicionEscolta.new
    posicion_pivot = PosicionPivot.new

    curry = Jugador.new("Curry", posicion_base)
    green = Jugador.new("Green", posicion_ala_pivot)
    barnes = Jugador.new("Barnes", posicion_alero)
    bogut = Jugador.new("Bogut", posicion_pivot)
    thompson = Jugador.new("Thompson", posicion_escolta)

    los_warrios = Equipo.new("Warriors", curry, thompson, barnes, green, bogut, un_tecnico)
    un_tecnico.asignar_equipo(los_warrios)
    los_warrios
end


