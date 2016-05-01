describe Jugador do
  it "names correctly a playerk" do
    j = Jugador.new("Juan")
    j.asignarEquipo("Los Pumas")
    expect(j.equipo).to eq("Los Pumas")
  end
end

