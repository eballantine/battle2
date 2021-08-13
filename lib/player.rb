class Player
  DEFAULT_HP = 100
  DEFAULT_ATTACK = 10
  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HP
  end
  
  def receive_damage
    @hit_points -= DEFAULT_ATTACK
  end
  
end
