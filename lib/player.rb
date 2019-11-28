class Player
  DEFAULT_HITPOINTS = 100

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HITPOINTS
  end

  def reduce_hitpoints
    @hit_points -= 10
  end

end
