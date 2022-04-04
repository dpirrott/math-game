class Player
  attr_accessor :lives
  attr_reader :pNum

  def initialize(num)
    @lives = 3
    @pNum = num
  end

  def lose_life
    @lives = @lives - 1
  end
end