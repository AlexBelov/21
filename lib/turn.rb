class Turn
  attr_reader :points
  
  def initialize player
    @player = player
    @dice = Dice.new
  end

  def roll
    puts "\nTurn of #{@player.name}"
    2.times {@player.add_points @dice.roll}
    @player.add_points @dice.roll while @player.points < 17
  end

end