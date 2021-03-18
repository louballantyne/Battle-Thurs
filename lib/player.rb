class Player
  attr_accessor :name, :hit_points, :attacked

  def initialize(name)
    @name = name
    @hit_points = 100
    @attacked = false
  end

end
