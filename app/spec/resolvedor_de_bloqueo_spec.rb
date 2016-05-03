require 'jugador'
require 'posiciones/posicion_base'
require 'estadistica'
require 'resolvedorDeBloqueo'

describe ResolvedorDeBloqueo do

  it "resuelve exitosamente con jugador perfecto para bloqueos" do
    estadisticas = Estadistica.new(0,0,0,0,5,0,0,0)
    posicion_base = PosicionBase.new
    jugador = Jugador.new("Manu", posicion_base, estadisticas)
    resolvedor = ResolvedorDeBloqueo.new()
    expect(resolvedor.resolver(jugador)).to be true
  end

   it "resuelve negativamente con jugador pesimo para bloqueos" do
    estadisticas = Estadistica.new(0,0,0,0,0,0,0,0)
    posicion_base = PosicionBase.new
    jugador = Jugador.new("Manu", posicion_base, estadisticas)
    resolvedor = ResolvedorDeBloqueo.new()
    expect(resolvedor.resolver(jugador)).to be false
  end
end