class Turn
  def question(player)
    num1 = rand(1..20)
    num2 = rand(1..20)
    ans = num1 + num2
    puts "Player #{player.pNum}: What does #{num1} plus #{num2} equal?"
    print "> "
    userInput = gets.chomp.to_i
    if userInput == (num1 + num2)
      puts "Player #{player.pNum}: YES! You are correct."
    else
      puts "Player #{player.pNum}: Seriously? No!"
      player.lose_life
    end
  end
end