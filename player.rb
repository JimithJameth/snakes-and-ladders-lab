class Player

  attr_reader :name, :player_position

  def initialize(name, dice)
    @name = name
    @dice = dice
    @score = 0
    @positions = (0..21).to_a
    @player_position = 0
  end

  def movement(action_position)
    @player_position += action_position
  end

end
