load 'lib/init.rb'

describe ResolvedorDePase do

  it "resuelve exitosamente con jugador perfecto para pase" do
    estadisticas = Estadistica.new(0,0,0,0,0,0,0,0)
    posicion_base = PosicionBase.new
    jugador = Jugador.new("Manu", posicion_base, estadisticas)
    resolvedor = ResolvedorDePase.new()
    expect(resolvedor.resolver(jugador)).to be true
  end

  it "resuelve negativamente con jugador pesimo para pase" do
    estadisticas = Estadistica.new(0,0,0,0,0,0,10,0)
    posicion_base = PosicionBase.new
    jugador = Jugador.new("Manu", posicion_base, estadisticas)
    resolvedor = ResolvedorDePase.new()
    expect(resolvedor.resolver(jugador)).to be false
  end
end
