class Resultado
  def initialize(equipo1, equipo2, puntaje_eq1 = 0, puntaje_eq2 = 0)
    @equipo1 = equipo1
    @equipo2 = equipo2
    @resultado = {}
    @resultado[equipo1] = puntaje_eq1
    @resultado[equipo2] = puntaje_eq2
  end

  def puntaje_de(un_equipo)
    @resultado[un_equipo]
  end

  def equipo1
    @equipo1
  end

  def equipo2
    @equipo2
  end

  def +(unResultado)
    nuevos_puntos_eq1 = puntaje_de(equipo1) + unResultado.puntaje_de(equipo1)
    nuevos_puntos_eq2 = puntaje_de(equipo2) + unResultado.puntaje_de(equipo2)
    Resultado.new(equipo1, equipo2, nuevos_puntos_eq1, nuevos_puntos_eq2)
  end

  def empatado?
    puntaje_de(equipo1) == puntaje_de(equipo2)
  end
end
