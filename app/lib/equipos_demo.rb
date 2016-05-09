def equipo_spurs
    posicion_base = PosicionBase.new
    posicion_escolta = PosicionEscolta.new
    posicion_alero = PosicionAlero.new
    posicion_pivot = PosicionPivot.new
    posicion_ala_pivot = PosicionAlaPivot.new

                                                        #                 FG%,   3P%,   RPG, APG, BPG, SPG, TOV, PPG
    parker = Jugador.new("Parker", posicion_base,         Estadistica.new(0.494, 0.327, 2.9, 5.9, 0.1, 0.9, 2.4, 16.6))
    ginobili = Jugador.new("Ginobili", posicion_escolta,     Estadistica.new(0.450, 0.369, 3.7, 4.0, 0.3, 1.4, 2.1, 14.0))
    leonard = Jugador.new("Leonard", posicion_alero,      Estadistica.new(0.499, 0.391, 6.3, 2.0, 0.7, 1.8, 1.2, 14.3))
    duncan = Jugador.new("Duncan", posicion_pivot,        Estadistica.new(0.506, 0.179, 10.8, 3.0, 2.2, 0.7, 2.4, 19.0))
    aldridge = Jugador.new("Aldridge", posicion_ala_pivot,Estadistica.new(0.487, 0.257, 8.4, 1.9, 1.0, 0.8, 1.6, 19.2))

    libroDeJugadas = LibroDeJugadas.new(
    [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(1), FrecuenciaDeUso.new(25)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(2), FrecuenciaDeUso.new(40)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(3), FrecuenciaDeUso.new(20)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(4), FrecuenciaDeUso.new(15))],
    [GeneradorDeJugadaDefensivaHombreAHombre.new(FrecuenciaDeUso.new(100))]);

    popovich =  Tecnico.new(libroDeJugadas)

    spurs = Equipo.new("Spurs", parker, ginobili, leonard, duncan, aldridge, popovich)
    parker.asignarEquipo(spurs)
    ginobili.asignarEquipo(spurs)
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

                                                        #                 FG%,   3P%,   RPG, APG, BPG, SPG, TOV, PPG
    brooks = Jugador.new("Brooks", posicion_base,         Estadistica.new(0.413, 0.370, 1.8, 3.2, 0.1, 0.6, 1.7, 10.7))
    butler = Jugador.new("Butler", posicion_escolta,      Estadistica.new(0.445, 0.328, 4.5, 2.6, 0.5, 1.4, 1.3, 13.6))
    mcdermott = Jugador.new("McDermott", posicion_alero,  Estadistica.new(0.445, 0.410, 2.0, 0.6, 0.1, 0.2, 0.6, 7.5))
    gasol = Jugador.new("Gasol", posicion_pivot,          Estadistica.new(0.510, 0.297, 9.5, 3.3, 1.7, 0.5, 2.3, 18.2))
    gibson = Jugador.new("Gibson", posicion_ala_pivot,    Estadistica.new(0.491 ,0.045, 6.3, 1.0, 1.3, 0.5, 1.2, 9.2))

    libroDeJugadas = LibroDeJugadas.new(
    [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(1), FrecuenciaDeUso.new(25)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(2), FrecuenciaDeUso.new(25)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(3), FrecuenciaDeUso.new(25)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(4), FrecuenciaDeUso.new(25))],
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

def equipo_regatas_campeon_2013
    posicion_base = PosicionBase.new
    posicion_escolta = PosicionEscolta.new
    posicion_alero = PosicionAlero.new
    posicion_pivot = PosicionPivot.new
    posicion_ala_pivot = PosicionAlaPivot.new

                                                          #                 FG%,   3P%,   RPG, APG, BPG, SPG, TOV, PPG
    martinez = Jugador.new("Martinez", posicion_base,       Estadistica.new(0.437, 0.366, 2.8, 4.8, 0.1, 1.0, 2.7, 8.6))
    quinteros = Jugador.new("Quinteros", posicion_escolta,  Estadistica.new(0.467, 0.366, 2.4, 2.8, 0.2, 1.4, 2.7, 16.0))
    kammerichs = Jugador.new("Kammerichs", posicion_alero,  Estadistica.new(0.526, 0.222, 8.0, 1.7, 0.7, 0.6, 0.9, 9.4))
    calderon = Jugador.new("Calderon", posicion_pivot,      Estadistica.new(0.502, 0.438, 2.8, 0.6, 0.5, 0.2, 0.8, 4.5))
    washam = Jugador.new("Washam", posicion_ala_pivot,      Estadistica.new(0.456, 0.316, 4.3, 1.3, 0.2, 1.4, 1.6, 10.3))

    libroDeJugadas = LibroDeJugadas.new(
    [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(1), FrecuenciaDeUso.new(15)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(2), FrecuenciaDeUso.new(20)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(3), FrecuenciaDeUso.new(35)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(4), FrecuenciaDeUso.new(30))],
    [GeneradorDeJugadaDefensivaHombreAHombre.new(FrecuenciaDeUso.new(100))]);

    casalanguida =  Tecnico.new(libroDeJugadas)

    regatas = Equipo.new("Regatas Campeon 2013", martinez, quinteros, kammerichs, calderon, washam, casalanguida)
    martinez.asignarEquipo(regatas)
    quinteros.asignarEquipo(regatas)
    kammerichs.asignarEquipo(regatas)
    calderon.asignarEquipo(regatas)
    washam.asignarEquipo(regatas)
    regatas
end

def equipo_spurs_mareados
    posicion_base = PosicionBase.new
    posicion_escolta = PosicionEscolta.new
    posicion_alero = PosicionAlero.new
    posicion_pivot = PosicionPivot.new
    posicion_ala_pivot = PosicionAlaPivot.new

                                                        #                 FG%,   3P%,   RPG, APG, BPG, SPG, TOV, PPG
    aldridge = Jugador.new("Aldridge", posicion_base,    Estadistica.new(0.487, 0.257, 8.4, 1.9, 1.0, 0.8, 1.6, 19.2))
    duncan = Jugador.new("Duncan", posicion_escolta,        Estadistica.new(0.506, 0.179, 10.8, 3.0, 2.2, 0.7, 2.4, 19.0))
    leonard = Jugador.new("Leonard", posicion_alero,      Estadistica.new(0.499, 0.391, 6.3, 2.0, 0.7, 1.8, 1.2, 14.3))
    parker = Jugador.new("Parker", posicion_pivot,         Estadistica.new(0.494, 0.327, 2.9, 5.9, 0.1, 0.9, 2.4, 16.6))
    ginobili = Jugador.new("Ginobili", posicion_ala_pivot,     Estadistica.new(0.450, 0.369, 3.7, 4.0, 0.3, 1.4, 2.1, 14.0))

    libroDeJugadas = LibroDeJugadas.new(
    [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(1), FrecuenciaDeUso.new(25)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(2), FrecuenciaDeUso.new(40)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(3), FrecuenciaDeUso.new(20)),
     GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(4), FrecuenciaDeUso.new(15))],
    [GeneradorDeJugadaDefensivaHombreAHombre.new(FrecuenciaDeUso.new(100))]);

    popovich =  Tecnico.new(libroDeJugadas)

    spurs = Equipo.new("Spurs Mareados", aldridge, duncan, leonard, parker, ginobili, popovich)
    parker.asignarEquipo(spurs)
    ginobili.asignarEquipo(spurs)
    leonard.asignarEquipo(spurs)
    aldridge.asignarEquipo(spurs)
    duncan.asignarEquipo(spurs)
    spurs
end


