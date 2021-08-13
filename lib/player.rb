class Player
  DEFAULT_HP = 100

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HP
  end

  def attacked
    @hit_points -= 10
  end
end
