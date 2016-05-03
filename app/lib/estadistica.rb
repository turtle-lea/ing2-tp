class Estadistica
  
  def initialize(fieldGoalPercentage, threePointPercentage, reboundsPerGame, assistsPerGame, blocksPerGame, stealsPerGame, turnOvers, pointsPerGame)
    @fieldGoalPercentage = fieldGoalPercentage
    @threePointPercentage = threePointPercentage
    @reboundsPerGame = reboundsPerGame
    @assistsPerGame = assistsPerGame
    @blocksPerGame = blocksPerGame
    @stealsPergame = stealsPerGame
    @turnOvers = turnOvers
    @pointsPerGame = pointsPerGame
  end

  def fieldGoalPercentage
    @fieldGoalPercentage
  end

  def threePointPercentage
    @threePointPercentage
  end

  def reboundsPerGame
    @reboundsPerGame
  end

  def assistsPerGame
    @assistsPerGame
  end

  def blocksPerGame
    @blocksPerGame
  end

  def stealsPerGame
    @stealsPergame
  end

  def turnOvers
    @turnOvers
  end

  def pointsPerGame
    @pointsPerGame
  end

end