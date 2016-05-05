load 'lib/init.rb'

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
    escolta_nicolas = Jugador.new("Nicolas", posicion_escolta)

    los_pumas = Equipo.new("Los Pumas", base_martin, escolta_nicolas, alero_leandro, pivot_matias, ala_pivot_gaston, un_tecnico)
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

    los_warriors = Equipo.new("Warriors", curry, thompson, barnes, bogut, green, un_tecnico)
    los_warriors
end


