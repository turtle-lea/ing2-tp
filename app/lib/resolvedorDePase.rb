class ResolvedorDePase
  def initialize()
  end

  def resolver(unJugador)
  	to = unJugador.estadisticas.turnOvers
  	umbral = 1 - to * 0.1
  	rand = rand(0.0..1.0)
    rand <= umbral
  end

end


