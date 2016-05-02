class EstrategiaDeReboteoIntercalada
  def initialize(unEquipoAtacante, unEquipoDefensor)
    @jugadores = Queue.new
    @jugadores.push(unEquipoDefensor.pivot)
    @jugadores.push(unEquipoAtacante.pivot)
    @jugadores.push(unEquipoDefensor.alapivot)
    @jugadores.push(unEquipoAtacante.alapivot)
    @jugadores.push(unEquipoDefensor.alero)
    @jugadores.push(unEquipoAtacante.alero)
    @jugadores.push(unEquipoDefensor.escolta)
    @jugadores.push(unEquipoAtacante.escolta)
    @jugadores.push(unEquipoDefensor.base)
    @jugadores.push(unEquipoAtacante.base)
  end

  def proximoMovimiento
    if @jugadores.empty?
      self.pelotaAfuera
    else
      Reboteo.new(@jugadores.pop)
    end
  end

  def pelotaAfuera
    # TODO
  end
end