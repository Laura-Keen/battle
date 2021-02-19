
class Game
  attr_reader :turn

  def initialize(player_1_name, player_2_name)
    $player_1 = Player.new(player_1_name)
    $player_2 = Player.new(player_2_name)
    @turn = "player_1"
    @not_their_turn = "player_2"
  end

  def attack(player)
    player.hp_control
  end

  def switch_turns
    if @turn == "player_1"
      @turn = "player_2"
      @not_their_turn = "player_1"
    else
      @turn = "player_1"
      @not_their_turn = "player_2"
    end
  end
end
