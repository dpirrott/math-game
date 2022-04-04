require './player.rb'
require './game.rb'

Player_1 = Player.new(1)
Player_2 = Player.new(2)
PlayGame = Game.new(Player_1, Player_2)
PlayGame.start