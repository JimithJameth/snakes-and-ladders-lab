require("minitest/autorun")
require("minitest/rg")
require_relative("../board.rb")
require_relative("../dice.rb")
require_relative("../player.rb")
require_relative("../snakes_and_ladders.rb")
class BoardTest < Minitest::Test

  def setup
    @dice = Dice.new()
    @player_1 = Player.new("bob", @dice)
    @player_2 = Player.new("sally", @dice)
    @snakes_and_ladders = [
      SnakesAndLadders.new(true, 10, 5),
      SnakesAndLadders.new(true, 5, 7),
      SnakesAndLadders.new(false, 19, 10),
      SnakesAndLadders.new(false, 15, 5),
    ]
    @board = Board.new(21, @snakes_and_ladders, @player_1, @player_2)

  end

  def test_player_on_snake__ladder
    @player_1.movement(10)
    assert_equal(true, @board.player_on_snake__ladder(@player_1))
  end

  def test_winning_position
     @player_1.movement(21)
     assert_equal(true, @board.winning_position(@player_1))
   end
end
