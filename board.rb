class Board

  def initialize(winning_position, snakes_and_ladders, player_1, player_2)
    @winning_position = winning_position
    @snakes_and_ladders = snakes_and_ladders
    @player_1 = player_1
    @player_2 = player_2
  end

  def player_on_snake__ladder(player)
    player_1 = @player_1.player_position
    for snakes_and_ladders in @snakes_and_ladders
     return true if snakes_and_ladders.position == player_1
    end
    return false
  end

  def winning_position(player)
    return true if player.player_position == @winning_position
    return false

  end
end
