class Player
  attr_accessor :name, :hit_points, :attacked

  def initialize(name)
    @name = name
    @hit_points = 100
    @attacked = false
  end

  def reduce_hit_points
    @hit_points -= 10
  end
end
