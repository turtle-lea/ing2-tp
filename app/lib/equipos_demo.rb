def equipo_spurs
    posicion_base = PosicionBase.new
    posicion_escolta = PosicionEscolta.new
    posicion_alero = PosicionAlero.new
    posicion_pivot = PosicionPivot.new
    posicion_ala_pivot = PosicionAlaPivot.new

    parker = Jugador.new("Parker", posicion_base, Estadistica.new(0.7,0.5,3.7,8.0,1.4,1,2.1,30))
    green = Jugador.new("Green", posicion_escolta, Estadistica.new(0.7,0.5,3.7,7.0,1.4,1,2.1,30))
    leonard = Jugador.new("Leonard", posicion_alero, Estadistica.new(0.7,0.5,3.7,6.0,1.4,1,2.1,30))
    duncan = Jugador.new("Duncan", posicion_pivot, Estadistica.new(0.7,0.2,10,3.0,1.4,1,2.1,30))
    aldridge = Jugador.new("Aldridge", posicion_ala_pivot, Estadistica.new(0.7,0.2,7,4.0,1.4,1,2.1,30))

    libroDeJugadas = LibroDeJugadas.new(
    [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(3), FrecuenciaDeUso.new(10)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(2), FrecuenciaDeUso.new(90))],
    [GeneradorDeJugadaDefensivaHombreAHombre.new(FrecuenciaDeUso.new(100))]);

    popovich =  Tecnico.new(libroDeJugadas)

    spurs = Equipo.new("Spurs", parker, green, leonard, duncan, aldridge, popovich)
    parker.asignarEquipo(spurs)
    green.asignarEquipo(spurs)
    leonard.asignarEquipo(spurs)
    aldridge.asignarEquipo(spurs)
    duncan.asignarEquipo(spurs)
    spurs
end

def equipo_bulls
    posicion_base = PosicionBase.new
    posicion_escolta = PosicionEscolta.new
    posicion_alero = PosicionAlero.new
    posicion_pivot = PosicionPivot.new
    posicion_ala_pivot = PosicionAlaPivot.new

    brooks = Jugador.new("Brooks", posicion_base, Estadistica.new(0.7,0.5,3.7,8.0,1.4,1,2.1,30))
    butler = Jugador.new("Butler", posicion_escolta, Estadistica.new(0.7,0.5,3.7,7.0,1.4,1,2.1,30))
    mcdermott = Jugador.new("McDermott", posicion_alero, Estadistica.new(0.7,0.5,3.7,6.0,1.4,1,2.1,30))
    gasol = Jugador.new("Gasol", posicion_pivot, Estadistica.new(0.7,0.2,10,3.0,1.4,1,2.1,30))
    gibson = Jugador.new("Gibson", posicion_ala_pivot, Estadistica.new(0.7,0.2,7,4.0,1.4,1,2.1,30))

    libroDeJugadas = LibroDeJugadas.new(
    [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(3), FrecuenciaDeUso.new(10)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(2), FrecuenciaDeUso.new(90))],
    [GeneradorDeJugadaDefensivaHombreAHombre.new(FrecuenciaDeUso.new(100))]);

    hoiberg =  Tecnico.new(libroDeJugadas)

    bulls = Equipo.new("Chicago Bulls", brooks, butler, mcdermott, gasol, gibson, hoiberg)
    brooks.asignarEquipo(bulls)
    butler.asignarEquipo(bulls)
    mcdermott.asignarEquipo(bulls)
    gibson.asignarEquipo(bulls)
    gasol.asignarEquipo(bulls)
    bulls
end

def equipo_atenas
    posicion_base = PosicionBase.new
    posicion_escolta = PosicionEscolta.new
    posicion_alero = PosicionAlero.new
    posicion_pivot = PosicionPivot.new 
    posicion_ala_pivot = PosicionAlaPivot.new

    labaque = Jugador.new("Labaque", posicion_base, Estadistica.new(0.12,0.08,2.2,1.3,0.9,0.12,1.1,8))
    gonzalez = Jugador.new("Gonzalez", posicion_escolta, Estadistica.new(0.08,0.08,2.2,1.3,0.9,0.12,1.1,6))
    sollazo = Jugador.new("Sollazo", posicion_alero, Estadistica.new(0.2,0.01,2.0,1.2,0.6,0.15,1.3,7))
    torres = Jugador.new("Torres", posicion_pivot, Estadistica.new(0.13,0.08,2.2,1.3,0.9,0.12,1.1,4))
    mikulas = Jugador.new("Mikulas", posicion_ala_pivot, Estadistica.new(0.18,0.02,2.2,1.3,0.9,0.12,1.1,9))

    libroDeJugadas = LibroDeJugadas.new(
    [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(3), FrecuenciaDeUso.new(10)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(4), FrecuenciaDeUso.new(90))],
    [GeneradorDeJugadaDefensivaHombreAHombre.new(FrecuenciaDeUso.new(100))]);

    miravet =  Tecnico.new(libroDeJugadas)

    atenas = Equipo.new("Atenas", labaque, gonzalez, sollazo, torres, mikulas, miravet)
    labaque.asignarEquipo(atenas)
    gonzalez.asignarEquipo(atenas)
    sollazo.asignarEquipo(atenas)
    mikulas.asignarEquipo(atenas)
    torres.asignarEquipo(atenas)
    atenas
end


