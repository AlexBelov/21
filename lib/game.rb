class Game
  def initialize n
    @players = []
    n.times {@players.push Player.new "Player#{n-=1}"}
  end

  def top
    print "\n"
    @players.sort_by! {|player| player.points}
    @players.each {|player| puts "#{player.name} has #{player.points}"}
  end

  def winner
    win = []
    @players.each {|player| win << player if player.points < 22}
    puts "Winner is #{win.last.name} with #{win.last.points}"
  end

  def play
    @players.each {|player| (Turn.new player).roll}
  end
end