load 'init.rb'
load 'equipos_demo.rb'

def jugar_partido(equipo_1, equipo_2)
  equipo_1.asignarOponente(equipo_2)
  equipo_2.asignarOponente(equipo_1)

  partido = Partido.new(equipo_1, equipo_2)
  partido.jugar
end

def demo1()
  jugar_partido(equipo_bulls, equipo_spurs)
end

def demo2()
  jugar_partido(equipo_atenas, equipo_spurs)
end

