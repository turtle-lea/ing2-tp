require 'posiciones/posicion_base'
require 'libroDeJugadas'
require 'helper'

describe LibroDeJugadas do
  it "selecciona una jugada ofensiva del libro de jugadas" do
    los_pumas = equipo_los_pumas
    warriors = equipo_warriors

    libroDeJugadas = LibroDeJugadas.new(
      [GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(2), FrecuenciaDeUso.new(10)),
       GeneradorDeJugadaOfensiva3PuntosKPases.new(CantidadDePases.new(5), FrecuenciaDeUso.new(90))],
      []);

    tecnico = Tecnico.new(los_pumas, libroDeJugadas);

    expect(tecnico.elegirJugadaOfensiva().class).to eq(JugadaOfensiva3PuntosKPases)
  end
end


