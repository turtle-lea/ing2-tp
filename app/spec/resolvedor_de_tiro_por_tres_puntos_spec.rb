load 'lib/init.rb'

describe ResolvedorDeTiroPorTresPuntos do

  it "resuelve exitosamente con jugador perfecto para tiros de 3" do
    estadisticas = Estadistica.new(0,0.5,0,0,0,0,0,100)
    posicion_base = PosicionBase.new
    jugador = Jugador.new("Manu", posicion_base, estadisticas)
    resolvedor = ResolvedorDeTiroPorTresPuntos.new()
    expect(resolvedor.resolver(jugador)).to be true
  end

   it "resuelve negativamente con jugador pesimo para tiros de 3" do
    estadisticas = Estadistica.new(0,0,0,0,0,0,0,0)
    posicion_base = PosicionBase.new
    jugador = Jugador.new("Manu", posicion_base, estadisticas)
    resolvedor = ResolvedorDeTiroPorTresPuntos.new()
    expect(resolvedor.resolver(jugador)).to be false
  end
end
