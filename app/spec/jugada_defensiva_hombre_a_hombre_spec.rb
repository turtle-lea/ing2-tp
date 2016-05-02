require 'pase'
require 'jugadaDefensivaHombreAHombre'
require 'adapterJugadaDefensivaHombreAHombre'
require 'intercepcion'
require 'helper'

describe JugadaDefensivaHombreAHombre do
  it "defiende un pase con una intercepcion" do
    warriors = equipo_warriors()
    posicion_base = PosicionBase.new
    posicion_ala_pivot = PosicionAlaPivot.new
    hombre_a_hombre = JugadaDefensivaHombreAHombre.new(warriors)
    nicolas = Jugador.new("Nicolas", posicion_base)
    adapter = AdapterJugadaDefensivaHombreAHombre.new
    nicolas.actualizarAdapterJugadaDefensiva(adapter)
    roberto = Jugador.new("Roberto", posicion_ala_pivot)
    pase_nico_a_roberto = Pase.new(nicolas, roberto)

    intercepcion = hombre_a_hombre.defender(pase_nico_a_roberto)
    expect(intercepcion.class).to eq(Intercepcion)
  end

  it "se obtiene base rival utilizando un adapterDeJugadaHombreAHombre" do
    los_pumas = equipo_los_pumas
    warriors = equipo_warriors

    hombre_a_hombre = JugadaDefensivaHombreAHombre.new(warriors)
    adapter = AdapterJugadaDefensivaHombreAHombre.new
    base = los_pumas.base
    base.actualizarAdapterJugadaDefensiva(adapter)
    
    expect(base.darDetallesAJugadaDefensiva(hombre_a_hombre).posicion.class).to eq(PosicionBase)
    expect(base.darDetallesAJugadaDefensiva(hombre_a_hombre).nombre).to eq("Curry")
  end

  it "si la pasa un base ofensivo intercepta el base defensivo" do
    los_pumas = equipo_los_pumas()
    warriors = equipo_warriors()
    hombre_a_hombre = JugadaDefensivaHombreAHombre.new(warriors)
    adapter = AdapterJugadaDefensivaHombreAHombre.new
    base = los_pumas.base
    base.actualizarAdapterJugadaDefensiva(adapter)
    pase_base_a_ala = Pase.new(los_pumas.base, los_pumas.alapivot)

    unaIntercepcion = hombre_a_hombre.defender(pase_base_a_ala)
    expect(unaIntercepcion.jugador.posicion.class).to eq(PosicionBase)
  end
end
