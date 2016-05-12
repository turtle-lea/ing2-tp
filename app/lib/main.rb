load 'init.rb'
load 'equipos_demo.rb'

def jugar_partido(equipo_1, equipo_2)
  equipo_1.asignarOponente(equipo_2)
  equipo_2.asignarOponente(equipo_1)

  partido = Partido.new(equipo_1, equipo_2)
  partido.jugar
end

def demo1
  jugar_partido(equipo_bulls, equipo_spurs)
end

def demo2
  jugar_partido(equipo_regatas_campeon_2013, equipo_spurs)
end

def demo_mareados
  jugar_partido(equipo_spurs_mareados, equipo_regatas_campeon_2013)
end

def demo_mareados2
  jugar_partido(equipo_spurs_mareados, equipo_spurs)
end

def demo_bases_vs_spurs
  jugar_partido(equipo_bases, equipo_spurs)
end

def demo_pivots_vs_spurs
  jugar_partido(equipo_pivots, equipo_spurs)
end

def demo_bases_vs_pivots
  jugar_partido(equipo_bases, equipo_pivots)
end
