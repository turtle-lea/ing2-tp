#load 'lib/init.rb'

def equipo_los_pumas(un_tecnico = Tecnico.new)
    posicion_base = PosicionBase.new
    posicion_ala = PosicionAlaPivot.new
    posicion_alero = PosicionAlero.new
    posicion_escolta = PosicionEscolta.new
    posicion_pivot = PosicionPivot.new

    base_martin = Jugador.new("Martin", posicion_base, Estadistica.new(0.45,0.368,3.7,4.0,1.4,0.3,2.1,14.1))
    ala_pivot_gaston = Jugador.new("Gaston", posicion_ala, Estadistica.new(0.45,0.368,3.7,4.0,1.4,0.3,2.1,14.1))
    alero_leandro = Jugador.new("Leandro", posicion_alero, Estadistica.new(0.45,0.368,3.7,4.0,1.4,0.3,2.1,14.1))
    pivot_matias = Jugador.new("Matias", posicion_pivot, Estadistica.new(0.45,0.368,3.7,4.0,1.4,0.3,2.1,14.1))
    escolta_nicolas = Jugador.new("Nicolas", posicion_escolta, Estadistica.new(0.45,0.368,3.7,4.0,1.4,0.3,2.1,14.1))

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

def equipo_spurs()
    posicion_base = PosicionBase.new
    posicion_ala_pivot = PosicionAlaPivot.new
    posicion_alero = PosicionAlero.new
    posicion_escolta = PosicionEscolta.new
    posicion_pivot = PosicionPivot.new

    parker = Jugador.new("Parker", posicion_base, Estadistica.new(0.7,0.5,3.7,8.0,1.4,1,2.1,30))
    green = Jugador.new("Green", posicion_escolta, Estadistica.new(0.7,0.5,3.7,7.0,1.4,1,2.1,30))
    leonard = Jugador.new("Leonard", posicion_alero, Estadistica.new(0.7,0.5,3.7,6.0,1.4,1,2.1,30))
    aldridge = Jugador.new("Aldridge", posicion_ala_pivot, Estadistica.new(0.7,0.2,7,4.0,1.4,1,2.1,30))
    duncan = Jugador.new("Duncan", posicion_pivot, Estadistica.new(0.7,0.2,10,3.0,1.4,1,2.1,30))

    libroDeJugadas = LibroDeJugadas.new(
    [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(3), FrecuenciaDeUso.new(10)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(2), FrecuenciaDeUso.new(90))],
    [GeneradorDeJugadaDefensivaHombreAHombre.new(FrecuenciaDeUso.new(100))]);

    popovich =  Tecnico.new(libroDeJugadas)

    spurs = Equipo.new("Spurs", parker, green, leonard, aldridge, duncan, popovich)
    parker.asignarEquipo(spurs)
    green.asignarEquipo(spurs)
    leonard.asignarEquipo(spurs)
    aldridge.asignarEquipo(spurs)
    duncan.asignarEquipo(spurs)
    spurs
end

def equipo_bulls()
    posicion_base = PosicionBase.new
    posicion_ala_pivot = PosicionAlaPivot.new
    posicion_alero = PosicionAlero.new
    posicion_escolta = PosicionEscolta.new
    posicion_pivot = PosicionPivot.new

    brooks = Jugador.new("Brooks", posicion_base, Estadistica.new(0.7,0.5,3.7,8.0,1.4,1,2.1,30))
    butler = Jugador.new("Butler", posicion_escolta, Estadistica.new(0.7,0.5,3.7,7.0,1.4,1,2.1,30))
    mcdermott = Jugador.new("McDermott", posicion_alero, Estadistica.new(0.7,0.5,3.7,6.0,1.4,1,2.1,30))
    gibson = Jugador.new("Gibson", posicion_ala_pivot, Estadistica.new(0.7,0.2,7,4.0,1.4,1,2.1,30))
    gasol = Jugador.new("Gasol", posicion_pivot, Estadistica.new(0.7,0.2,10,3.0,1.4,1,2.1,30))

    libroDeJugadas = LibroDeJugadas.new(
    [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(3), FrecuenciaDeUso.new(10)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(2), FrecuenciaDeUso.new(90))],
    [GeneradorDeJugadaDefensivaHombreAHombre.new(FrecuenciaDeUso.new(100))]);

    hoiberg =  Tecnico.new(libroDeJugadas)

    bulls = Equipo.new("Chicago Bulls", brooks, butler, mcdermott, gibson, gasol, hoiberg)
    brooks.asignarEquipo(bulls)
    butler.asignarEquipo(bulls)
    mcdermott.asignarEquipo(bulls)
    gibson.asignarEquipo(bulls)
    gasol.asignarEquipo(bulls)
    bulls
end

def equipo_atenas()
    posicion_base = PosicionBase.new
    posicion_ala_pivot = PosicionAlaPivot.new
    posicion_alero = PosicionAlero.new
    posicion_escolta = PosicionEscolta.new
    posicion_pivot = PosicionPivot.new 

    labaque = Jugador.new("Labaque", posicion_base, Estadistica.new(0.12,0.08,2.2,1.3,0.9,0.12,1.1,8))
    gonzalez = Jugador.new("Gonzalez", posicion_escolta, Estadistica.new(0.08,0.08,2.2,1.3,0.9,0.12,1.1,6))
    sollazo = Jugador.new("Sollazo", posicion_alero, Estadistica.new(0.2,0.01,2.0,1.2,0.6,0.15,1.3,7))
    mikulas = Jugador.new("Mikulas", posicion_ala_pivot, Estadistica.new(0.18,0.02,2.2,1.3,0.9,0.12,1.1,9))
    torres = Jugador.new("Torres", posicion_pivot, Estadistica.new(0.13,0.08,2.2,1.3,0.9,0.12,1.1,4))

    libroDeJugadas = LibroDeJugadas.new(
    [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(3), FrecuenciaDeUso.new(10)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(4), FrecuenciaDeUso.new(90))],
    [GeneradorDeJugadaDefensivaHombreAHombre.new(FrecuenciaDeUso.new(100))]);

    miravet =  Tecnico.new(libroDeJugadas)

    atenas = Equipo.new("Atenas", labaque, gonzalez, sollazo, mikulas, torres, miravet)
    labaque.asignarEquipo(atenas)
    gonzalez.asignarEquipo(atenas)
    sollazo.asignarEquipo(atenas)
    mikulas.asignarEquipo(atenas)
    torres.asignarEquipo(atenas)
    atenas
end


