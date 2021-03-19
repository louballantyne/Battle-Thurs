class Player
  attr_accessor :name, :hit_points, :attacked

  def initialize(name)
    @name = name
    @hit_points = 100
    @attacked = false
  end

  def attack(target)
    target.hit_points -=10
    target.attacked = true
    Game.stored_game.change_turn
  end

end
