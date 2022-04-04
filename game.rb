require './turn.rb'

class Game
  attr_accessor :turn

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @turn = 1
    @nextTurn = Turn.new
  end

  def score
    puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
  end

  def start
    @nextTurn.question(@p1)
    alternate
  end

  def checkForWinner
    if @p1.lives == 0
      winner(@p2)
      return true
    elsif @p2.lives == 0
      winner(@p1)
      return true
    end
    return false
  end

  def updateTurn
    if @turn == 1
      @turn = 2
    else
      @turn = 1
    end
  end

  def alternate
    if checkForWinner
      return
    end
    score
    puts "\n----- NEXT QUESTION -----"
    updateTurn
    @nextTurn.question(@turn == 1 ? @p1 : @p2)
    alternate
  end

  def winner(player)
    puts "Player #{player.pNum} wins with a score of #{player.lives}/3"
    puts "----- GAME OVER -----\nGood bye!"
  end

end