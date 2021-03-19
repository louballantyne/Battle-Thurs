require 'singleton'

class Game
  include Singleton
  attr_accessor :player1, :player2
  attr_reader :turn
  def setup(player1, player2, player_class = Player)
    @player_class = player_class
    @player1 = @player_class.new(player1)
    @player2 = @player_class.new(player2)
    @turn = @player1
  end

  def attack(target)
    target.attacked = true
    target.reduce_hit_points
    if target == @player1
      @player2.attacked = false
    elsif target == @player2
      @player1.attacked = false
    end
    change_turn
    return target.hit_points
  end

  def change_turn
    if @turn == @player1
      @turn = @player2
    else
      @turn = @player1
    end
  end

  def target
    if @turn == @player1
      @player2
    else
      @player1
    end
  end
  #
  # def self.instance(player1, player2, player_class = Player)
  #   @@this_game = Game.instance(player1, player2, player_class)
  # end
  #
  # def self.this_game
  #   @@this_game
  # end

end
