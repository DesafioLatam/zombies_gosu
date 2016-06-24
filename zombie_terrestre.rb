class ZombieTerrestre < Zombie
  def initialize(x, y)
    super(x, y)
    @speed = 5
    @image = Gosu::Image.new("zombie.png")
  end
end