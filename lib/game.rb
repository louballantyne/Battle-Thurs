class Game
  attr_accessor :player1, :player2
  def initialize(player1,player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def attack(target)
    target.attacked = true
    target.reduce_hit_points
    if target == @player1
      @player2.attacked = false
    elsif target == @player2
      @player1.attacked = false
    end
    return target.hit_points
  end
end
