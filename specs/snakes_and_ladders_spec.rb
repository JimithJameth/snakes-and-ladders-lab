require("minitest/autorun")
require("minitest/rg")
require_relative("../snakes_and_ladders.rb")

class SnakesAndLaddersTest < Minitest::Test

  def setup
    @snake = SnakesAndLadders.new(true, 10, 5)
    @ladder = SnakesAndLadders.new(false, 12, 7)
    end

    def test_get_position_snake
      assert_equal(10, @snake.position)
    end

    def test_get_position_ladder
      assert_equal(12, @ladder.position)
    end

end
