require("minitest/autorun")
require("minitest/rg")
require_relative("../dice.rb")

class DiceTest < Minitest::Test

def setup

  @dice = Dice.new()
end

  def test_dice_roll
  results = @dice.dice_roll()
  assert_equal(true,results >= 1 && results <=6)

  end
end