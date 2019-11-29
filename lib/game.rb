class Game
  attr_reader :players, :turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @turn = player1
    @turn_count = 0
  end

  def attack(player)
    @turn_count += 1
    switch_turn
    player.reduce_hp
  end

  def player1
    players.first
  end

  def player2
    players.last
  end

  private 

  def switch_turn
    if @turn_count.even?
      @turn = player1
    else
      @turn = player2
    end
  end

  def in_turn?(player)
    @turn == player
  end
end