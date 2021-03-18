class Game
  def initialize
  end

  def attack(target)
    target.hit_points -= 10
  end
end
