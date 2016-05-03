require 'pase'
require 'jugadaDefensiva'
require 'jugadaDefensivaHombreAHombre'
require 'intercepcion'
require 'helper'

describe JugadaDefensiva do
  it "defiende un pase con arreglo vacio" do
    los_pumas = equipo_los_pumas
    pase_base_a_escolta = Pase.new(los_pumas.base, los_pumas.escolta)
    jugadaDefensiva = JugadaDefensiva.new(equipo_warriors) 
    expect(jugadaDefensiva.defender(pase_base_a_escolta)).to eq([])
  end

  it "defiende un tiro con arreglo vacio" do
  end 
end

describe JugadaDefensivaHombreAHombre do
  it "defiende un pase con una intercepcion" do
    los_pumas = equipo_los_pumas
    pase_base_a_escolta = Pase.new(los_pumas.base, los_pumas.escolta)
    hombre_a_hombre = JugadaDefensivaHombreAHombre.new(equipo_warriors)

    intercepcion = hombre_a_hombre.defender(pase_base_a_escolta)
    expect(intercepcion[0].class).to eq(Intercepcion)
    expect(intercepcion.length).to eq(1)
  end

  it "si la pasa un base ofensivo intercepta el base defensivo" do
    los_pumas = equipo_los_pumas
    warriors = equipo_warriors
    pase_base_a_escolta = Pase.new(los_pumas.base, los_pumas.escolta)
    hombre_a_hombre = JugadaDefensivaHombreAHombre.new(warriors)

    intercepcion = hombre_a_hombre.defender(pase_base_a_escolta)
    expect(intercepcion[0].jugador).to eq(warriors.base)
  end

  it "si la pasa un ala ofensivo intercepta el ala defensivo" do
    los_pumas = equipo_los_pumas
    warriors = equipo_warriors
    pase_alapivot_a_escolta = Pase.new(los_pumas.alapivot, los_pumas.escolta)
    hombre_a_hombre = JugadaDefensivaHombreAHombre.new(warriors)

    intercepcion = hombre_a_hombre.defender(pase_alapivot_a_escolta)
    expect(intercepcion[0].jugador).to eq(warriors.alapivot)
  end

  it "si la pasa un pivot ofensivo intercepta el pivot defensivo" do
    los_pumas = equipo_los_pumas
    warriors = equipo_warriors
    pase_pivot_a_escolta = Pase.new(los_pumas.pivot, los_pumas.escolta)
    hombre_a_hombre = JugadaDefensivaHombreAHombre.new(warriors)

    intercepcion = hombre_a_hombre.defender(pase_pivot_a_escolta)
    expect(intercepcion[0].jugador).to eq(warriors.pivot)
  end
  
end
