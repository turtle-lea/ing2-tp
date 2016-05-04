load 'lib/init.rb'

describe ResolvedorDeIntercepcion do

  it "resuelve exitosamente con jugador perfecto para intercepcion" do
    estadisticas = Estadistica.new(0,0,0,0,0,5,0,0)
    posicion_base = PosicionBase.new
    jugador = Jugador.new("Manu", posicion_base, estadisticas)
    resolvedor = ResolvedorDeIntercepcion.new()
    expect(resolvedor.resolver(jugador)).to be true
  end

  it "resuelve negativamente con jugador pesimo para intercepcion" do
    estadisticas = Estadistica.new(0,0,0,0,0,0,0,0)
    posicion_base = PosicionBase.new
    jugador = Jugador.new("Manu", posicion_base, estadisticas)
    resolvedor = ResolvedorDeIntercepcion.new()
    expect(resolvedor.resolver(jugador)).to be false
  end
end
