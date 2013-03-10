class Dice
  def roll
    @roll = rand(2..10)
    print self.card + " "
    if @roll == 5
    	return 11
    elsif @roll
    	return @roll
    end
  end

  def card
  	if @roll == 2
  		return "valet"
  	elsif @roll == 3
  		return "dame"
  	elsif @roll == 4
  		return "king"
  	elsif @roll == 5
  		return "ace"
  	elsif @roll
  		return "#{@roll}"
  	end
  end
end