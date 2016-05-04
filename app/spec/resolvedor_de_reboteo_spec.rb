load 'lib/init.rb'

describe ResolvedorDeReboteo do

  it "resuelve exitosamente con jugador perfecto para reboteo" do
    estadisticas = Estadistica.new(0,0,20,0,0,0,0,0)
    posicion_base = PosicionBase.new
    jugador = Jugador.new("Manu", posicion_base, estadisticas)
    resolvedor = ResolvedorDeReboteo.new()
    expect(resolvedor.resolver(jugador)).to be true
  end

   it "resuelve negativamente con jugador pesimo para reboteo" do
    estadisticas = Estadistica.new(0,0,0,0,0,0,0,0)
    posicion_base = PosicionBase.new
    jugador = Jugador.new("Manu", posicion_base, estadisticas)
    resolvedor = ResolvedorDeReboteo.new()
    expect(resolvedor.resolver(jugador)).to be false
  end
end
