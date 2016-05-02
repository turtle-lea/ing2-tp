require 'posiciones/posicion_base'
require 'libroDeJugadas'
require 'generadorDeJugadaDefensivaHombreAHombre'
require 'helper'

describe LibroDeJugadas do
  it "selecciona una jugada ofensiva del libro de jugadas" do
    libroDeJugadas = LibroDeJugadas.new(
      [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(2), FrecuenciaDeUso.new(10)),
       GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(5), FrecuenciaDeUso.new(90))],
      [GeneradorDeJugadaDefensivaHombreAHombre.new(FrecuenciaDeUso.new(100))]);

    tecnico = Tecnico.new(libroDeJugadas)
    los_pumas = equipo_los_pumas(tecnico)

    expect(tecnico.elegirJugadaOfensiva().class).to eq(JugadaOfensiva3PuntosKPases)
  end

  it "selecciona una jugada defensiva del libro de jugadas" do
    libro_de_jugadas_pumas = LibroDeJugadas.new(
      [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(5), FrecuenciaDeUso.new(100))],
      [GeneradorDeJugadaDefensivaHombreAHombre.new(FrecuenciaDeUso.new(100))]);
    tecnico_pumas = Tecnico.new(libro_de_jugadas_pumas)
    los_pumas = equipo_los_pumas(tecnico_pumas)
    jugada_ofensiva_pumas = tecnico_pumas.elegirJugadaOfensiva()
    
    libro_de_jugadas_warriors = LibroDeJugadas.new(
      [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(5), FrecuenciaDeUso.new(100))],
      [GeneradorDeJugadaDefensivaHombreAHombre.new(FrecuenciaDeUso.new(100))]);
    tecnico_warriors = Tecnico.new(libro_de_jugadas_warriors)
    warriors = equipo_warriors(tecnico_warriors)
    tecnico_warriors.elegirJugadaDefensiva(jugada_ofensiva_pumas)
  end
end


