load 'lib/init.rb'

describe GeneradorDeJugadaDefensivaHombreAHombre do
  it "se genera una jugada defensiva hombre a hombre para warriors" do
    los_pumas = equipo_los_pumas()
    warriors = equipo_warriors()
    generador_hombre_a_hombre = GeneradorDeJugadaDefensivaHombreAHombre.new(FrecuenciaDeUso.new(100))
    generador_jugada_ofensiva = GeneradorDeJugadaOfensiva3PuntosKPases.new(5,100)
    jugada_ofensiva = generador_jugada_ofensiva.generarJugada(los_pumas)

    expect(generador_hombre_a_hombre.generarJugada(warriors, jugada_ofensiva).class).to eq(JugadaDefensivaHombreAHombre)
  end

end
