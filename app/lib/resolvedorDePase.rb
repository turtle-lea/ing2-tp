class ResolvedorDePase
  def initialize()
  end

  def resolver(unJugador)
  	to = unJugador.estadisticas.turnOvers
  	umbral = 1 - to * 0.1
  	rand = GeneradorDeNumerosAleatorios.new(0,1).generarUnReal
    rand <= umbral
  end

end


