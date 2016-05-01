require 'posicion_base'
require 'posicion_ala'
require 'posicion_pivot'
require 'posicion_escolta'
require 'posicion_alero'
require 'jugador'
require 'equipo'

def equipo_los_pumas()
    posicion_base = PosicionBase.new
    posicion_ala = PosicionAla.new
    posicion_alero = PosicionAlero.new
    posicion_escolta = PosicionEscolta.new
    posicion_pivot = PosicionPivot.new

    base_martin = Jugador.new("Martin", posicion_base)
    ala_gaston = Jugador.new("Gaston", posicion_ala)
    alero_leandro = Jugador.new("Leandro", posicion_alero)
    pivot_matias = Jugador.new("Matias", posicion_pivot)
    escolta_nicolas = Jugador.new("Nicolas", posicion_pivot)

    los_pumas = Equipo.new("Los Pumas", base_martin, escolta_nicolas, alero_leandro, ala_gaston, pivot_matias)
end

def equipo_warriors()
    posicion_base = PosicionBase.new
    posicion_ala = PosicionAla.new
    posicion_alero = PosicionAlero.new
    posicion_escolta = PosicionEscolta.new
    posicion_pivot = PosicionPivot.new

    curry = Jugador.new("Curry", posicion_base)
    green = Jugador.new("Green", posicion_ala)
    barnes = Jugador.new("Barnes", posicion_alero)
    bogut = Jugador.new("Bogut", posicion_pivot)
    thompson = Jugador.new("Thompson", posicion_escolta)

    los_pumas = Equipo.new("Warriors", curry, thompson, barnes, green, bogut)
end


