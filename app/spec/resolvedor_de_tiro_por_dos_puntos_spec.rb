load 'lib/init.rb'

describe ResolvedorDeTiroPorDosPuntos do

  it "resuelve exitosamente con jugador perfecto para tirar de 2" do
    estadisticas = Estadistica.new(0.7,0,0,0,0,0,0,30)
    posicion_base = PosicionBase.new
    jugador = Jugador.new("Manu", posicion_base, estadisticas)
    resolvedor = ResolvedorDeTiroPorDosPuntos.new()
    expect(resolvedor.resolver(jugador)).to be true
  end

  it "resuelve negativamente con jugador pesimo para tirar de 2" do
    estadisticas = Estadistica.new(0.0,0,0,0,0,0,0,0)
    posicion_base = PosicionBase.new
    jugador = Jugador.new("Manu", posicion_base, estadisticas)
    resolvedor = ResolvedorDeTiroPorDosPuntos.new()
    expect(resolvedor.resolver(jugador)).to be false
  end
end
