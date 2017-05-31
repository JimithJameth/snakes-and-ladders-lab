require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")
require_relative("../dice.rb")

class PlayerTest < Minitest::Test

  def setup
    @dice = Dice.new
    @person_1 = Player.new("bob", @dice)
  end

  def test_get_name
    assert_equal("bob", @person_1.name)
  end

  def test_get_position
    assert_equal(0 ,@person_1.player_position )
  end

  def test_player_movement
    assert_equal(2 ,@person_1.movement(2))
  end

  
end
