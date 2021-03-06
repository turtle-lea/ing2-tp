load 'lib/init.rb'

describe Equipo do
  it "un equipo conoce a su base" do
    posicion_base = PosicionBase.new
    posicion_ala = PosicionAlaPivot.new
    posicion_alero = PosicionAlero.new
    posicion_escolta = PosicionEscolta.new
    posicion_pivot = PosicionPivot.new

    unBase = Jugador.new("x1", posicion_base)
    unAla = Jugador.new("x2", posicion_ala)
    unAlero = Jugador.new("x3", posicion_alero)
    unPivot = Jugador.new("x4", posicion_pivot)
    unEscolta = Jugador.new("x5", posicion_pivot)
    un_tecnico = Tecnico.new

    los_pumas = Equipo.new("Los Pumas", unBase, unEscolta, unAlero, unAla, unPivot, un_tecnico)
    expect(los_pumas.base).to eq(unBase)
  end
end


