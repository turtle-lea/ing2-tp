require 'posiciones/posicion_base'

describe Jugador do
  it "devuelve el equipo correcto" do
    posicion_base = PosicionBase.new
    j = Jugador.new("Juan", posicion_base)
    j.asignarEquipo("Los Pumas")
    expect(j.equipo).to eq("Los Pumas")
  end

  it "puede crearse un base" do
    posicion_base = PosicionBase.new
    j = Jugador.new("Juan", posicion_base)
    expect(j.posicion.class).to eq(PosicionBase)
  end
end

